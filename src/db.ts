import {
  Prisma,
  PrismaClient,
  type userSetting,
  type connectionStates,
} from './generated/client/index.js'
import { DBError } from './errors/index.js'
import type { ConnectionContext } from './connectionCtx.js'
import { randomUserSetting } from './utils.js'

const toConnectionState = (
  connectionContext: ConnectionContext,
): connectionStates => {
  return {
    // eslint-disable-next-line @typescript-eslint/no-non-null-assertion
    voiceChannel: BigInt(connectionContext.connection.joinConfig.channelId!),
    guild: BigInt(connectionContext.connection.joinConfig.guildId),
    readChannel: BigInt(connectionContext.readChannelId),
    skipUser: [...connectionContext.skipUser].join(),
  }
}

const cachedUserSettings = new Map<string, userSetting>()

const prisma: PrismaClient = new PrismaClient()

export async function getUserSetting(id: string): Promise<userSetting> {
  // eslint-disable-next-line @typescript-eslint/no-non-null-assertion
  if (cachedUserSettings.has(id)) return cachedUserSettings.get(id)!
  try {
    const userSetting = await prisma.userSetting.findUnique({
      where: {
        id: BigInt(id),
      },
    })

    // A concurrent setUserSetting may have refreshed the cache while
    // the query was running, so do not overwrite it with the stale result.
    const updatedCachedUserSetting = cachedUserSettings.get(id)
    if (updatedCachedUserSetting !== undefined) return updatedCachedUserSetting

    if (userSetting === null) {
      return await setUserSetting(randomUserSetting(BigInt(id)))
    }
    cachedUserSettings.set(id, userSetting)
    return userSetting
  } catch (err) {
    if (
      err instanceof Prisma.PrismaClientKnownRequestError ||
      err instanceof Prisma.PrismaClientUnknownRequestError
    ) {
      throw new DBError('ユーザー設定の取得に失敗しました。', { cause: err })
    }
    throw err
  }
}

export async function setUserSetting(
  setting: userSetting,
): Promise<userSetting> {
  try {
    const userSetting = await prisma.userSetting.upsert({
      where: { id: BigInt(setting.id) },
      create: {
        id: BigInt(setting.id),
        speaker: setting.speaker,
        pitch: setting.pitch,
        speed: setting.speed,
      },
      update: {
        speaker: setting.speaker,
        pitch: setting.pitch,
        speed: setting.speed,
      },
    })

    // Update the cache only after the DB write succeeds.
    cachedUserSettings.set(String(setting.id), userSetting)
    return userSetting
  } catch (err) {
    if (
      err instanceof Prisma.PrismaClientKnownRequestError ||
      err instanceof Prisma.PrismaClientUnknownRequestError
    ) {
      throw new DBError(`設定の変更に失敗しました。`, {
        cause: err,
      })
    }
    throw err
  }
}

export function deleteUserCache(id: string) {
  cachedUserSettings.delete(id)
}

export async function loadStates() {
  try {
    const connectionStates = await prisma.connectionStates.findMany()
    return connectionStates
  } catch (err) {
    if (
      err instanceof Prisma.PrismaClientKnownRequestError ||
      err instanceof Prisma.PrismaClientUnknownRequestError ||
      err instanceof Prisma.PrismaClientInitializationError
    ) {
      throw new DBError(err.message, { cause: err })
    }
    throw err
  }
}

export async function setState(connectionContext: ConnectionContext) {
  const { voiceChannel, guild, readChannel, skipUser } =
    toConnectionState(connectionContext)
  try {
    await prisma.connectionStates.upsert({
      where: { voiceChannel: voiceChannel },
      create: {
        voiceChannel: voiceChannel,
        guild,
        readChannel,
        skipUser,
      },
      update: {
        guild,
        readChannel,
        skipUser,
      },
    })
  } catch (err) {
    if (
      err instanceof Prisma.PrismaClientKnownRequestError ||
      err instanceof Prisma.PrismaClientUnknownRequestError
    ) {
      throw new DBError(err.message, { cause: err })
    }
    throw err
  }
}

export async function deleteState({
  voiceChannelId,
}: {
  voiceChannelId: bigint
}) {
  try {
    await prisma.connectionStates.delete({
      where: {
        voiceChannel: voiceChannelId,
      },
    })
  } catch (err) {
    if (
      err instanceof Prisma.PrismaClientKnownRequestError ||
      err instanceof Prisma.PrismaClientUnknownRequestError
    ) {
      throw new DBError(err.message, { cause: err })
    }
    throw err
  }
}
