# Changelog

## [3.15.2](https://github.com/kazukazu123123/pow/compare/v3.15.1...v3.15.2) (2026-05-02)


### Dependencies

* update dependency @discordjs/voice to v0.19.2 ([#2031](https://github.com/kazukazu123123/pow/issues/2031)) ([cde6948](https://github.com/kazukazu123123/pow/commit/cde6948a2deb2f3ec52aa682a3abbe9752464b62))
* update dependency @sapphire/framework to v5.5.0 ([#2004](https://github.com/kazukazu123123/pow/issues/2004)) ([89130cd](https://github.com/kazukazu123123/pow/commit/89130cde6ec350a050e2571e2caaa2949fff4836))
* update dependency @snazzah/davey to v0.1.11 ([#2052](https://github.com/kazukazu123123/pow/issues/2052)) ([4523907](https://github.com/kazukazu123123/pow/commit/452390711bd8588c8d8337e4a70c5440edbefa4e))
* update dependency bufferutil to v4.1.0 ([#2005](https://github.com/kazukazu123123/pow/issues/2005)) ([6aa4328](https://github.com/kazukazu123123/pow/commit/6aa4328efae7d47290873691b000a8dda358c310))
* update dependency discord.js to v14.26.2 ([#2039](https://github.com/kazukazu123123/pow/issues/2039)) ([f44f23e](https://github.com/kazukazu123123/pow/commit/f44f23e277cfb2087782a609f73361b6ef17cd7d))
* update dependency discord.js to v14.26.3 ([#2059](https://github.com/kazukazu123123/pow/issues/2059)) ([7409ec6](https://github.com/kazukazu123123/pow/commit/7409ec647b7b8b4fd8cc280b1b5f6f59156d86ed))
* update dependency emoji-regex to v10.6.0 ([#2006](https://github.com/kazukazu123123/pow/issues/2006)) ([013339b](https://github.com/kazukazu123123/pow/commit/013339b807bf36a6df464d8d9127ea8bc4cf0d63))
* update dependency mariadb to v3.5.2 ([#2056](https://github.com/kazukazu123123/pow/issues/2056)) ([c25e913](https://github.com/kazukazu123123/pow/commit/c25e9130adda7089151cf1fe9ba3535544e5568c))
* update node.js to v24.14.1 ([#2035](https://github.com/kazukazu123123/pow/issues/2035)) ([3e1ae13](https://github.com/kazukazu123123/pow/commit/3e1ae135c322f70538807ce72f2224d89843e0a2))


### Build System

* **deps:** update buildpack-deps:bookworm docker digest to 58c016c ([#2027](https://github.com/kazukazu123123/pow/issues/2027)) ([2018061](https://github.com/kazukazu123123/pow/commit/201806127758a197e33b19715a0840506ab9e413))
* **deps:** update buildpack-deps:bookworm docker digest to f5eb37e ([#2060](https://github.com/kazukazu123123/pow/issues/2060)) ([85ebfb6](https://github.com/kazukazu123123/pow/commit/85ebfb65d66aac2ba9ae97db02ba0f8b7a12a7ff))
* **deps:** update docker/dockerfile docker tag to v1.23.0 ([#2053](https://github.com/kazukazu123123/pow/issues/2053)) ([99597a9](https://github.com/kazukazu123123/pow/commit/99597a9441e77693ec693c36b4c4b82c6728dd79))
* **deps:** update gcr.io/distroless/cc-debian12:nonroot docker digest to e2d29ae ([#2061](https://github.com/kazukazu123123/pow/issues/2061)) ([e4f167a](https://github.com/kazukazu123123/pow/commit/e4f167a833823e69d2fdc47bcb87a9a71ad3028c))
* **deps:** update quay.io/curl/curl-base docker tag to v8.19.0 ([#2066](https://github.com/kazukazu123123/pow/issues/2066)) ([8d436a0](https://github.com/kazukazu123123/pow/commit/8d436a0a3be876a4870ab5d3c9605e96e0d66f0a))
* **deps:** update quay.io/curl/curl-base:8.19.0 docker digest to 67b34c7 ([#2077](https://github.com/kazukazu123123/pow/issues/2077)) ([7d4ad12](https://github.com/kazukazu123123/pow/commit/7d4ad128dd7f43d614662604319fc5305fcc40e1))

## [3.15.1](https://github.com/kazukazu123123/pow/compare/v3.15.0...v3.15.1) (2026-03-10)


### Build System

* fix Dockerfile to enable pnpm execution within the container ([#2009](https://github.com/kazukazu123123/pow/issues/2009)) ([6f60fb0](https://github.com/kazukazu123123/pow/commit/6f60fb0615dd1f62d6a3259add35fe1129ce3048))

## [3.15.0](https://github.com/kazukazu123123/pow/compare/v3.14.61...v3.15.0) (2026-03-06)


### Features

* support Discord's Audio & Video End-to-End Encryption (DAVE) protocol ([#1987](https://github.com/kazukazu123123/pow/issues/1987)) ([e77caaf](https://github.com/kazukazu123123/pow/commit/e77caaf9981de1040aa1a76fce8f40df791d0051))


### Bug Fixes

* **ci:** unblock ffmpeg-static binary download in CI ([#1977](https://github.com/kazukazu123123/pow/issues/1977)) ([a96acbd](https://github.com/kazukazu123123/pow/commit/a96acbd6e9541891cc252d4dc5b38cd84e990150))


### Dependencies

* update dependency @discordjs/voice to v0.19.0 ([#1985](https://github.com/kazukazu123123/pow/issues/1985)) ([9acd8cf](https://github.com/kazukazu123123/pow/commit/9acd8cf45f3a8852def206f19c214c608b57e317))
* update dependency discord.js to v14.25.1 ([#1974](https://github.com/kazukazu123123/pow/issues/1974)) ([247ec83](https://github.com/kazukazu123123/pow/commit/247ec83b3a66082bb092a78b2aed47e51b11fe05))
* update dependency ffmpeg-static to v5.3.0 ([#1976](https://github.com/kazukazu123123/pow/issues/1976)) ([aae6e7a](https://github.com/kazukazu123123/pow/commit/aae6e7a8747433aebad5886e97c5c5949e841f9a))


### Build System

* **deps:** update buildpack-deps:bookworm docker digest to fc140b7 ([#1971](https://github.com/kazukazu123123/pow/issues/1971)) ([054fd2e](https://github.com/kazukazu123123/pow/commit/054fd2e0e77c374932e4e4f050592c5c6e6703cc))
* **deps:** update docker/dockerfile docker tag to v1.22.0 ([#1998](https://github.com/kazukazu123123/pow/issues/1998)) ([214df28](https://github.com/kazukazu123123/pow/commit/214df28c9d323eec17175bd90a8d69d4ec1fbf64))
* **deps:** update gcr.io/distroless/cc-debian12:nonroot docker digest to 7e5b8df ([#1972](https://github.com/kazukazu123123/pow/issues/1972)) ([f38fff0](https://github.com/kazukazu123123/pow/commit/f38fff04a7f05172fb72521216d5f241d6b79b5b))
* **deps:** update quay.io/curl/curl-base docker tag to v8.18.0 ([#1999](https://github.com/kazukazu123123/pow/issues/1999)) ([6fe346f](https://github.com/kazukazu123123/pow/commit/6fe346fe37ff018b8a23e1bb041621c2da370d23))

## [3.14.61](https://github.com/kazukazu123123/pow/compare/v3.14.60...v3.14.61) (2025-07-05)


### Dependencies

* update prisma monorepo to v6.11.1 ([#1964](https://github.com/kazukazu123123/pow/issues/1964)) ([227fbe7](https://github.com/kazukazu123123/pow/commit/227fbe7ac6e8e002bce403c86ab0d7586bafa332))

## [3.14.60](https://github.com/kazukazu123123/pow/compare/v3.14.59...v3.14.60) (2025-07-03)


### Dependencies

* update dependency mariadb to v3.4.3 ([#1961](https://github.com/kazukazu123123/pow/issues/1961)) ([d665545](https://github.com/kazukazu123123/pow/commit/d665545bd9479d12a3929db156c4fb02e4320d52))
* update dependency mariadb to v3.4.4 ([#1963](https://github.com/kazukazu123123/pow/issues/1963)) ([d191dd8](https://github.com/kazukazu123123/pow/commit/d191dd895062841e6afa4097167c31da6dc7d6fb))

## [3.14.59](https://github.com/kazukazu123123/pow/compare/v3.14.58...v3.14.59) (2025-07-02)


### Dependencies

* update prisma monorepo to v6.11.0 ([#1953](https://github.com/kazukazu123123/pow/issues/1953)) ([2220357](https://github.com/kazukazu123123/pow/commit/22203579e75cebec3c9bda5eff65cd1e7e347129))


### Build System

* **deps:** update buildpack-deps:bookworm docker digest to 8d9c076 ([#1951](https://github.com/kazukazu123123/pow/issues/1951)) ([3bdc526](https://github.com/kazukazu123123/pow/commit/3bdc5264974a98dd5cbb4b6de0fa220adc0d1017))
* **deps:** update buildpack-deps:bookworm docker digest to afc155d ([#1958](https://github.com/kazukazu123123/pow/issues/1958)) ([03d46a6](https://github.com/kazukazu123123/pow/commit/03d46a621845d573d2c4404bf2843199cc257e28))
* **deps:** update buildpack-deps:bookworm docker digest to fc363b5 ([#1955](https://github.com/kazukazu123123/pow/issues/1955)) ([342d591](https://github.com/kazukazu123123/pow/commit/342d591505c7db78d219bb624b8b08dfe796fb3c))

## [3.14.58](https://github.com/kazukazu123123/pow/compare/v3.14.57...v3.14.58) (2025-06-30)


### Dependencies

* update dependency discord.js to v14.21.0 ([#1947](https://github.com/kazukazu123123/pow/issues/1947)) ([7755060](https://github.com/kazukazu123123/pow/commit/775506097052cd536676285ab4cf7db605cf0e43))

## [3.14.57](https://github.com/kazukazu123123/pow/compare/v3.14.56...v3.14.57) (2025-06-24)


### Dependencies

* update pnpm to v10.12.1 ([#1919](https://github.com/kazukazu123123/pow/issues/1919)) ([14645b6](https://github.com/kazukazu123123/pow/commit/14645b689032f0ca67f26e015be9753d5e35aba2))


### Build System

* **deps:** update buildpack-deps:bookworm docker digest to 047ed89 ([#1926](https://github.com/kazukazu123123/pow/issues/1926)) ([7e1e78f](https://github.com/kazukazu123123/pow/commit/7e1e78faeb4737b7d26443108bbbe0772d31d367))
* **deps:** update buildpack-deps:bookworm docker digest to f2d7d6f ([#1924](https://github.com/kazukazu123123/pow/issues/1924)) ([70f3fa8](https://github.com/kazukazu123123/pow/commit/70f3fa837aabbc947f8557ad0640d2b33d624b04))
* **deps:** update docker/dockerfile docker tag to v1.17.1 ([#1935](https://github.com/kazukazu123123/pow/issues/1935)) ([fed2a13](https://github.com/kazukazu123123/pow/commit/fed2a13043ae3a03cae761e49889254076a10c05))
* **deps:** update gcr.io/distroless/cc-debian12:nonroot docker digest to a3c413a ([#1930](https://github.com/kazukazu123123/pow/issues/1930)) ([864c2f3](https://github.com/kazukazu123123/pow/commit/864c2f359a55a7c4f47cc5caccc6be060aa19018))
* **deps:** update quay.io/curl/curl-base docker tag to v8.14.1 ([#1931](https://github.com/kazukazu123123/pow/issues/1931)) ([f56b742](https://github.com/kazukazu123123/pow/commit/f56b742d16c0ca546ecd6db0e76284565e2f98b9))

## [3.14.56](https://github.com/eoeo-org/pow/compare/v3.14.55...v3.14.56) (2025-06-07)


### Dependencies

* update dependency @sapphire/framework to v5.3.6 ([#1917](https://github.com/eoeo-org/pow/issues/1917)) ([2771887](https://github.com/eoeo-org/pow/commit/27718872a031e2c34528183c9a0748d83244c435))

## [3.14.55](https://github.com/eoeo-org/pow/compare/v3.14.54...v3.14.55) (2025-06-04)


### Dependencies

* update prisma monorepo to v6.9.0 ([#1914](https://github.com/eoeo-org/pow/issues/1914)) ([d823b73](https://github.com/eoeo-org/pow/commit/d823b739edd1e707d8babeb17f76e378c7e4d974))

## [3.14.54](https://github.com/eoeo-org/pow/compare/v3.14.53...v3.14.54) (2025-05-23)


### Build System

* **deps:** update buildpack-deps:bookworm docker digest to 9c25b19 ([#1901](https://github.com/eoeo-org/pow/issues/1901)) ([098fff0](https://github.com/eoeo-org/pow/commit/098fff07bc6dba8d658ad52d98ea61c850950ad0))

## [3.14.53](https://github.com/eoeo-org/pow/compare/v3.14.52...v3.14.53) (2025-05-23)


### Build System

* **deps:** update buildpack-deps:bookworm docker digest to 2205c87 ([#1897](https://github.com/eoeo-org/pow/issues/1897)) ([41ba370](https://github.com/eoeo-org/pow/commit/41ba3706d9ee99902b76cd981c8da86a226d82c2))
* **deps:** update buildpack-deps:bookworm docker digest to 320572f ([#1899](https://github.com/eoeo-org/pow/issues/1899)) ([27cc983](https://github.com/eoeo-org/pow/commit/27cc983332a0de1eafcae226676f771c7bce9492))
* **deps:** update buildpack-deps:bookworm docker digest to aa85cf4 ([#1898](https://github.com/eoeo-org/pow/issues/1898)) ([596f819](https://github.com/eoeo-org/pow/commit/596f819a4fc08cc8db70db123de4be51cfa8f60f))
* **deps:** update buildpack-deps:bookworm docker digest to d51dfc8 ([#1900](https://github.com/eoeo-org/pow/issues/1900)) ([5c75682](https://github.com/eoeo-org/pow/commit/5c75682dacd0fd484c397ead8666d9f85a11d907))
* **deps:** update docker/dockerfile docker tag to v1.16.0 ([#1892](https://github.com/eoeo-org/pow/issues/1892)) ([5c42911](https://github.com/eoeo-org/pow/commit/5c42911fbf68fc677407ae1d9e4d9f9118f3455a))

## [3.14.52](https://github.com/eoeo-org/pow/compare/v3.14.51...v3.14.52) (2025-05-21)


### Dependencies

* lock file maintenance ([#1888](https://github.com/eoeo-org/pow/issues/1888)) ([0c4539d](https://github.com/eoeo-org/pow/commit/0c4539d80af64ad437289cbebe297b126f63b6d5))


### Build System

* **deps:** update gcr.io/distroless/cc-debian12:nonroot docker digest to 20111f0 ([#1887](https://github.com/eoeo-org/pow/issues/1887)) ([f955518](https://github.com/eoeo-org/pow/commit/f95551895f04679282376a0a6be1883724ae104a))

## [3.14.51](https://github.com/eoeo-org/pow/compare/v3.14.50...v3.14.51) (2025-05-17)


### Dependencies

* update prisma monorepo to v6.8.0 ([#1879](https://github.com/eoeo-org/pow/issues/1879)) ([92f4065](https://github.com/eoeo-org/pow/commit/92f40650e77f83316f50e521384ccf065efdb114))
* update prisma monorepo to v6.8.1 ([#1883](https://github.com/eoeo-org/pow/issues/1883)) ([b248ebd](https://github.com/eoeo-org/pow/commit/b248ebdce22cbee2efc038f42037b80c1ec0de35))
* update prisma monorepo to v6.8.2 ([#1886](https://github.com/eoeo-org/pow/issues/1886)) ([96142eb](https://github.com/eoeo-org/pow/commit/96142eb347f2a0a3ea555b956319148cbf623fd9))

## [3.14.50](https://github.com/eoeo-org/pow/compare/v3.14.49...v3.14.50) (2025-05-15)


### Dependencies

* update node.js to v23.11.1 ([#1877](https://github.com/eoeo-org/pow/issues/1877)) ([c23db9b](https://github.com/eoeo-org/pow/commit/c23db9b231f15a65c9a1a5c4b3fe818a5d77f8d6))

## [3.14.49](https://github.com/eoeo-org/pow/compare/v3.14.48...v3.14.49) (2025-05-14)


### Dependencies

* update dependency debug to v4.4.1 ([#1875](https://github.com/eoeo-org/pow/issues/1875)) ([41347e4](https://github.com/eoeo-org/pow/commit/41347e425fa0c8963cf7d18599bcc6dfe680a21c))

## [3.14.48](https://github.com/eoeo-org/pow/compare/v3.14.47...v3.14.48) (2025-05-12)


### Dependencies

* update dependency @sapphire/framework to v5.3.5 ([#1870](https://github.com/eoeo-org/pow/issues/1870)) ([a731c69](https://github.com/eoeo-org/pow/commit/a731c699a90d2ec3d7e5127d3858e20a4d584acf))

## [3.14.47](https://github.com/eoeo-org/pow/compare/v3.14.46...v3.14.47) (2025-05-10)


### Dependencies

* lock file maintenance ([#1864](https://github.com/eoeo-org/pow/issues/1864)) ([56d90e6](https://github.com/eoeo-org/pow/commit/56d90e67ffa5c8b8b33fbaf270bca5ec803d8728))
* update dependency discord.js to v14.19.3 ([#1863](https://github.com/eoeo-org/pow/issues/1863)) ([1392d44](https://github.com/eoeo-org/pow/commit/1392d443b9468a9736751e02646f71e359633c55))
* update dependency zlib-sync to v0.1.10 ([#1858](https://github.com/eoeo-org/pow/issues/1858)) ([285fdd5](https://github.com/eoeo-org/pow/commit/285fdd515c8571dadd6828504eff0d4e0227f26e))

## [3.14.46](https://github.com/eoeo-org/pow/compare/v3.14.45...v3.14.46) (2025-05-01)


### Build System

* **deps:** update docker/dockerfile docker tag to v1.15.1 ([#1855](https://github.com/eoeo-org/pow/issues/1855)) ([9c67d30](https://github.com/eoeo-org/pow/commit/9c67d30d82b2642bdb63aab987b35f2767fe86f9))

## [3.14.45](https://github.com/eoeo-org/pow/compare/v3.14.44...v3.14.45) (2025-04-30)


### Dependencies

* update prisma monorepo to v6.7.0 ([#1849](https://github.com/eoeo-org/pow/issues/1849)) ([05e7c3f](https://github.com/eoeo-org/pow/commit/05e7c3fc2208ba5e3837bf1000ffea52cc8f63f3))


### Build System

* **deps:** update buildpack-deps:bookworm docker digest to 57d1e5d ([#1848](https://github.com/eoeo-org/pow/issues/1848)) ([aff3f32](https://github.com/eoeo-org/pow/commit/aff3f32306e67997d879c9f194d1f6108e9da667))
* **deps:** update buildpack-deps:bookworm docker digest to 8c30a94 ([#1853](https://github.com/eoeo-org/pow/issues/1853)) ([151d958](https://github.com/eoeo-org/pow/commit/151d958a6c80199893872be3939e4178be3a7aa6))
* **deps:** update buildpack-deps:bookworm docker digest to e83a35b ([#1852](https://github.com/eoeo-org/pow/issues/1852)) ([d10d126](https://github.com/eoeo-org/pow/commit/d10d12667271b3bd267c6d7b554bb1c8d8eaf75d))

## [3.14.44](https://github.com/eoeo-org/pow/compare/v3.14.43...v3.14.44) (2025-04-29)


### Dependencies

* lock file maintenance ([#1845](https://github.com/eoeo-org/pow/issues/1845)) ([fe42a76](https://github.com/eoeo-org/pow/commit/fe42a76892d56d6c944e340b96ce6a85c2476082))
* update dependency discord.js to v14.19.2 ([#1846](https://github.com/eoeo-org/pow/issues/1846)) ([ee236a7](https://github.com/eoeo-org/pow/commit/ee236a7401eb5936f14f39e3ca5d0ec1b5857688))
* update pnpm to v10.10.0 ([#1843](https://github.com/eoeo-org/pow/issues/1843)) ([826c32d](https://github.com/eoeo-org/pow/commit/826c32d50d061b7ffe4eb1fa1c9ebb0866cbe2b6))


### Build System

* **deps:** update buildpack-deps:bookworm docker digest to 5328645 ([#1847](https://github.com/eoeo-org/pow/issues/1847)) ([97117cc](https://github.com/eoeo-org/pow/commit/97117ccdd3005df2a9531a94e9494f26ae27f072))

## [3.14.43](https://github.com/eoeo-org/pow/compare/v3.14.42...v3.14.43) (2025-04-26)


### Dependencies

* update dependency @sapphire/framework to v5.3.4 ([#1831](https://github.com/eoeo-org/pow/issues/1831)) ([09e1702](https://github.com/eoeo-org/pow/commit/09e1702598da6d329a2df2d29f8e7ff62de8a3b7))
* update dependency discord.js to v14.19.1 ([#1842](https://github.com/eoeo-org/pow/issues/1842)) ([76f6a47](https://github.com/eoeo-org/pow/commit/76f6a47bebaf0b8116793dd649a008122b6c7e9b))
* update dependency mariadb to v3.4.2 ([#1841](https://github.com/eoeo-org/pow/issues/1841)) ([ccc3045](https://github.com/eoeo-org/pow/commit/ccc3045a092e14b1cea31ef7223cc8063fd48d44))

## [3.14.42](https://github.com/eoeo-org/pow/compare/v3.14.41...v3.14.42) (2025-04-20)


### Build System

* **deps:** update docker/dockerfile docker tag to v1.15.0 ([#1827](https://github.com/eoeo-org/pow/issues/1827)) ([82ec5d6](https://github.com/eoeo-org/pow/commit/82ec5d6dfc731daf8a45ffefdafa10300a267863))

## [3.14.41](https://github.com/eoeo-org/pow/compare/v3.14.40...v3.14.41) (2025-04-09)


### Dependencies

* update dependency @sapphire/framework to v5.3.3 ([#1810](https://github.com/eoeo-org/pow/issues/1810)) ([538b9c8](https://github.com/eoeo-org/pow/commit/538b9c80c5992f96ef69a6e5d51adf7da80b8d47))
* update dependency mariadb to v3.4.1 ([#1806](https://github.com/eoeo-org/pow/issues/1806)) ([7364c8b](https://github.com/eoeo-org/pow/commit/7364c8bbdf4db600f6f4bd5e93418f68b93f3bee))
* update node.js to v23.11.0 ([#1802](https://github.com/eoeo-org/pow/issues/1802)) ([8abd4e4](https://github.com/eoeo-org/pow/commit/8abd4e441bf1894183fc3462195efc736558e722))


### Build System

* **deps:** update buildpack-deps:bookworm docker digest to a003a1b ([#1819](https://github.com/eoeo-org/pow/issues/1819)) ([8e54c11](https://github.com/eoeo-org/pow/commit/8e54c11bec3e59f9ba265d83bc6beb17d2226a6b))
* **deps:** update buildpack-deps:bookworm docker digest to f63adcb ([#1816](https://github.com/eoeo-org/pow/issues/1816)) ([1c4e402](https://github.com/eoeo-org/pow/commit/1c4e402e6be680d04abaafb3724541d9863c6286))
* **deps:** update gcr.io/distroless/cc-debian12:nonroot docker digest to 3c62069 ([#1794](https://github.com/eoeo-org/pow/issues/1794)) ([12a151c](https://github.com/eoeo-org/pow/commit/12a151cd7402cf811dc07c253aa817a06fd5fa10))
* **deps:** update quay.io/curl/curl-base docker tag to v8.13.0 ([#1809](https://github.com/eoeo-org/pow/issues/1809)) ([f67f9a6](https://github.com/eoeo-org/pow/commit/f67f9a63a640ac29d0fb82365471a76db8040bef))

## [3.14.40](https://github.com/eoeo-org/pow/compare/v3.14.39...v3.14.40) (2025-03-26)


### Dependencies

* update pnpm to v10.7.0 ([#1791](https://github.com/eoeo-org/pow/issues/1791)) ([10d338c](https://github.com/eoeo-org/pow/commit/10d338c84b771f8c77171dbdc2433211e56ede61))

## [3.14.39](https://github.com/eoeo-org/pow/compare/v3.14.38...v3.14.39) (2025-03-20)


### Build System

* **deps:** update buildpack-deps:bookworm docker digest to 1e09a09 ([#1779](https://github.com/eoeo-org/pow/issues/1779)) ([4ef4a73](https://github.com/eoeo-org/pow/commit/4ef4a73b0f1b30e83bdc9987896f61fe99d705d4))

## [3.14.38](https://github.com/eoeo-org/pow/compare/v3.14.37...v3.14.38) (2025-03-19)


### Dependencies

* update pnpm to v10.6.4 ([#1765](https://github.com/eoeo-org/pow/issues/1765)) ([47a889a](https://github.com/eoeo-org/pow/commit/47a889afd92fd5226f2742281d70072ca8a91363))


### Build System

* **deps:** update buildpack-deps:bookworm docker digest to 7c97d3d ([#1769](https://github.com/eoeo-org/pow/issues/1769)) ([bb6180a](https://github.com/eoeo-org/pow/commit/bb6180a5aa8c9d70c7d7c34b57eaba183c1a6466))
* **deps:** update gcr.io/distroless/cc-debian12:nonroot docker digest to db46784 ([#1770](https://github.com/eoeo-org/pow/issues/1770)) ([2d8cdc7](https://github.com/eoeo-org/pow/commit/2d8cdc740c0a9677f67407453c2a35062400064e))

## [3.14.37](https://github.com/eoeo-org/pow/compare/v3.14.36...v3.14.37) (2025-03-14)


### Dependencies

* update node.js to v23.10.0 ([#1760](https://github.com/eoeo-org/pow/issues/1760)) ([98ed845](https://github.com/eoeo-org/pow/commit/98ed845d615411daa49ac97430463bb3721099ad))

## [3.14.36](https://github.com/eoeo-org/pow/compare/v3.14.35...v3.14.36) (2025-03-10)


### Dependencies

* update pnpm to v10.6.2 ([#1754](https://github.com/eoeo-org/pow/issues/1754)) ([8196a5d](https://github.com/eoeo-org/pow/commit/8196a5d0b97f8b088d8c3313a6108f2d68741da5))

## [3.14.35](https://github.com/eoeo-org/pow/compare/v3.14.34...v3.14.35) (2025-03-08)


### Dependencies

* lock file maintenance ([#1739](https://github.com/eoeo-org/pow/issues/1739)) ([087a4b8](https://github.com/eoeo-org/pow/commit/087a4b82b84f7591f1e43f62f83ee687ffdf2f3d))
* update dependency discord-emoji to v2.5.3 ([#1743](https://github.com/eoeo-org/pow/issues/1743)) ([e6270e0](https://github.com/eoeo-org/pow/commit/e6270e0b21d66fade496e10ca74491dc1d645339))
* update pnpm to v10.6.0 ([#1748](https://github.com/eoeo-org/pow/issues/1748)) ([8c12741](https://github.com/eoeo-org/pow/commit/8c127413cc5db96242aeb665e2735ed0cb14e725))
* update pnpm to v10.6.1 ([#1749](https://github.com/eoeo-org/pow/issues/1749)) ([ba65ee8](https://github.com/eoeo-org/pow/commit/ba65ee8190a44de74c0eca4f940da63599d4d186))


### Build System

* **deps:** update docker/dockerfile:1.14.0 docker digest to 4c68376 ([#1747](https://github.com/eoeo-org/pow/issues/1747)) ([f691e1c](https://github.com/eoeo-org/pow/commit/f691e1cd6bbc5900d9f5ff3218f3b1d599874fe5))

## [3.14.34](https://github.com/eoeo-org/pow/compare/v3.14.33...v3.14.34) (2025-02-28)


### Dependencies

* update node.js to v23.9.0 ([#1733](https://github.com/eoeo-org/pow/issues/1733)) ([2546a1b](https://github.com/eoeo-org/pow/commit/2546a1b42ff8605097f5c5c74ee4d46195b6313d))

## [3.14.33](https://github.com/eoeo-org/pow/compare/v3.14.32...v3.14.33) (2025-02-26)


### Build System

* **deps:** update buildpack-deps:bookworm docker digest to 9aae1be ([#1725](https://github.com/eoeo-org/pow/issues/1725)) ([b6b7522](https://github.com/eoeo-org/pow/commit/b6b7522c205a9027d6f00ec3d9016c83e2216c97))

## [3.14.32](https://github.com/eoeo-org/pow/compare/v3.14.31...v3.14.32) (2025-02-26)


### Build System

* **deps:** update buildpack-deps:bookworm docker digest to 2cac6c0 ([#1723](https://github.com/eoeo-org/pow/issues/1723)) ([3017a9f](https://github.com/eoeo-org/pow/commit/3017a9f22d6b006151a7071351cb73c6f2256fab))
* **deps:** update buildpack-deps:bookworm docker digest to 6f7569e ([#1721](https://github.com/eoeo-org/pow/issues/1721)) ([597f2e5](https://github.com/eoeo-org/pow/commit/597f2e501b5a4a2e579da085d1deace84400c3d0))

## [3.14.31](https://github.com/eoeo-org/pow/compare/v3.14.30...v3.14.31) (2025-02-25)


### Build System

* **deps:** update buildpack-deps:bookworm docker digest to bdd13bd ([#1719](https://github.com/eoeo-org/pow/issues/1719)) ([21eb61b](https://github.com/eoeo-org/pow/commit/21eb61b80d28bd573a878321c8cfca5fa53f49e7))

## [3.14.30](https://github.com/eoeo-org/pow/compare/v3.14.29...v3.14.30) (2025-02-25)


### Dependencies

* lock file maintenance ([#1715](https://github.com/eoeo-org/pow/issues/1715)) ([b60b0b3](https://github.com/eoeo-org/pow/commit/b60b0b393befaf64c9e707a5fc4d3a4edc133888))


### Build System

* **deps:** update buildpack-deps:bookworm docker digest to a74a7e5 ([#1717](https://github.com/eoeo-org/pow/issues/1717)) ([0ba01e9](https://github.com/eoeo-org/pow/commit/0ba01e9d3dfe039a7e0d5fcf80e16f0964bb310d))

## [3.14.29](https://github.com/eoeo-org/pow/compare/v3.14.28...v3.14.29) (2025-02-23)


### Build System

* copy package.json before pnpm fetch as required by pnpm@10 ([#1708](https://github.com/eoeo-org/pow/issues/1708)) ([6000d24](https://github.com/eoeo-org/pow/commit/6000d243afc6c7f09ff4758f25aa013c180468ae))
* **deps:** update docker/dockerfile docker tag to v1.14.0 ([#1712](https://github.com/eoeo-org/pow/issues/1712)) ([2dc5252](https://github.com/eoeo-org/pow/commit/2dc52529c67c07922ce48389840a8db7e0ee4f1a))

## [3.14.28](https://github.com/eoeo-org/pow/compare/v3.14.27...v3.14.28) (2025-02-18)


### Dependencies

* downgrade pnpm version ([#1698](https://github.com/eoeo-org/pow/issues/1698)) ([f475107](https://github.com/eoeo-org/pow/commit/f475107c51e6fbb293f3483012c69a1e4c62702e))

## [3.14.27](https://github.com/eoeo-org/pow/compare/v3.14.26...v3.14.27) (2025-02-16)


### Build System

* use ubuntu user instead of root for container execution ([#1693](https://github.com/eoeo-org/pow/issues/1693)) ([22aee99](https://github.com/eoeo-org/pow/commit/22aee9985ddede107d113d432826d0305523cf5b))

## [3.14.26](https://github.com/eoeo-org/pow/compare/v3.14.25...v3.14.26) (2025-02-15)


### Dependencies

* update node.js to v23.8.0 ([#1690](https://github.com/eoeo-org/pow/issues/1690)) ([2e13b7e](https://github.com/eoeo-org/pow/commit/2e13b7e21e892bd210d9f9f5a7bafdf4ca4a98fa))

## [3.14.25](https://github.com/eoeo-org/pow/compare/v3.14.24...v3.14.25) (2025-02-11)


### Dependencies

* update dependency discord.js to v14.18.0 ([#1682](https://github.com/eoeo-org/pow/issues/1682)) ([d061b00](https://github.com/eoeo-org/pow/commit/d061b002e99877cc66888147d40b8000251eccae))
* update prisma monorepo to v6.3.1 ([#1675](https://github.com/eoeo-org/pow/issues/1675)) ([189a94f](https://github.com/eoeo-org/pow/commit/189a94f17b8a9f1957ead6a3bcef07c610ecd976))

## [3.14.24](https://github.com/eoeo-org/pow/compare/v3.14.23...v3.14.24) (2025-01-31)


### Dependencies

* update node.js to v23.7.0 ([#1666](https://github.com/eoeo-org/pow/issues/1666)) ([a663ef8](https://github.com/eoeo-org/pow/commit/a663ef8591f3bd6fcb9cd38e65421b9fcf9750ab))

## [3.14.23](https://github.com/eoeo-org/pow/compare/v3.14.22...v3.14.23) (2025-01-28)


### Dependencies

* update node.js to v23.6.1 ([#1653](https://github.com/eoeo-org/pow/issues/1653)) ([911af43](https://github.com/eoeo-org/pow/commit/911af437e9256af2d58909d397939141ca45b9b7))

## [3.14.22](https://github.com/eoeo-org/pow/compare/v3.14.21...v3.14.22) (2025-01-09)


### Dependencies

* update dependency discord.js to v14.17.3 ([#1635](https://github.com/eoeo-org/pow/issues/1635)) ([6d80638](https://github.com/eoeo-org/pow/commit/6d806387a7317ed5b078a92027df5a1634d3066c))
* update prisma monorepo to v6.2.1 ([#1637](https://github.com/eoeo-org/pow/issues/1637)) ([074ca36](https://github.com/eoeo-org/pow/commit/074ca360d0b947cd63150b13b15465a45796d1a8))

## [3.14.21](https://github.com/eoeo-org/pow/compare/v3.14.20...v3.14.21) (2025-01-08)


### Dependencies

* update node.js to v23.6.0 ([#1633](https://github.com/eoeo-org/pow/issues/1633)) ([5e46310](https://github.com/eoeo-org/pow/commit/5e4631017ada69707e71a3d847e8a0e51a3d955c))

## [3.14.20](https://github.com/eoeo-org/pow/compare/v3.14.19...v3.14.20) (2025-01-05)


### Dependencies

* update dependency @sapphire/framework to v5.3.2 ([#1627](https://github.com/eoeo-org/pow/issues/1627)) ([3c864cd](https://github.com/eoeo-org/pow/commit/3c864cd9a476eb9133094b3f0c68866dd8e0f07a))

## [3.14.19](https://github.com/eoeo-org/pow/compare/v3.14.18...v3.14.19) (2025-01-02)


### Dependencies

* update dependency discord.js to v14.17.2 ([#1625](https://github.com/eoeo-org/pow/issues/1625)) ([7ed7687](https://github.com/eoeo-org/pow/commit/7ed768720b229cc543faf43ca6ec532a391a9438))

## [3.14.18](https://github.com/eoeo-org/pow/compare/v3.14.17...v3.14.18) (2025-01-02)


### Dependencies

* update dependency discord.js to v14.17.0 ([#1622](https://github.com/eoeo-org/pow/issues/1622)) ([c11cb13](https://github.com/eoeo-org/pow/commit/c11cb13fe7b60733124cc69d81399c8578c7b298))
* update dependency discord.js to v14.17.1 ([#1624](https://github.com/eoeo-org/pow/issues/1624)) ([41bcce2](https://github.com/eoeo-org/pow/commit/41bcce2c366782d3f3b4a25ecea2cae6c12e2608))

## [3.14.17](https://github.com/eoeo-org/pow/compare/v3.14.16...v3.14.17) (2024-12-29)


### Dependencies

* update dependency bufferutil to v4.0.9 ([#1616](https://github.com/eoeo-org/pow/issues/1616)) ([81c3df7](https://github.com/eoeo-org/pow/commit/81c3df77497f54a92a429410c91a07fee71b52c2))

## [3.14.16](https://github.com/eoeo-org/pow/compare/v3.14.15...v3.14.16) (2024-12-20)


### Dependencies

* update node.js to v23.5.0 ([#1606](https://github.com/eoeo-org/pow/issues/1606)) ([5d0c718](https://github.com/eoeo-org/pow/commit/5d0c718906186ad42e5b1d75915d99d8a24bbac6))


### Reverts

* "chore: exclude the husky directory from language statistics" ([#1594](https://github.com/eoeo-org/pow/issues/1594)) ([0b696e3](https://github.com/eoeo-org/pow/commit/0b696e35f3b77666ee6266a9e32cb13d90822254))

## [3.14.15](https://github.com/eoeo-org/pow/compare/v3.14.14...v3.14.15) (2024-12-12)


### Dependencies

* update node.js to v23.4.0 ([#1591](https://github.com/eoeo-org/pow/issues/1591)) ([7ea2f8d](https://github.com/eoeo-org/pow/commit/7ea2f8ddec28f7e89b84ea5ae39b75f099f5da10))

## [3.14.14](https://github.com/eoeo-org/pow/compare/v3.14.13...v3.14.14) (2024-12-06)


### Dependencies

* update dependency debug to v4.4.0 ([#1584](https://github.com/eoeo-org/pow/issues/1584)) ([803f871](https://github.com/eoeo-org/pow/commit/803f871caf956d8beff9e37af233a0996d3b19e6))

## [3.14.13](https://github.com/eoeo-org/pow/compare/v3.14.12...v3.14.13) (2024-12-03)


### Dependencies

* remove ffmpeg-static ([#1568](https://github.com/eoeo-org/pow/issues/1568)) ([7070204](https://github.com/eoeo-org/pow/commit/70702048a7c6dc9124b3504abe647829cd34a405))
* update prisma monorepo to v6.0.1 ([#1573](https://github.com/eoeo-org/pow/issues/1573)) ([ab8046c](https://github.com/eoeo-org/pow/commit/ab8046c9a607dfb7e0ce3b87e616bbebf610db42))


### Reverts

* "deps: remove ffmpeg-static" ([#1572](https://github.com/eoeo-org/pow/issues/1572)) ([6779a09](https://github.com/eoeo-org/pow/commit/6779a0918c7099313df807bda4cbb1872104c79e))

## [3.14.12](https://github.com/eoeo-org/pow/compare/v3.14.11...v3.14.12) (2024-11-29)


### Dependencies

* update prisma monorepo to v6 (major) ([#1563](https://github.com/eoeo-org/pow/issues/1563)) ([d5ff887](https://github.com/eoeo-org/pow/commit/d5ff88746e39073d42d71196978629bb683b621e))

## [3.14.11](https://github.com/eoeo-org/pow/compare/v3.14.10...v3.14.11) (2024-11-23)


### Dependencies

* add bufferutil ([#1548](https://github.com/eoeo-org/pow/issues/1548)) ([58c9df5](https://github.com/eoeo-org/pow/commit/58c9df5b411503aea5ba5068a1c65a21818f789f))
* add zlib-sync ([#1547](https://github.com/eoeo-org/pow/issues/1547)) ([6ae6d16](https://github.com/eoeo-org/pow/commit/6ae6d166bd27f87641b5078e3f3587af8d4a6f3f))

## [3.14.10](https://github.com/eoeo-org/pow/compare/v3.14.9...v3.14.10) (2024-11-21)


### Dependencies

* update node.js to v23.3.0 ([#1545](https://github.com/eoeo-org/pow/issues/1545)) ([45cf329](https://github.com/eoeo-org/pow/commit/45cf3293653f138bc5d5cf6b93a078781dc3a830))

## [3.14.9](https://github.com/eoeo-org/pow/compare/v3.14.8...v3.14.9) (2024-11-18)


### Dependencies

* remove sodium-native ([#1538](https://github.com/eoeo-org/pow/issues/1538)) ([656589e](https://github.com/eoeo-org/pow/commit/656589e90f5fc5ae02ca11b4889463e41d46bdd4))
* update dependency @discordjs/voice to v0.18.0 ([#1536](https://github.com/eoeo-org/pow/issues/1536)) ([95c4204](https://github.com/eoeo-org/pow/commit/95c4204116623f167a15db9628e103858460bb22))

## [3.14.8](https://github.com/eoeo-org/pow/compare/v3.14.7...v3.14.8) (2024-11-16)


### Dependencies

* update dependency sodium-native to v4.3.1 ([#1529](https://github.com/eoeo-org/pow/issues/1529)) ([66018ce](https://github.com/eoeo-org/pow/commit/66018ce8ead9f445cac946ff63422fcc52b5f8dc))

## [3.14.7](https://github.com/eoeo-org/pow/compare/v3.14.6...v3.14.7) (2024-11-13)


### Dependencies

* update node.js to v23.2.0 ([#1526](https://github.com/eoeo-org/pow/issues/1526)) ([d46a74b](https://github.com/eoeo-org/pow/commit/d46a74b2bbae8be2776663c184bab9381ddb7cc8))

## [3.14.6](https://github.com/eoeo-org/pow/compare/v3.14.5...v3.14.6) (2024-11-07)


### Dependencies

* update dependency sodium-native to v4.3.0 ([#1520](https://github.com/eoeo-org/pow/issues/1520)) ([678c8ae](https://github.com/eoeo-org/pow/commit/678c8ae4e27135c304ab4e5734525d0a4011954a))

## [3.14.5](https://github.com/eoeo-org/pow/compare/v3.14.4...v3.14.5) (2024-11-06)


### Dependencies

* update dependency @sapphire/framework to v5.3.1 ([#1515](https://github.com/eoeo-org/pow/issues/1515)) ([15fdde2](https://github.com/eoeo-org/pow/commit/15fdde2662c730b12ac815557b06f9b5af50e30e))
* update prisma monorepo to v5.22.0 ([#1518](https://github.com/eoeo-org/pow/issues/1518)) ([f30ce00](https://github.com/eoeo-org/pow/commit/f30ce00b42b4871a5440bfe90e40482d7970130e))

## [3.14.4](https://github.com/eoeo-org/pow/compare/v3.14.3...v3.14.4) (2024-11-03)


### Dependencies

* update dependency @sapphire/framework to v5.3.0 ([#1507](https://github.com/eoeo-org/pow/issues/1507)) ([36f9d90](https://github.com/eoeo-org/pow/commit/36f9d900d5200ab0167165f4df5db036e492d8e8))
* update dependency @sapphire/plugin-subcommands to v7.0.1 ([#1508](https://github.com/eoeo-org/pow/issues/1508)) ([4da8349](https://github.com/eoeo-org/pow/commit/4da83492dad7679372dc56c28a4733deccec750e))


### Reverts

* "chore(deps): update dependency @swc/core to v1.7.42" ([#1504](https://github.com/eoeo-org/pow/issues/1504)) ([88db05c](https://github.com/eoeo-org/pow/commit/88db05c5ac5b4396e11aa18eb03fe42219638e41))

## [3.14.3](https://github.com/eoeo-org/pow/compare/v3.14.2...v3.14.3) (2024-10-27)


### Dependencies

* update dependency mariadb to v3.4.0 ([#1493](https://github.com/eoeo-org/pow/issues/1493)) ([0439636](https://github.com/eoeo-org/pow/commit/04396369f4fa217933bec05f230b9fc9d7065c8c))
* update dependency node to v23.1.0 ([#1494](https://github.com/eoeo-org/pow/issues/1494)) ([c585c29](https://github.com/eoeo-org/pow/commit/c585c2994d767d7d01d715b05deca3cfdf095568))
* update dependency sodium-native to v4.2.2 ([#1489](https://github.com/eoeo-org/pow/issues/1489)) ([a5503b5](https://github.com/eoeo-org/pow/commit/a5503b5dbf11b5ac0710667748f638d5fb460421))

## [3.14.2](https://github.com/eoeo-org/pow/compare/v3.14.1...v3.14.2) (2024-10-18)


### Dependencies

* update dependency node to v23.0.0 ([#1479](https://github.com/eoeo-org/pow/issues/1479)) ([091efed](https://github.com/eoeo-org/pow/commit/091efedfd85c3ed3255421643ff41de5751d54fc))
* update prisma monorepo to v5.21.1 ([#1481](https://github.com/eoeo-org/pow/issues/1481)) ([f29f86c](https://github.com/eoeo-org/pow/commit/f29f86c1eca702f759c94b635e924d0cf07cbe6c))

## [3.14.1](https://github.com/eoeo-org/pow/compare/v3.14.0...v3.14.1) (2024-10-17)


### Dependencies

* update dependency node to v22.10.0 ([#1476](https://github.com/eoeo-org/pow/issues/1476)) ([500a765](https://github.com/eoeo-org/pow/commit/500a76548bcb9b2d17a5eaf5c27fc4c94393e4d5))
* update prisma monorepo to v5.21.0 ([#1470](https://github.com/eoeo-org/pow/issues/1470)) ([ce4e1d6](https://github.com/eoeo-org/pow/commit/ce4e1d672de510d057c823b6c7affdbc319f06a8))

## [3.14.0](https://github.com/eoeo-org/pow/compare/v3.13.0...v3.14.0) (2024-10-13)


### Features

* provide default values for unknown users, roles, and channels ([#1461](https://github.com/eoeo-org/pow/issues/1461)) ([f5c8b75](https://github.com/eoeo-org/pow/commit/f5c8b75245ae4a5bedd53bb5271f40fe11097c57))


### Reverts

* "feat: allow fallback to user name if guild member not found" ([#1459](https://github.com/eoeo-org/pow/issues/1459)) ([1442a4d](https://github.com/eoeo-org/pow/commit/1442a4d0d16626db6e262cee74852feff9ef2ede))

## [3.13.0](https://github.com/eoeo-org/pow/compare/v3.12.1...v3.13.0) (2024-10-12)


### Features

* allow fallback to user name if guild member not found ([#1457](https://github.com/eoeo-org/pow/issues/1457)) ([3db3ea1](https://github.com/eoeo-org/pow/commit/3db3ea12023f46649bafa29bd3600181cacf8e99))


### Bug Fixes

* add await ([#1455](https://github.com/eoeo-org/pow/issues/1455)) ([6d3848e](https://github.com/eoeo-org/pow/commit/6d3848e8de02793e257f5037d99bea2f370ab884))

## [3.12.1](https://github.com/eoeo-org/pow/compare/v3.12.0...v3.12.1) (2024-10-04)


### Bug Fixes

* import from .prisma/client ([#1405](https://github.com/eoeo-org/pow/issues/1405)) ([a9f5c05](https://github.com/eoeo-org/pow/commit/a9f5c056fe31623688bfba880df31411d8ec0872))


### Dependencies

* update dependency @sapphire/plugin-subcommands to v7 ([#1429](https://github.com/eoeo-org/pow/issues/1429)) ([61a5301](https://github.com/eoeo-org/pow/commit/61a53018c4f11a3dcc6350dfac6a41fb6af9949b))
* update dependency debug to v4.3.7 ([#1417](https://github.com/eoeo-org/pow/issues/1417)) ([f00de1d](https://github.com/eoeo-org/pow/commit/f00de1d3ecc6564c0ece1953b8e52c2ad4bc9b53))
* update dependency discord-emoji to v2.5.1 ([#1424](https://github.com/eoeo-org/pow/issues/1424)) ([75780c8](https://github.com/eoeo-org/pow/commit/75780c81414d0cd2126d1efbf148e602e2509e2d))
* update dependency discord.js to v14.16.3 ([#1425](https://github.com/eoeo-org/pow/issues/1425)) ([10cfa59](https://github.com/eoeo-org/pow/commit/10cfa5954f353f85cb5d815b175289878efec3c5))
* update dependency emoji-regex to v10.4.0 ([#1426](https://github.com/eoeo-org/pow/issues/1426)) ([d3763ab](https://github.com/eoeo-org/pow/commit/d3763abc505b278a21e79d8f2cc07b350ae27a06))
* update dependency mariadb to v3.3.2 ([#1418](https://github.com/eoeo-org/pow/issues/1418)) ([f8d5ec8](https://github.com/eoeo-org/pow/commit/f8d5ec88de714a82169cf563a1fc87f6df5a154d))
* update dependency node to v22.9.0 ([#1416](https://github.com/eoeo-org/pow/issues/1416)) ([a5f1816](https://github.com/eoeo-org/pow/commit/a5f18168ac65277ee1d7a4ce29870502055c4ee3))
* update dependency sodium-native to v4.2.0 ([#1427](https://github.com/eoeo-org/pow/issues/1427)) ([ccc0800](https://github.com/eoeo-org/pow/commit/ccc08005d6921cf0ef1ea811a4938093b0479cce))
* update dependency sodium-native to v4.2.1 ([#1440](https://github.com/eoeo-org/pow/issues/1440)) ([64ebee5](https://github.com/eoeo-org/pow/commit/64ebee52a226c3d3b2dbce7ded59a3c27b0f6301))
* update prisma monorepo to v5.20.0 ([#1402](https://github.com/eoeo-org/pow/issues/1402)) ([4d1b1bd](https://github.com/eoeo-org/pow/commit/4d1b1bd64ac3582eda1cb7e409464e7c63161626))


### Reverts

* "fix: import from .prisma/client" ([#1441](https://github.com/eoeo-org/pow/issues/1441)) ([27ce17b](https://github.com/eoeo-org/pow/commit/27ce17b6907f267bb1e9ef2b7e4c437103369f6d))

## [3.12.0](https://github.com/eoeo-org/pow/compare/v3.11.0...v3.12.0) (2024-07-30)


### Features

* prevent timeout in command response ([#984](https://github.com/eoeo-org/pow/issues/984)) ([bf28075](https://github.com/eoeo-org/pow/commit/bf280752cfdcf59ad172db24ea14b5254ead86ff))

## [3.11.0](https://github.com/eoeo-org/pow/compare/v3.10.8...v3.11.0) (2024-07-29)


### Features

* **db:** move to prisma ([#1367](https://github.com/eoeo-org/pow/issues/1367)) ([46da125](https://github.com/eoeo-org/pow/commit/46da1250c3ea8d4e4336f8d85f282181debd5ad8))


### Dependencies

* change prisma to devDependencies ([#1385](https://github.com/eoeo-org/pow/issues/1385)) ([f180dff](https://github.com/eoeo-org/pow/commit/f180dff240d79c1936ac81fc734c0b28b3411273))
* update dependency debug to v4.3.6 ([#1383](https://github.com/eoeo-org/pow/issues/1383)) ([12b3635](https://github.com/eoeo-org/pow/commit/12b3635cbd4fb204087a3800dd58272a0059b42c))

## [3.10.8](https://github.com/eoeo-org/pow/compare/v3.10.7...v3.10.8) (2024-07-20)


### Bug Fixes

* runs even if WORKER_TOKENS is empty ([#1363](https://github.com/eoeo-org/pow/issues/1363)) ([bdbfeaf](https://github.com/eoeo-org/pow/commit/bdbfeaf96546ef81152fb393b37fb140a8a41a70))


### Dependencies

* update dependency node to v22.5.1 ([#1361](https://github.com/eoeo-org/pow/issues/1361)) ([655ed82](https://github.com/eoeo-org/pow/commit/655ed8249ce53b481744302ea777d693df40fd59))

## [3.10.7](https://github.com/eoeo-org/pow/compare/v3.10.6...v3.10.7) (2024-07-18)


### Dependencies

* update dependency node to v22.5.0 ([#1354](https://github.com/eoeo-org/pow/issues/1354)) ([3593415](https://github.com/eoeo-org/pow/commit/3593415f196b46b411e10c16a8daf905c3f5d7c9))

## [3.10.6](https://github.com/eoeo-org/pow/compare/v3.10.5...v3.10.6) (2024-07-10)


### Dependencies

* update dependency node to v22.4.1 ([#1345](https://github.com/eoeo-org/pow/issues/1345)) ([f939171](https://github.com/eoeo-org/pow/commit/f939171cbd99cab6a39fa332d9d01e6acf8e5517))

## [3.10.5](https://github.com/j-eoeo/pow/compare/v3.10.4...v3.10.5) (2024-07-02)


### Dependencies

* update dependency node to v22.4.0 ([#1327](https://github.com/j-eoeo/pow/issues/1327)) ([1c0672f](https://github.com/j-eoeo/pow/commit/1c0672f4aaf12aa3a32f35ffd4e04a3886fe5d37))

## [3.10.4](https://github.com/j-eoeo/pow/compare/v3.10.3...v3.10.4) (2024-06-11)


### Dependencies

* update dependency node to v22.3.0 ([#1288](https://github.com/j-eoeo/pow/issues/1288)) ([a2c19c1](https://github.com/j-eoeo/pow/commit/a2c19c1b16679936be6e15469951e9fa179edab0))

## [3.10.3](https://github.com/j-eoeo/pow/compare/v3.10.2...v3.10.3) (2024-06-10)


### Dependencies

* update dependency mariadb to v3.3.1 ([#1268](https://github.com/j-eoeo/pow/issues/1268)) ([cc1f3f6](https://github.com/j-eoeo/pow/commit/cc1f3f6d53272258c94e82051144af031da2d1ef))

## [3.10.2](https://github.com/j-eoeo/pow/compare/v3.10.1...v3.10.2) (2024-06-03)


### Dependencies

* update dependency discord.js to v14.15.3 ([#1259](https://github.com/j-eoeo/pow/issues/1259)) ([91b1f13](https://github.com/j-eoeo/pow/commit/91b1f13919260c786138ee7da334854d1b82f963))

## [3.10.1](https://github.com/j-eoeo/pow/compare/v3.10.0...v3.10.1) (2024-06-01)


### Dependencies

* update dependency debug to v4.3.5 ([#1256](https://github.com/j-eoeo/pow/issues/1256)) ([8791b6c](https://github.com/j-eoeo/pow/commit/8791b6cfc95d55c70c027fe9cf9e679387747616))

## [3.10.0](https://github.com/j-eoeo/pow/compare/v3.9.1...v3.10.0) (2024-05-25)


### Features

* Add relativetime for timestamp ([#1247](https://github.com/j-eoeo/pow/issues/1247)) ([ded6c3e](https://github.com/j-eoeo/pow/commit/ded6c3e3d7b6762ea7a3462463ec98c0bc864ef7)), closes [#1246](https://github.com/j-eoeo/pow/issues/1246)

## [3.9.1](https://github.com/j-eoeo/pow/compare/v3.9.0...v3.9.1) (2024-05-25)


### Bug Fixes

* update dateStyle to 'long' in contentConverter.ts ([#1244](https://github.com/j-eoeo/pow/issues/1244)) ([77dfd48](https://github.com/j-eoeo/pow/commit/77dfd48a620b62723830ce36ef46e83a24bc670f)), closes [#1242](https://github.com/j-eoeo/pow/issues/1242)

## [3.9.0](https://github.com/j-eoeo/pow/compare/v3.8.13...v3.9.0) (2024-05-24)


### Features

* add parseTimestamp ([#1240](https://github.com/j-eoeo/pow/issues/1240)) ([481f9e8](https://github.com/j-eoeo/pow/commit/481f9e8a5729261fdd803ee775d2f1367b3fdb45)), closes [#985](https://github.com/j-eoeo/pow/issues/985)

## [3.8.13](https://github.com/j-eoeo/pow/compare/v3.8.12...v3.8.13) (2024-05-15)


### Dependencies

* update dependency node to v22.2.0 ([#1229](https://github.com/j-eoeo/pow/issues/1229)) ([94e77f7](https://github.com/j-eoeo/pow/commit/94e77f71d2b3b6ff0c8c5a3f9f7565eb365c0a37))

## [3.8.12](https://github.com/j-eoeo/pow/compare/v3.8.11...v3.8.12) (2024-05-07)


### Dependencies

* update dependency @sapphire/framework to v5.2.1 ([#1212](https://github.com/j-eoeo/pow/issues/1212)) ([2902ac1](https://github.com/j-eoeo/pow/commit/2902ac16d82988c4fca07a888f2d3402f470a73d))

## [3.8.11](https://github.com/j-eoeo/pow/compare/v3.8.10...v3.8.11) (2024-05-06)


### Dependencies

* update dependency discord.js to v14.15.2 ([#1206](https://github.com/j-eoeo/pow/issues/1206)) ([c466372](https://github.com/j-eoeo/pow/commit/c4663722188bec5a15b30a55d0ae875acbda1a94))

## [3.8.10](https://github.com/j-eoeo/pow/compare/v3.8.9...v3.8.10) (2024-05-05)


### Dependencies

* update dependency @discordjs/voice to v0.17.0 ([#1205](https://github.com/j-eoeo/pow/issues/1205)) ([d3cbe27](https://github.com/j-eoeo/pow/commit/d3cbe2765ec030f38ec909cdcf7321d7643673d8))

## [3.8.9](https://github.com/j-eoeo/pow/compare/v3.8.8...v3.8.9) (2024-05-03)


### Dependencies

* update dependency @sapphire/framework to v5.2.0 ([#1203](https://github.com/j-eoeo/pow/issues/1203)) ([eb8d18d](https://github.com/j-eoeo/pow/commit/eb8d18df799e8db1fcd0c9c4b4cf1e71b9b6bd2d))
* update dependency node to v22.1.0 ([#1202](https://github.com/j-eoeo/pow/issues/1202)) ([4ffa662](https://github.com/j-eoeo/pow/commit/4ffa66287f93a75b08d6cec6c5f5209de0b864f0))

## [3.8.8](https://github.com/j-eoeo/pow/compare/v3.8.7...v3.8.8) (2024-04-27)


### Dependencies

* update dependency node to v22.0.0 ([#1195](https://github.com/j-eoeo/pow/issues/1195)) ([cee965b](https://github.com/j-eoeo/pow/commit/cee965bd4e219397e7ad6358ddce9147cb87b656))

## [3.8.7](https://github.com/j-eoeo/pow/compare/v3.8.6...v3.8.7) (2024-04-21)


### Reverts

* "chore(deps): update dependency eslint to v9" ([#1162](https://github.com/j-eoeo/pow/issues/1162)) ([600b332](https://github.com/j-eoeo/pow/commit/600b3323629d75f68b1d7fa2495eecbfc8c02b3e))

## [3.8.6](https://github.com/j-eoeo/pow/compare/v3.8.5...v3.8.6) (2024-04-10)


### Dependencies

* update dependency @sapphire/framework to v5.1.0 ([#1148](https://github.com/j-eoeo/pow/issues/1148)) ([4b92d4e](https://github.com/j-eoeo/pow/commit/4b92d4e9f3502c547b7ef1dda93d382530c56e92))
* update dependency node to v21.7.3 ([#1161](https://github.com/j-eoeo/pow/issues/1161)) ([aabf869](https://github.com/j-eoeo/pow/commit/aabf869ea361b60a97d1784afefcab88fc589380))

## [3.8.5](https://github.com/j-eoeo/pow/compare/v3.8.4...v3.8.5) (2024-04-04)


### Dependencies

* update dependency node to v21.7.2 ([#1133](https://github.com/j-eoeo/pow/issues/1133)) ([c683a1d](https://github.com/j-eoeo/pow/commit/c683a1d3ce5904bb82010b37b146f8701f2fe6d8))

## [3.8.4](https://github.com/j-eoeo/pow/compare/v3.8.3...v3.8.4) (2024-03-27)


### Bug Fixes

* www を読まないようにする ([#1109](https://github.com/j-eoeo/pow/issues/1109)) ([01b42da](https://github.com/j-eoeo/pow/commit/01b42daef027001eeb429ea18b899ac4e09f8f5d))

## [3.8.3](https://github.com/j-eoeo/pow/compare/v3.8.2...v3.8.3) (2024-03-27)


### Bug Fixes

* http でもドメイン名を読み上げるようにする ([#1107](https://github.com/j-eoeo/pow/issues/1107)) ([05d917b](https://github.com/j-eoeo/pow/commit/05d917b93a8211145c7bb0e36da3bd00bac888b8))


### Dependencies

* update dependency @sapphire/framework to v5.0.10 ([#1098](https://github.com/j-eoeo/pow/issues/1098)) ([785dceb](https://github.com/j-eoeo/pow/commit/785dceb1c768d018b36f71a993b8fe177c451aeb))
* update dependency mariadb to v3.3.0 ([#1095](https://github.com/j-eoeo/pow/issues/1095)) ([bf235ee](https://github.com/j-eoeo/pow/commit/bf235ee7abef7085e8c31ab74f024faca0b820a4))
* update dependency sodium-native to v4.1.0 ([#1096](https://github.com/j-eoeo/pow/issues/1096)) ([87e1d8a](https://github.com/j-eoeo/pow/commit/87e1d8ae5360e3ad7c1b585f7f1af5edd419b784))
* update dependency sodium-native to v4.1.1 ([#1097](https://github.com/j-eoeo/pow/issues/1097)) ([faaaddb](https://github.com/j-eoeo/pow/commit/faaaddba6939a6ae6a58d8ff9b0530078840db60))

## [3.8.2](https://github.com/j-eoeo/pow/compare/v3.8.1...v3.8.2) (2024-03-12)


### Dependencies

* update dependency node to v21.7.1 ([#1073](https://github.com/j-eoeo/pow/issues/1073)) ([b769dbf](https://github.com/j-eoeo/pow/commit/b769dbfe2ffbd1260a0e03800185e89c2619a175))
* update dependency sodium-native to v4.0.10 ([#1046](https://github.com/j-eoeo/pow/issues/1046)) ([14de140](https://github.com/j-eoeo/pow/commit/14de140214fcf97cb338f2e8ee5577fb8c03c29f))
* update dependency sodium-native to v4.0.6 ([#988](https://github.com/j-eoeo/pow/issues/988)) ([0a4ccf6](https://github.com/j-eoeo/pow/commit/0a4ccf6d665a49b22f31fe039f6341bcf4d83a4c))
* update dependency sodium-native to v4.0.7 ([#1019](https://github.com/j-eoeo/pow/issues/1019)) ([bac6940](https://github.com/j-eoeo/pow/commit/bac69402eae75d1b7bdb1a9d6bfb91e8f04ab003))
* update dependency sodium-native to v4.0.8 ([#1025](https://github.com/j-eoeo/pow/issues/1025)) ([596ff35](https://github.com/j-eoeo/pow/commit/596ff35595f3fe430d4c1858297933e1d5255167))
* update dependency sodium-native to v4.0.9 ([#1042](https://github.com/j-eoeo/pow/issues/1042)) ([6294a5a](https://github.com/j-eoeo/pow/commit/6294a5a1e92cf06cca1caefad8c2744d83ade58a))

## [3.8.1](https://github.com/j-eoeo/pow/compare/v3.8.0...v3.8.1) (2024-01-21)


### Bug Fixes

* handle case where no reply message exists ([#975](https://github.com/j-eoeo/pow/issues/975)) ([3d19457](https://github.com/j-eoeo/pow/commit/3d19457ca9607672d46432555cc4b009c41e36b6))

## [3.8.0](https://github.com/j-eoeo/pow/compare/v3.7.11...v3.8.0) (2024-01-21)


### Features

* URL の正規表現を変更してあらゆる URL に対応する ([#972](https://github.com/j-eoeo/pow/issues/972)) ([6ba0c33](https://github.com/j-eoeo/pow/commit/6ba0c333fe91e3bcd502391283121edc0f991aa9))


### Bug Fixes

* **deps:** update dependency @sapphire/framework to v5.0.7 ([#968](https://github.com/j-eoeo/pow/issues/968)) ([e65c2aa](https://github.com/j-eoeo/pow/commit/e65c2aa5f4ea30c826ff4c92168f4a39cf1f616c))
* **deps:** update dependency @sapphire/plugin-subcommands to v6.0.3 ([#969](https://github.com/j-eoeo/pow/issues/969)) ([575ae43](https://github.com/j-eoeo/pow/commit/575ae43667434ffe5d184d3567f48e7b87a1912d))

## [3.7.11](https://github.com/kazukazu123123/pow/compare/v3.7.10...v3.7.11) (2024-01-12)


### Bug Fixes

* **deps:** update dependency @sapphire/framework to v5.0.6 ([#953](https://github.com/kazukazu123123/pow/issues/953)) ([40f47d1](https://github.com/kazukazu123123/pow/commit/40f47d116758b6b33774db6897638a14c607dd46))
* **deps:** update dependency sodium-native to v4.0.5 ([#954](https://github.com/kazukazu123123/pow/issues/954)) ([1982b8a](https://github.com/kazukazu123123/pow/commit/1982b8acc87a569eafec82c1b15be92a788bdf13))

## [3.7.10](https://github.com/kazukazu123123/pow/compare/v3.7.9...v3.7.10) (2024-01-01)


### Bug Fixes

* **deps:** update dependency @sapphire/plugin-subcommands to v6.0.2 ([#942](https://github.com/kazukazu123123/pow/issues/942)) ([13b3f42](https://github.com/kazukazu123123/pow/commit/13b3f428335892a0d642c8c17bc8e9c342ff08d6))

## [3.7.9](https://github.com/kazukazu123123/pow/compare/v3.7.8...v3.7.9) (2023-12-28)


### Bug Fixes

* **deps:** update dependency @sapphire/framework to v5.0.5 ([#940](https://github.com/kazukazu123123/pow/issues/940)) ([673c914](https://github.com/kazukazu123123/pow/commit/673c91430cda455201a1caacfefb10221480ae35))

## [3.7.8](https://github.com/kazukazu123123/pow/compare/v3.7.7...v3.7.8) (2023-12-19)


### Bug Fixes

* **deps:** update dependency discord-emoji to v2.4.0 ([#931](https://github.com/kazukazu123123/pow/issues/931)) ([21a620c](https://github.com/kazukazu123123/pow/commit/21a620cb272fca72c30e67decc734e93a2651f12))
* **deps:** update dependency mariadb to v3.2.3 ([#935](https://github.com/kazukazu123123/pow/issues/935)) ([cd74b05](https://github.com/kazukazu123123/pow/commit/cd74b052e4509714c691f46504d4e2e20a618410))

## [3.7.7](https://github.com/kazukazu123123/pow/compare/v3.7.6...v3.7.7) (2023-12-11)


### Bug Fixes

* **deps:** update dependency @sapphire/framework to v4.8.4 ([#907](https://github.com/kazukazu123123/pow/issues/907)) ([df93042](https://github.com/kazukazu123123/pow/commit/df930427269fc183e14bdbcd52ffaf7296f86830))
* **deps:** update dependency @sapphire/framework to v4.8.5 ([#909](https://github.com/kazukazu123123/pow/issues/909)) ([1cfb8fa](https://github.com/kazukazu123123/pow/commit/1cfb8fa4c01b93f0d8e8c6b62d67f1f9dae1850f))
* **deps:** update dependency @sapphire/framework to v5 ([#912](https://github.com/kazukazu123123/pow/issues/912)) ([49261b9](https://github.com/kazukazu123123/pow/commit/49261b993c4ddb20b5f460a82711bee4169f3c2c))
* **deps:** update dependency @sapphire/framework to v5.0.4 ([#921](https://github.com/kazukazu123123/pow/issues/921)) ([3108dc4](https://github.com/kazukazu123123/pow/commit/3108dc4dade31cf38fbdf904c2eee71441da0ec6))
* **deps:** update dependency @sapphire/plugin-subcommands to v6 ([#914](https://github.com/kazukazu123123/pow/issues/914)) ([3714115](https://github.com/kazukazu123123/pow/commit/371411551e00cad33962e2cd3098cc061fba6482))

## [3.7.6](https://github.com/kazukazu123123/pow/compare/v3.7.5...v3.7.6) (2023-12-02)


### Bug Fixes

* **deps:** update dependency @sapphire/framework to v4.8.3 ([#904](https://github.com/kazukazu123123/pow/issues/904)) ([d2d9c6c](https://github.com/kazukazu123123/pow/commit/d2d9c6c511669f9464ab51c6d554dbb615fe2cf8))

## [3.7.5](https://github.com/kazukazu123123/pow/compare/v3.7.4...v3.7.5) (2023-11-17)


### Bug Fixes

* **deps:** update dependency @sapphire/framework to v4.8.2 ([#887](https://github.com/kazukazu123123/pow/issues/887)) ([2091198](https://github.com/kazukazu123123/pow/commit/20911982727a06c4d89c9787e05c8e17136810f5))
* **deps:** update dependency @sapphire/plugin-subcommands to v5.1.0 ([#888](https://github.com/kazukazu123123/pow/issues/888)) ([f2ee6a8](https://github.com/kazukazu123123/pow/commit/f2ee6a80f75b354d4fbfc3919b78ac2f61489b12))

## [3.7.4](https://github.com/kazukazu123123/pow/compare/v3.7.3...v3.7.4) (2023-11-15)


### Bug Fixes

* **deps:** update dependency @discordjs/voice to v0.16.1 ([#878](https://github.com/kazukazu123123/pow/issues/878)) ([eb0d4f1](https://github.com/kazukazu123123/pow/commit/eb0d4f1671a537d4d63e1671b12d3352a06879b4))
* **deps:** update dependency discord.js to v14.14.1 ([#879](https://github.com/kazukazu123123/pow/issues/879)) ([4c1ce6f](https://github.com/kazukazu123123/pow/commit/4c1ce6f38a02801b5bce3a820224069a60e2471c))

## [3.7.3](https://github.com/kazukazu123123/pow/compare/v3.7.2...v3.7.3) (2023-10-29)


### Bug Fixes

* **deps:** update dependency @sapphire/framework to v4.7.2 ([#854](https://github.com/kazukazu123123/pow/issues/854)) ([2bf514a](https://github.com/kazukazu123123/pow/commit/2bf514a2bcb2ccc6e3ad39bcc89a05a5760cbe8a))
* **deps:** update dependency @sapphire/plugin-subcommands to v4.3.0 ([#855](https://github.com/kazukazu123123/pow/issues/855)) ([91d8018](https://github.com/kazukazu123123/pow/commit/91d8018a63b9e5947c90467d44ca108307581b30))
* **deps:** update dependency @sapphire/plugin-subcommands to v5 ([#859](https://github.com/kazukazu123123/pow/issues/859)) ([453a8d7](https://github.com/kazukazu123123/pow/commit/453a8d7c02152280b57b212805c0d5b00b0599ab))


### Performance Improvements

* **deps:** change to sodium-native ([#868](https://github.com/kazukazu123123/pow/issues/868)) ([d02c3e9](https://github.com/kazukazu123123/pow/commit/d02c3e90e2f983a30a648d2750a1f70e84e62c3d))

## [3.7.2](https://github.com/kazukazu123123/pow/compare/v3.7.1...v3.7.2) (2023-10-17)


### Bug Fixes

* **deps:** update dependency @sapphire/framework to v4.7.1 ([#845](https://github.com/kazukazu123123/pow/issues/845)) ([e1f0795](https://github.com/kazukazu123123/pow/commit/e1f0795a2fdcff30c2a7da7af2fd9583d443b990))
* **deps:** update dependency @sapphire/plugin-subcommands to v4.2.2 ([#846](https://github.com/kazukazu123123/pow/issues/846)) ([e17c8a9](https://github.com/kazukazu123123/pow/commit/e17c8a9855f1d174251ba3a6f079e5c4b91a7624))
* **deps:** update dependency emoji-regex to v10.3.0 ([#849](https://github.com/kazukazu123123/pow/issues/849)) ([24a1381](https://github.com/kazukazu123123/pow/commit/24a1381332029efee2956a82fb3cab5edb4a7b47))
* **deps:** update dependency mariadb to v3.2.2 ([#847](https://github.com/kazukazu123123/pow/issues/847)) ([6206cf6](https://github.com/kazukazu123123/pow/commit/6206cf6a61257ed017562bee457b977853b3a007))

## [3.7.1](https://github.com/kazukazu123123/pow/compare/v3.7.0...v3.7.1) (2023-10-15)


### Bug Fixes

* **deps:** update dependency @sapphire/framework to v4.7.0 ([#841](https://github.com/kazukazu123123/pow/issues/841)) ([8f4861d](https://github.com/kazukazu123123/pow/commit/8f4861d12f44dc97e966243a3d4b0106bb69daef))

## [3.7.0](https://github.com/kazukazu123123/pow/compare/v3.6.2...v3.7.0) (2023-10-15)


### Features

* 「プレイ中」表記がない presence にする ([#838](https://github.com/kazukazu123123/pow/issues/838)) ([4400f87](https://github.com/kazukazu123123/pow/commit/4400f87bdfb37abda5d2cef7d2a1636de1531425))

## [3.6.2](https://github.com/kazukazu123123/pow/compare/v3.6.1...v3.6.2) (2023-10-14)


### Bug Fixes

* エラーの握りつぶしをやめる ([#833](https://github.com/kazukazu123123/pow/issues/833)) ([03db19a](https://github.com/kazukazu123123/pow/commit/03db19a1c068191feff0982e5ac3291fa5df206a))

## [3.6.1](https://github.com/kazukazu123123/pow/compare/v3.6.0...v3.6.1) (2023-10-07)


### Bug Fixes

* **deps:** update dependency @sapphire/framework to v4.6.1 ([#824](https://github.com/kazukazu123123/pow/issues/824)) ([49b39c9](https://github.com/kazukazu123123/pow/commit/49b39c9a4fc8ad5e4649323cb8dde9f7f5487713))

## [3.6.0](https://github.com/kazukazu123123/pow/compare/v3.5.2...v3.6.0) (2023-09-28)


### Features

* エラーを console に書き出すように ([#815](https://github.com/kazukazu123123/pow/issues/815)) ([326759a](https://github.com/kazukazu123123/pow/commit/326759a1c015714110668a6c1f5801007d50073e))

## [3.5.2](https://github.com/kazukazu123123/pow/compare/v3.5.1...v3.5.2) (2023-09-25)


### Bug Fixes

* 退出メッセージの送信先チャンネルがない時にエラーをスローしないように修正 ([#808](https://github.com/kazukazu123123/pow/issues/808)) ([9b9bed7](https://github.com/kazukazu123123/pow/commit/9b9bed77157a6aea2865ed5ad46bc63e711ba8a5))

## [3.5.1](https://github.com/kazukazu123123/pow/compare/v3.5.0...v3.5.1) (2023-09-21)


### Bug Fixes

* メッセージによる join に失敗した時に落ちないように修正 ([#802](https://github.com/kazukazu123123/pow/issues/802)) ([42c21b2](https://github.com/kazukazu123123/pow/commit/42c21b23fef419d4567f019901050cf2269484f8))

## [3.5.0](https://github.com/kazukazu123123/pow/compare/v3.4.0...v3.5.0) (2023-09-20)


### Features

* 再起動後に再参加する機能を追加 ([#801](https://github.com/kazukazu123123/pow/issues/801)) ([597d340](https://github.com/kazukazu123123/pow/commit/597d340e1549519073f88b5132027a643655609d))


### Performance Improvements

* idベースの管理にする ([#798](https://github.com/kazukazu123123/pow/issues/798)) ([30054cf](https://github.com/kazukazu123123/pow/commit/30054cfd9c62fdacf89bb75c1f1a5851eae29a2a))
* idベースの管理にする2 ([#800](https://github.com/kazukazu123123/pow/issues/800)) ([9ecc3b5](https://github.com/kazukazu123123/pow/commit/9ecc3b53ec0a17b551d5dabb4cf8defd28c724e2))

## [3.4.0](https://github.com/kazukazu123123/pow/compare/v3.3.0...v3.4.0) (2023-09-17)


### Features

* leave 時に必ず readChannel へメッセージを送信する ([#789](https://github.com/kazukazu123123/pow/issues/789)) ([bb71877](https://github.com/kazukazu123123/pow/commit/bb71877753fea3001c330c3535e2d1d922e6c43a))


### Bug Fixes

* **commands:** /reset コマンドで GuildContext をリセットするように修正 ([#786](https://github.com/kazukazu123123/pow/issues/786)) ([888ca79](https://github.com/kazukazu123123/pow/commit/888ca797b1671c39b9eedc7f6e1b61de14c900b1))
* **db:** return 位置修正 ([#792](https://github.com/kazukazu123123/pow/issues/792)) ([d3e4f87](https://github.com/kazukazu123123/pow/commit/d3e4f8762ca9f80d93a5e884f0259d3c5cab9625))
* **deps:** update dependency libsodium-wrappers to v0.7.13 ([#788](https://github.com/kazukazu123123/pow/issues/788)) ([e586592](https://github.com/kazukazu123123/pow/commit/e58659222aac3e70ed307fe4212fc82b3e152b5e))
* **deps:** update dependency mariadb to v3.2.1 ([#790](https://github.com/kazukazu123123/pow/issues/790)) ([b32f48d](https://github.com/kazukazu123123/pow/commit/b32f48dff105f6a4b5d5595a922d1123a9f296cb))


### Performance Improvements

* **db:** query 減らす ([#793](https://github.com/kazukazu123123/pow/issues/793)) ([3603a71](https://github.com/kazukazu123123/pow/commit/3603a71397e8711066091272d48a85ec4e187010))

## [3.3.0](https://github.com/kazukazu123123/pow/compare/v3.2.5...v3.3.0) (2023-09-13)


### Features

* ユーザー設定をキャッシュするようにする ([#783](https://github.com/kazukazu123123/pow/issues/783)) ([22e0636](https://github.com/kazukazu123123/pow/commit/22e0636c1ed8fd418b06ba1aa6b50405afd45f75))

## [3.2.5](https://github.com/kazukazu123123/pow/compare/v3.2.4...v3.2.5) (2023-09-13)


### Bug Fixes

* **db:** DBエラーのメッセージを修正 ([#781](https://github.com/kazukazu123123/pow/issues/781)) ([04d98f3](https://github.com/kazukazu123123/pow/commit/04d98f31f45efe689692d99ed899fb14d9ebc398))

## [3.2.4](https://github.com/kazukazu123123/pow/compare/v3.2.3...v3.2.4) (2023-09-09)


### Bug Fixes

* **db:** SQLインジェクション対策 ([#771](https://github.com/kazukazu123123/pow/issues/771)) ([1b38bec](https://github.com/kazukazu123123/pow/commit/1b38becc0eb411db8c73866d9d65000a9be78108))

## [3.2.3](https://github.com/kazukazu123123/pow/compare/v3.2.2...v3.2.3) (2023-09-09)


### Bug Fixes

* **commands:** voice コマンドで落ちるのを修正 ([#768](https://github.com/kazukazu123123/pow/issues/768)) ([f51b8a4](https://github.com/kazukazu123123/pow/commit/f51b8a4550e7db2eda0416b31bcbdcca03fdd468))


### Performance Improvements

* add compress option to db connection ([#766](https://github.com/kazukazu123123/pow/issues/766)) ([56c89ba](https://github.com/kazukazu123123/pow/commit/56c89ba9f5686b1321c77c46ca5505ac136d5f80))

## [3.2.2](https://github.com/kazukazu123123/pow/compare/v3.2.1...v3.2.2) (2023-09-07)


### Bug Fixes

* **deps:** update dependency @sapphire/framework to v4.6.0 ([#761](https://github.com/kazukazu123123/pow/issues/761)) ([07696b1](https://github.com/kazukazu123123/pow/commit/07696b1a26504e470d3a7f8af962d7457fafdcc1))

## [3.2.1](https://github.com/kazukazu123123/pow/compare/v3.2.0...v3.2.1) (2023-09-02)


### Bug Fixes

* **commands:** join コマンドのエラー処理を修正 ([#755](https://github.com/kazukazu123123/pow/issues/755)) ([9bc93fb](https://github.com/kazukazu123123/pow/commit/9bc93fbc77d5616ac202f9ddec8c17cf813133bb)), closes [#754](https://github.com/kazukazu123123/pow/issues/754)

## [3.2.0](https://github.com/kazukazu123123/pow/compare/v3.1.4...v3.2.0) (2023-09-01)


### Features

* **commands:** `/read` に声設定のオプションを追加 ([#750](https://github.com/kazukazu123123/pow/issues/750)) ([c59aed8](https://github.com/kazukazu123123/pow/commit/c59aed857cf8b59e0d8df32f1fee6e0e449d2e9c)), closes [#9](https://github.com/kazukazu123123/pow/issues/9)

## [3.1.4](https://github.com/kazukazu123123/pow/compare/v3.1.3...v3.1.4) (2023-08-31)


### Miscellaneous Chores

* release 3.1.4 ([#746](https://github.com/kazukazu123123/pow/issues/746)) ([88e1a8c](https://github.com/kazukazu123123/pow/commit/88e1a8c74611cf337ac8e7618e062aaee69638cc))

## [3.1.3](https://github.com/kazukazu123123/pow/compare/v3.1.2...v3.1.3) (2023-08-31)


### Bug Fixes

* add handle db errors ([#743](https://github.com/kazukazu123123/pow/issues/743)) ([b3e9ba6](https://github.com/kazukazu123123/pow/commit/b3e9ba63dd082ba996ef1fe6998e6fcff31988f1))
* **deps:** update dependency @sapphire/plugin-subcommands to v4.2.1 ([#737](https://github.com/kazukazu123123/pow/issues/737)) ([9ab4793](https://github.com/kazukazu123123/pow/commit/9ab4793e9bd6705019b30521a1fcf909c9d5fc9b))
* **refactor:** エラー処理を修正 ([#739](https://github.com/kazukazu123123/pow/issues/739)) ([a3e3621](https://github.com/kazukazu123123/pow/commit/a3e36219a7cb049699432bb316764334be379f2f))

## [3.1.2](https://github.com/kazukazu123123/pow/compare/v3.1.1...v3.1.2) (2023-08-27)


### Bug Fixes

* **commands:** Fix error message ([#731](https://github.com/kazukazu123123/pow/issues/731)) ([5ee752b](https://github.com/kazukazu123123/pow/commit/5ee752b616f13d6a97b5bb05c907b617067c8236))

## [3.1.1](https://github.com/kazukazu123123/pow/compare/v3.1.0...v3.1.1) (2023-08-27)


### Bug Fixes

* **commands:** rejoin コマンドを修正 ([#728](https://github.com/kazukazu123123/pow/issues/728)) ([306ddf8](https://github.com/kazukazu123123/pow/commit/306ddf8f18f67abb87bc88e4de2a6f3d2b009a47))

## [3.1.0](https://github.com/kazukazu123123/pow/compare/v3.0.1...v3.1.0) (2023-08-25)


### Features

* **command:** Add /rejoin command. ([#715](https://github.com/kazukazu123123/pow/issues/715)) ([1aac74b](https://github.com/kazukazu123123/pow/commit/1aac74bf2b88110d16576a87fadbda3d4615b3a3))


### Bug Fixes

* **commands:** add command validations ([#722](https://github.com/kazukazu123123/pow/issues/722)) ([881db8a](https://github.com/kazukazu123123/pow/commit/881db8a7bc5d24113036bce7f22eddbe3ce61e40))

## [3.0.1](https://github.com/kazukazu123123/pow/compare/v3.0.0...v3.0.1) (2023-08-24)


### Bug Fixes

* **commands:** help の返答メッセージを修正 ([#710](https://github.com/kazukazu123123/pow/issues/710)) ([9670fac](https://github.com/kazukazu123123/pow/commit/9670fac23c8f84462accac682c61778748de6c6e))
* **deps:** update dependency @sapphire/framework to v4.5.2 ([#700](https://github.com/kazukazu123123/pow/issues/700)) ([2786c34](https://github.com/kazukazu123123/pow/commit/2786c346993b1472b8624ad35f6a547a5dcb03e4))
* **deps:** update dependency @sapphire/framework to v4.5.3 ([#706](https://github.com/kazukazu123123/pow/issues/706)) ([0988321](https://github.com/kazukazu123123/pow/commit/0988321a769be31dde8d02b2604b43a513d8b6f4))
* **deps:** update dependency @sapphire/plugin-subcommands to v4.1.0 ([#701](https://github.com/kazukazu123123/pow/issues/701)) ([c8d517c](https://github.com/kazukazu123123/pow/commit/c8d517c4c7d26151f7602f3f73279c231d3acfdb))
* **deps:** update dependency @sapphire/plugin-subcommands to v4.2.0 ([#705](https://github.com/kazukazu123123/pow/issues/705)) ([b77a3d8](https://github.com/kazukazu123123/pow/commit/b77a3d82fc651074b5d76818acde0edd5eb6c47d))

## [3.0.0](https://github.com/kazukazu123123/pow/compare/v2.10.1...v3.0.0) (2023-08-21)


### ⚠ BREAKING CHANGES

* **commands:** `/readtoggle` を `/ttsmute` に置き換え ([#699](https://github.com/kazukazu123123/pow/issues/699))
* **commands:** `/user-settings` に移行しUXを向上 ([#692](https://github.com/kazukazu123123/pow/issues/692))

### Features

* **commands:** `/readtoggle` を `/ttsmute` に置き換え ([#699](https://github.com/kazukazu123123/pow/issues/699)) ([02626ce](https://github.com/kazukazu123123/pow/commit/02626ce1f6f7c4980860c8129aad1ed3ef3bab31))
* **commands:** `/user-settings` に移行しUXを向上 ([#692](https://github.com/kazukazu123123/pow/issues/692)) ([fcb440c](https://github.com/kazukazu123123/pow/commit/fcb440c9436807294a24ccc6fdf763a3d46d02d6))


### Bug Fixes

* **deps:** update dependency @discordjs/collection to v1.5.3 ([#695](https://github.com/kazukazu123123/pow/issues/695)) ([e40dd66](https://github.com/kazukazu123123/pow/commit/e40dd66fafe87bec6979ff5dd8ec8ab1b0618b26))
* **deps:** update dependency discord.js to v14.13.0 ([#696](https://github.com/kazukazu123123/pow/issues/696)) ([c3b1f9c](https://github.com/kazukazu123123/pow/commit/c3b1f9cb5196f65b74f95babc3477f3d6618e153))
* **deps:** update dependency ffmpeg-static to v5.2.0 ([#693](https://github.com/kazukazu123123/pow/issues/693)) ([e452a01](https://github.com/kazukazu123123/pow/commit/e452a01f03695e35dbd8d185d2a4bd6697f3ffdb))
* refactor ([#697](https://github.com/kazukazu123123/pow/issues/697)) ([47737de](https://github.com/kazukazu123123/pow/commit/47737de32a9ec21e56f505eb95493300ad8c3f6b))
