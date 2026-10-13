# Transcript

Every contribution to every circuit, in the order it was made. The circuit hash and the
contribution hashes are the Blake2b-512 values `snarkjs zkey verify` prints for the final
zkey, laid out the way it prints them. `bin/verify.sh` recomputes all of them and compares
them with [`circuits.json`](circuits.json), which holds the same data.

snarkjs shows the name the participant's client wrote into the contribution; where that
differs from the participant's name it is given next to it. "SHA-256 of zkey" is the hash
of the zkey file that participant uploaded; the last one of each circuit is that circuit's
final zkey.

## verifySingleWithdrawal_2_30

Circuit hash:

```
0d7fac70 b536cec4 ceab7ec0 35876469
f159ed80 31a2ad52 cbab94b3 da1452a6
d154fdf5 f8777f70 6e5289f1 81e4ff20
eb281136 0e16dd9f 6eb473ee bf00eece
```

### #1 Lukas

Submitted 2026-09-29 09:04:07 UTC. SHA-256 of zkey: `ce7e10ddd245763702d7ef9d239845d6ecbafb155a5163c14d905bf14259b7a4`

```
776e3f74 7d11feb3 620787f6 88e20d01
6cc57b68 48557590 3133bef0 ae086c5c
8e7e3ab0 e7d0d7c9 d7881aab ea9d7fed
b8ebdbbd 9b5115cf c277d01f 6b6f9f04
```

### #2 Tino

Submitted 2026-09-29 09:04:52 UTC. SHA-256 of zkey: `1e3f7606c3ccfaadd62a225417a87b86eb5bb9ea49e3981b4445856f96495bf6`

```
ae8df4fe fc024a85 0ad5381b 87494741
909c8fc7 6db5f7fc 0b61675d 3987f15f
0534d82e 5eafdfa5 7a15e778 3851dfcd
3735de74 402505d9 fa6f3684 196358a4
```

### #3 Qianchen (name in zkey: `q`)

Submitted 2026-09-29 09:06:20 UTC. SHA-256 of zkey: `f29215cc4da16891aa9a6f2cffba44964b997be10e07c93a1c22af7bc1ee5c5b`

```
e693558e 669a1326 f7460478 e26b4377
67a5fde9 53fdede7 a855f2c3 df96b3c0
4c537fad ea329e69 bda03ba2 f3746450
80df15c0 3498d92d c3995005 1e72475a
```

### #4 Lazar (name in zkey: `lazar`)

Submitted 2026-09-29 09:08:37 UTC. SHA-256 of zkey: `444ec48fa974559b37e1d668da715f143800f37c4b66798621f4d61597675e11`

```
6e1baa2b 85915eab 92241135 38c7ee57
09e42d46 b51a4d63 53abd683 b63c5b14
d2c1bb38 8e25eab6 cf0e9058 189e7afc
983ecae2 b9363283 f79ada9d 678896f9
```

### #5 Mihailo

Submitted 2026-09-29 09:10:45 UTC. SHA-256 of zkey: `26b37bf0f4c152605ff640684bac49d837c3d15e36b92f67032ac565931527be`

```
aee41577 d385596e 478a0a79 7dc5c98e
a0d0360d 2f30840d f752f4f9 85fd3d72
e7bbeaaa 66e4cc85 fe073013 0e500f35
68edeadd 4391a937 d2234223 b9280de9
```

### #6 Vanja

Submitted 2026-09-29 09:17:39 UTC. SHA-256 of zkey: `a241bb706a69de18a6c95d6b83fc06012adc2a0e3cb7ac8688fe0fdce603f564`

```
69b705ef 5fd438e0 750473b2 66841196
b0416404 a9cb44c4 615cc2f7 f858f5f5
05101d15 c6373492 ba53c9e0 e7d3151a
9bed6f43 cc13fb60 1826db0a fc061f1e
```

## verifySingleAggregation_2_3_30

Circuit hash:

```
0d829193 ffd90c4b b52d6658 8c9fd61d
db8801a3 8ddc5c6e 33d7db61 3cd228e6
2cb907f3 5a54cfc6 7b7af046 d0582089
a3e5c0b2 53f4193f d3078ae0 d4051b26
```

### #1 Lukas

Submitted 2026-09-29 09:04:12 UTC. SHA-256 of zkey: `e212050337180ceb164e17988cb43739161874a1ebdca41ccc486bdff3463c10`

```
911eeecc 6890f76f a22fd479 a90dadf0
f461bb0d d5e8d912 3e30f7a1 891b2977
c6ab34a7 66126c5f b683ff46 3069f22b
43619979 9defcd47 9b92d86e f3292832
```

### #2 Tino

Submitted 2026-09-29 09:05:01 UTC. SHA-256 of zkey: `1f87404b933f50528a9f5078218c0ae20c03cf0cccbe8dcf34bf6cb3f926bd4b`

```
dabd924c f436c2e0 f9800507 d457fa99
129b052f 491fb23d cf7f2410 1d69be5e
734ab246 9fdd0f24 1de19091 9c12effb
799896b9 93615a4a 09eee36f 99b60a8e
```

### #3 Qianchen (name in zkey: `q`)

Submitted 2026-09-29 09:06:31 UTC. SHA-256 of zkey: `80bb5721ece7045903bd20a1e484b9eea65633d9486eb276c5b859ff399ee067`

```
7b972bc3 263377d1 7810efb9 a4e0851b
39236854 49ee0ae7 a99db041 b808605d
ee83d29f 1428748b 5dfbf3ef 55137547
10adcb84 a08a67cf 017e514d 853511e7
```

### #4 Lazar (name in zkey: `lazar`)

Submitted 2026-09-29 09:09:13 UTC. SHA-256 of zkey: `5ea95bdc73852281dd54a340b868deb1cd07d44facee6ae181015106196dd969`

```
88475458 b2c9900d 26246c1e 5479e9f7
a50c8154 f6dd6377 8675cc06 43e8195d
13cf440a 5e3f1cc6 0b2d5f48 feace50c
4e79bb15 dcb795f3 e46384b2 0d002416
```

### #5 Mihailo

Submitted 2026-09-29 09:11:08 UTC. SHA-256 of zkey: `d85b7827c421c0763afd5f6dd81cebcb78a2255260b1be557895358553b4f5da`

```
bcf298fb 7957ee42 5ec2ffd9 d1179288
d2522561 8c659964 9e20d886 8a4a2f43
41357473 60ed8615 59432396 9fdd1749
65b1c372 bac57992 50354dda 9558cc76
```

### #6 Vanja

Submitted 2026-09-29 09:18:01 UTC. SHA-256 of zkey: `c4a15849fa57c19dd4fd43a63e60a4c902a6847310e95137b69aa895307182e6`

```
94b7344c c09ac326 4590de8b 684bc4fe
2128fd31 835956f5 f8734eaa 479fce34
2cba4fcb c73df833 4a3790d0 c44c4bda
64395e99 5c41b21d ba4e508e 77454bdb
```

## verifyPixAggregation_2_7_30

Circuit hash:

```
2db41905 f445d967 ebee98f9 1563aec8
167bf237 33756e35 3cf87fed f0cc497a
d839ee02 6d7c8fc5 794c39d8 a2e4b8dc
85ca8591 973ee5c6 975c6d68 0a038a0c
```

### #1 Lukas

Submitted 2026-09-29 09:04:21 UTC. SHA-256 of zkey: `ce3d82f8f7457d696dfc308a3e9a79ab115982387d647af19088465c930c5d21`

```
3be77ad5 0e6a7528 ba2b72a9 e1459bc4
2d3bd02e 7b35220c 30e11bf9 765b6454
5d1e8b4e aa6aa5a9 1d121e1a 8a4154e5
1406b322 1f047036 f573f2ac dcf2b236
```

### #2 Qianchen (name in zkey: `q`)

Submitted 2026-09-29 09:05:21 UTC. SHA-256 of zkey: `364b2dc83b72dac0b44d4eec2bc9a8c5b0202e18e86ff3f13c99a9b05c86398a`

```
2f3fa532 311dc28b 62f6a337 ef4cde27
b81d7c36 11747fb6 dc091e75 ce17b847
c1d2061b 0903552a 6c8180b0 cff09f84
9f93ea8c 0331f060 82e3a031 26956879
```

### #3 Tino

Submitted 2026-09-29 09:05:41 UTC. SHA-256 of zkey: `e19367de8ee7e9ec2905afa66bb02bedb1b2f7b7e10996cf316e28ef1573d2bc`

```
cacca452 8d2dc9bd a09c0c4d 58bffb2c
27be81b7 d2f19e25 7604e30f 0ede3885
484200f2 21f1ec48 2f889be9 cf9d641b
8e2c8418 52920fa1 5cb423f7 4898878a
```

### #4 Lazar (name in zkey: `lazar`)

Submitted 2026-09-29 09:09:33 UTC. SHA-256 of zkey: `c094197d6ca6192ba88add57f0eb14a72d322d265b32398043c6eb3570ed8e2e`

```
cb54520e 695edc17 d7f6d85f 227893a3
76bddb14 0e6ce6c8 3977135d b67b7bec
9ca41993 2fa1e524 c759afff 015a3da9
c0f936da 69f2af5f 3c732b19 4b49df70
```

### #5 Mihailo

Submitted 2026-09-29 09:12:28 UTC. SHA-256 of zkey: `85eb92b082eb7226af5dbb916662f88b7229a3e4c9586aa59c9c849ad8834ae6`

```
1753f00f 9c33d60c 6e4dd64e 7dabfd57
2cb569c8 f17667cb e827b77d 3f665573
0c523da7 a45b4b13 9c7391e4 d46e0977
543635fa a31189d9 3398acf9 2c6fc143
```

### #6 Vanja

Submitted 2026-09-29 09:18:32 UTC. SHA-256 of zkey: `79c6fd6a5eff0fe5688058dcdadd8f2b2b81a094e4c0ff1ac3c1b80aa8a17995`

```
8f54d1e2 630982af 783e1d7f b3358a71
753c5fa5 f8256b75 44db7a0d b8054787
ce14157c bca7c9b5 d11efb07 517c97b3
2bcc72d8 98cf6baf 9d422cdc 3b6c5332
```

## verifyPixAggregation_2_9_30

Circuit hash:

```
bbd348bb ca1f5e24 57a490d2 1359a51f
66be2c1d 362592c4 93e6275e 4b073025
8764a7a7 8a33dc13 afcf1bf5 f0cb7050
da611708 86749907 14b205a5 fb9fec68
```

### #1 Lukas

Submitted 2026-09-29 09:04:31 UTC. SHA-256 of zkey: `e35d0fd72af7bd517b58ff2f40e511734034602264358faee686218c5bc990ca`

```
6c1c03ce 4eb835e2 e9eb924c d36fb6d4
b2200b15 09c0a0d4 277652ac ada5333b
c747d4c2 47703ad3 b4d35480 fd8e4b2e
18e4cb04 2a541ed2 aacfb047 4f72f299
```

### #2 Tino

Submitted 2026-09-29 09:05:24 UTC. SHA-256 of zkey: `a57c8fa86dae4654e998869716cd882cc29b60b1ce412649a7573a3ccd0a33e3`

```
139d0d1e 878d3ac1 c82869e8 71ba93dd
64db841a d89a857c 28e9d11d fb8f7af6
5e81bd05 ddb1ce56 cc1a462e c32dcd19
90408edd 626fefe4 7e90427d e94ff38f
```

### #3 Qianchen (name in zkey: `q`)

Submitted 2026-09-29 09:07:20 UTC. SHA-256 of zkey: `d13e802406c3654ee1b47c17f7b933724a0d5f3524e4ea35a4222a9188880d7e`

```
1b7a64e4 217491da 81cbbd11 d00f921a
f059f1b4 896925f3 78b47f65 14916c1f
26eb202e fbc47d18 b9e1ad72 bdaaff63
e844e8bd c8fe24f6 a036bd04 8fc8f84d
```

### #4 Mihailo

Submitted 2026-09-29 09:10:18 UTC. SHA-256 of zkey: `1d9b2946405f9b942b850a463afa3796ff9af66ff69b44feea752a606fdbc69b`

```
b428cf7c 01160883 1b0b461f 5df5fe1f
0b54d1a3 23c54f5c 399df989 dfb201f4
bf2e3173 8eed6edb a0065f41 ab6afee5
3112f6cf 734d24e9 65b8b9b3 1d136737
```

### #5 Vanja

Submitted 2026-09-29 09:13:04 UTC. SHA-256 of zkey: `fd9201e9bf241bf6c6a75f5ae45e5ff3c01fc6acd82a93c04034c61445ca2b40`

```
ae8dc3df 9e3f3c7a 518ac8da a87eedd0
eac32ba4 ec28af96 1b815f13 7afd05f9
cb994ca2 2761c251 3436ed1a 95c24ce5
9f67ee09 42eb15a3 63b958ed e28972d7
```

### #6 Lazar (name in zkey: `lazar`)

Submitted 2026-09-29 09:13:43 UTC. SHA-256 of zkey: `7611d3ade361c02b70b27620aca12aa8c15f7c7aba352d3e7add6409974fb13d`

```
1901939c 04816f4a 1bfe9c6b 28f2ccd6
6b16befa fd13f81e 16aa6f01 6564dde8
39d1b81e d1cf9a38 1cc2678e 20930554
c8f5138b 856dd3c4 a3ebe083 415b108d
```

## verifyPixMultiOwnerWithdrawal_5_30

Circuit hash:

```
32b4fe16 f8dd6abc 45236c69 7831d451
942587f6 d91dd830 24a3f4dc 0bd02b7b
3e36be97 df621f03 0ad502c3 6592f286
051686c9 f3d9f0bb 5f5ae82a 346cbd1d
```

### #1 Qianchen (name in zkey: `q`)

Submitted 2026-09-29 09:04:57 UTC. SHA-256 of zkey: `2b30258da53098b2bde6644c58e7da4ec8c986430dac34993cfac27f6aee87cc`

```
79cac8ec 43a0bd29 e5c3e3df 17246b26
7a7e9538 5ec86ac4 776015b0 39f498a7
93fc8266 f435328f 1e083a0f baac3902
332e7b56 f40ad3d3 51cad5ae 27b03a22
```

### #2 Lukas

Submitted 2026-09-29 09:05:33 UTC. SHA-256 of zkey: `2d08591312b019f25905c2e5fea60b23a36a16c172364d08bdd0147cd65cd235`

```
8660b69a d09683a7 6b9d4931 ab735e2b
ac7ae1a2 10bce795 a6fd4668 6bc432cf
ecc83d69 378ed14a 99205880 a3f58c9d
7ad7a27f 90d676d5 1af27402 99358354
```

### #3 Tino

Submitted 2026-09-29 09:06:15 UTC. SHA-256 of zkey: `6f24f775f472808e20cfa8151569b8b2efe2687e6393ab95f675e192338f110d`

```
8609dd85 80d62f3c c688b05d e0ca8dbb
8095247f 7bb5355b 22d3c09d 742586bf
e5954d75 88c6d499 5d6faadb 2450e76c
98f36dbe eb60ae23 5dcede1a ec1fbf74
```

### #4 Lazar (name in zkey: `lazar`)

Submitted 2026-09-29 09:10:02 UTC. SHA-256 of zkey: `3e391d9d63bdc96495d9d2a04ea8c8b04769db325a2b6bedee032ccb8f085bbb`

```
5b175678 51ad64de b743e733 96f3635e
999f30b0 bc08c9db 4ffc2a18 0540c2e8
d6e4786f d8aeb30f d23a90a5 e1b3753b
e65df972 007cfd0e 0f0ac65c 3347120a
```

### #5 Mihailo

Submitted 2026-09-29 09:13:40 UTC. SHA-256 of zkey: `8864afb191d678dd99b7f7c75cfdca38d6bb4afeca5e619f70ba79f2860c0950`

```
9b34fb94 c8d90c3b 3959e442 acf0eb8f
28922d43 62e9a7c3 c6d4da8f a1891944
0ce6df49 cc4ffcbc 0af1e169 c014da00
bb8fd219 377c2c14 8f1177f3 5394a7ff
```

### #6 Vanja

Submitted 2026-09-29 09:19:06 UTC. SHA-256 of zkey: `f74b9fc2be5fcdba92cd510495ed9cd0d204022f7c1cbbd4b3cae71df8ce5831`

```
ce8bfaea c499bf5e d78a767c 10c5298e
86d544cb fe08ed63 67b110e2 3915dea4
de3af475 4c1e9c40 90a01c9f 7e741b09
fa7d2665 80fadcfe fd0b1f9d fcedeb22
```

## verifyPixMultiOwnerWithdrawal_10_30

Circuit hash:

```
97d1497d 420b2958 2d9fc345 1f4c1874
edae58e3 6f35d331 bd299295 7e22cc82
87ac5e58 35b120f1 0261a939 e5962836
e5b4fec8 5b545fbe 3d131697 f634cdd7
```

### #1 Lukas

Submitted 2026-09-29 09:04:03 UTC. SHA-256 of zkey: `015263a9c0363a21e928f03b87b10bea8bcc4b75bf242203b1d1b9e7588945e2`

```
e95986f4 3aa1a9c2 395175c7 860c4c3b
4a9f860b 79e822b0 c572da14 7fadba55
e2a26cd8 cdb684f2 6c65d547 1f78e802
792cc7fd 6ca9d5df 41b75a4f 42445fe8
```

### #2 Qianchen (name in zkey: `q`)

Submitted 2026-09-29 09:06:11 UTC. SHA-256 of zkey: `e6b9d309be2142a94eb1bd6e1411c0c74ca170454da2528f35d3c03297a38f4e`

```
0f91e1db 981327d2 9a01954e d7a43ce6
da18b33a eedfb7bb 87b6c0d6 0742d384
1dc9b78b 93bb3440 1febb541 c0b0b255
d81b5496 7bde8fd0 afafe530 f0919ba2
```

### #3 Tino

Submitted 2026-09-29 09:07:29 UTC. SHA-256 of zkey: `c7a61ac72770d449e631446ed07de760f6bcf80415b47142a20bfbd709f16e65`

```
a1b0efad 8c7ddb7b efd26ce2 73c53ec0
c29b3a14 2f61bb55 cb76c310 d9c096d2
c044379d a71729f7 e6765461 14e9393a
bcd066ef 0fd2c821 ec0a9c39 1546d252
```

### #4 Lazar (name in zkey: `lazar`)

Submitted 2026-09-29 09:10:58 UTC. SHA-256 of zkey: `94667da4ba09e146c411419e8f1df7251da242a67b286a38c92e18a7fb593a83`

```
c4df65f3 f0e045a0 26a9cf2f 619a10cf
a71ec2c8 29c5e653 6a83f82c 4c161527
0770af03 fa0048cc 3ee04cf4 da517664
fca71f53 21b1d4bf f9a45f57 c756c5c4
```

### #5 Mihailo

Submitted 2026-09-29 09:15:38 UTC. SHA-256 of zkey: `5f817c165bd68050dd514f5bbedf61d0ffdfb8c8c1fb6386b1611699293ba5be`

```
1c4a12ad 72b1cb7c 88e29253 0dfab728
02e3f5e8 7bb5e571 8dd680b7 56e56217
5c64dd8f 09d85d4e f0f34eb2 99bc2436
e129e486 27096c9d fa7fc252 d0d66c22
```

### #6 Vanja

Submitted 2026-09-29 09:26:35 UTC. SHA-256 of zkey: `869080de2e351bd383e9f8f1ec84457bb6d0bf635c3f6163acf3186a982ab1ba`

```
a469491d fb434764 f08f9068 8bc93828
5f47fba8 4b1f6578 d7abe052 814a9679
a48a9b11 639c4ac9 aa8ad992 829d3b36
dd6b60c7 0b2eb74b f609a00b 1456f319
```

## verifyPendingNotesCommitment_5_30

Circuit hash:

```
03f4215d c6734006 e39705dd e402ac0c
f5cc3ec0 82cb6565 ea263cee 4800e4a2
0ce6c1ac 36c83855 3265ec67 05b31836
ea668c62 33ce6286 605204ef 468ca1fe
```

### #1 Tino

Submitted 2026-09-29 09:04:43 UTC. SHA-256 of zkey: `217930cfc46a0ae264718259480444d3c02e11a91a7685454d2dcdc99c3535ef`

```
88c4d86b 6136da2f ebe7a350 d8965011
1fd9e085 2cd97205 fa65de9c eac43da9
cb7337c1 5d847248 ceec08b2 c626df3d
c424f6df 2fa1e87f d0d3c9c2 dc6bc5e5
```

### #2 Lukas

Submitted 2026-09-29 09:05:18 UTC. SHA-256 of zkey: `bcbdf9d03494a24f9984fde39e9801c0576d8106ac11258f1307fda28fa62a06`

```
7626938f 27131b5f ba0578f4 a07e12d6
d68d6af8 87d8818f 1a3475f3 ee063f92
1bda5d99 95d131bf 9339dbbc daf04cd7
441e8712 128aea3c b19d251a 99d7ed00
```

### #3 Lazar (name in zkey: `lazar`)

Submitted 2026-09-29 09:08:28 UTC. SHA-256 of zkey: `71d8ea3e5ed2afdc09594cac8ef4bdce4eee9ec2211d0dda9341f7f0b47dabfb`

```
cce90b83 a85f51d7 511a1307 ca562cdd
a9e36c21 abe685c3 473c734b 221e6078
4f9174ce d534aaca 2f7a635a 240d3d4b
145d4090 ec2ea27f efe369bb 00129805
```

### #4 Qianchen (name in zkey: `q`)

Submitted 2026-09-29 09:13:30 UTC. SHA-256 of zkey: `251e08b78e1f3f524be561468f76341f2bd3d6531ce3edc864d6ecea6a8cee77`

```
ef3b203f 590d3489 b7ce2933 6cf726b4
3c1be335 5aec89a0 a0195ac4 76b0ffe7
12b77e7c 6f2dc820 9b9bc677 3625694d
d48a048e 6005c8b3 39134cc6 f1353a37
```

### #5 Mihailo

Submitted 2026-09-29 09:17:59 UTC. SHA-256 of zkey: `373aa0ade32ddf1cfb9846f9f90cf0c895b8eb5760970ac4b9c9f2d06ce1cfbd`

```
eeb2cc8b 9dbfcda3 58aa6667 52665412
903c5cf3 2df57f54 ab4eb5c5 0b983a93
0f2648f6 2ec5a842 c2a34c02 ec7470e8
d399a877 a343bfec 2bfd5b9f 591e2611
```

### #6 Vanja

Submitted 2026-09-29 09:27:57 UTC. SHA-256 of zkey: `5a9761127ad5d0a34c3f0b9bb11d34d13d6d68afb0089c3b74d24bcb25fa7477`

```
2ef0c781 18447ae4 0f505b21 2b2cb76e
b8977109 45c56137 f8febaa5 5426db72
e4b733ff f60b91da 0b542fd5 09eee0da
794d10ad ad1a80b0 6d4774ed 8563a7bd
```

## verifyPendingNotesCommitment_10_30

Circuit hash:

```
3e40fe32 7968ee0d 4f7d37fb 6896fd55
080b8510 368b75bd 64914c6a 3950bd16
061ca3fa a809d8b4 00c15999 061886f5
f133f4c0 a5f51737 c5130a51 fcc511c3
```

### #1 Mihailo

Submitted 2026-09-29 09:09:30 UTC. SHA-256 of zkey: `465307b38f3721414868f9009ca2801759eaf4677e23e472c4a1417db4bee058`

```
b456bd6a e07e370c c420d986 5918f010
63561121 be36f81e 2c84cda7 9e1f4152
c1ec9505 f755654c 2ee1080d 3ba36eab
7b09a152 2a702dd9 2d5e29c5 6eb5d4b3
```

### #2 Lukas

Submitted 2026-09-29 09:10:35 UTC. SHA-256 of zkey: `a4a5672348d8a8a0a15e8535b23f8ccdbade50bf8849e2a57f51da0c546fb38c`

```
321bfc52 b7157b4e c4c36ed9 177632f5
9f1fd893 eb66f4bf 283b6202 462b4787
3b19bdd0 1b67d883 c7f5ab62 8cce3898
e5531255 484c4b24 c294332f 7fe8834b
```

### #3 Lazar (name in zkey: `lazar`)

Submitted 2026-09-29 09:13:21 UTC. SHA-256 of zkey: `bbde6fb9605f16f8f8d8f2ca80f6e2461afd13136733acc693dbda5a33cf0552`

```
e39d5e8c b854eebf 5af161ed 2fd218dc
fdb96e39 999e5fc6 57aff7df 64ea77e9
aa82b91c 0519f32c 0f82fffb 47e6f6e2
8dc25842 dfe6ef1d 17d42dd5 02a312ec
```

### #4 Tino

Submitted 2026-09-29 09:15:29 UTC. SHA-256 of zkey: `03cff03a83feab5ad5075d86dcd1175a4cf0785f0b3c4baa0d63a554d41b964d`

```
93aa9ba8 7ebe7ec3 927902f3 5216c6e2
592d1cbd 87e32538 d3dba4dc c9e6e0ee
1c87f9e2 b175bf28 c801810a c4be94f5
a32c733d abbc2f54 92570c85 9db3a485
```

### #5 Qianchen (name in zkey: `q`)

Submitted 2026-09-29 09:24:24 UTC. SHA-256 of zkey: `7905934fa36580ab901124637f2657c5a7fc06be4ebe85c4bb56db6ad8ff174b`

```
eab550e0 bc6920b5 930804bb 589b704e
3fe1eb8f bed4ee23 a435d123 93c38ca0
7d552d94 60f1857d 07fb63cf d049ee58
89003fd3 0a49867c 9c4d8ba2 37f3767f
```

### #6 Vanja

Submitted 2026-09-29 09:30:33 UTC. SHA-256 of zkey: `56f80d8e18b00cb13b20e26308e254a1988aeca0551be348f1470999360c948b`

```
b9b9158f 6a35813f 27c210ee 862657fb
e5e1b495 64503119 1bde04dc c3c8d021
00054214 776e841a 5ede34f7 abf732f6
d603aa0d af5623da bea2c0de a7404254
```

## verifyPendingNotesCommitment_20_30

Circuit hash:

```
3378dfd6 cd2e2de6 cbbaf6da c2932426
ec292807 83299ced 8bd50d9d 852149ec
bfc246b7 2e1b4318 d4e14baa 70bf5395
3bff9dd1 46dd01a5 4ea822a7 162f62f5
```

### #1 Lazar (name in zkey: `lazar`)

Submitted 2026-09-29 09:07:18 UTC. SHA-256 of zkey: `03a5e992aadc3475e805c7032c9d5a8a52bdb536a361588e29bf711c07d174d5`

```
ca150218 c2da7e35 a39d0f2b b4270bc0
5acc5d46 4f9c89eb 1e8dc2c3 6d4932a5
1aefc5d9 89364031 1bc8d541 0e4befb9
679ae12c 37421ed8 af4dbda0 d9cea41b
```

### #2 Lukas

Submitted 2026-09-29 09:09:11 UTC. SHA-256 of zkey: `7894646d67efa8419c761115bf8479c0f71221363f86671f23d7d8410d96959b`

```
cecc4d51 55db355f c876309f f4558c73
7fb40a43 29dfa627 fcd398ad 59cc314e
858cfc46 519831f5 3a92ff40 672187fe
0c759b4d 0822f3c6 1819d012 8c981f63
```

### #3 Tino

Submitted 2026-09-29 09:13:01 UTC. SHA-256 of zkey: `5cdecaca49151fc2e1e3563d4164cfb43c6dd8b115d00ee02df65e7537728ca5`

```
c0245ff1 2df0aa15 0d2f9192 a18c2fbb
d2c2f512 ab8f6995 fa886af7 73639743
f0a5af61 0b0e06d7 4a9d9703 ea3097d2
bc1a9734 b7622e67 0ba2926d 25cc73ed
```

### #4 Vanja

Submitted 2026-09-29 09:17:30 UTC. SHA-256 of zkey: `325f81117e46b8780680b85a448bb06978fc487cf18f5bd9f1ab77bdb97c6607`

```
8f50657c c43a9640 0088c2c9 c5790c29
03d51243 ddf0bc31 9e05a538 23d7f961
6651ded4 e645e12e 7fdc9a2a a42a8bc1
bcbecd09 295125ae 738dc117 558a866d
```

### #5 Mihailo

Submitted 2026-09-29 09:26:20 UTC. SHA-256 of zkey: `5b07eb89ca1e36b9db9a2e09c7e1f51d5b7ed653f74fd88d7bad1b34109eccc4`

```
f1012777 557793cf 7812a548 01cee2c4
7925fde9 b36d4b57 5fd96b93 a666e354
5988bf07 8318fc91 38ce767c 9af9435c
44bafecb 1437df62 8b2b351b 0970fb03
```

### #6 Qianchen (name in zkey: `q`)

Submitted 2026-09-29 09:42:15 UTC. SHA-256 of zkey: `0fa6cf38a6e7907db890c1ca2deaf03b624a3ac9b7ef8a7342c1aa650a18f48f`

```
5b2c40c4 30b85477 0b97b5ca 82c3c15f
358b29d7 c38b0090 0455995f 2b51d3d1
d2046fda 6e92ac00 8d0707c0 87ad05ff
cb7294f1 0c38f19a b32602a2 e8dc2909
```

## verifyPendingNotesCommitment_50_30

Circuit hash:

```
25bc9a40 4dc511a4 3dd3d565 77adc9f1
7a4fc89b 7f6743b4 f3e77b63 e4c3095a
0fbd6d2c afb366af 574c1645 c8edaef1
c515d1ef 0815cdb6 61056ccc 9e5ca27e
```

### #1 Vanja

Submitted 2026-09-29 09:12:25 UTC. SHA-256 of zkey: `f86ba5de5785eaf5dc79de1227bd98115d873e1c4e27b1309cfe9ab82c7b7c25`

```
1fc77d82 fad379c3 07217865 7dfe0472
2cce1bd0 c87d3d39 ff84295e fd702959
46700ee1 96ba2d80 f49909d7 7cbbc981
bdae1225 4ccaedb4 f8978de7 e1af3baa
```

### #2 Lukas

Submitted 2026-09-29 09:16:37 UTC. SHA-256 of zkey: `76debe240c25dd098836df3e8bb078ed0832858356ed9acd7a2e5a250e724792`

```
7a8e674c fad7d02d 4b8567ef 923ceecf
4588e7da 24635ca5 11abcfcf 075f9206
8339e7fb 74d5ce63 b74ce227 bf48f312
e90479fb dfb9184c a597ed3e 472ed860
```

### #3 Lazar (name in zkey: `lazar`)

Submitted 2026-09-29 09:25:30 UTC. SHA-256 of zkey: `7693f4cb63e33f5d0483236ff85b877e01f56cdc5de994d387cac1ac677bc078`

```
76ef55d9 fd538f0f 516b08d7 a5b1e16c
4968d218 3db6091b 1d26ea64 43ca928e
ac15b361 80eb84b4 377000c1 daf94ed0
8543a077 80fc89e8 b942f349 a6dec9ff
```

### #4 Tino

Submitted 2026-09-29 09:33:50 UTC. SHA-256 of zkey: `5f9954bb591db86e0cdfa70adf64df626acc35d9e30c6acf77427c24ea1ead5f`

```
d2d36b26 5fd834c8 ebc9c449 3f277f69
b9b965d9 54573bdd bdb25449 858868fa
4b7b3d3f 30eae578 5396b4a7 35c4d2f1
090c0123 92d04cd7 9c713bdf 9725a82c
```

### #5 Mihailo

Submitted 2026-09-29 09:49:49 UTC. SHA-256 of zkey: `30c1cc23b504e17e4b86d31d2b4330118177671d9dac21404769093e5b095135`

```
a72cbc25 a08c77c3 6f44c759 3e65268b
d0867fa1 6ecd9fd8 738e3561 56a79442
302300d3 7093522b f5788e23 7b45b101
ce7817b8 e90e5785 46b184fd 61a6bba6
```

### #6 Qianchen (name in zkey: `q`)

Submitted 2026-09-29 10:25:05 UTC. SHA-256 of zkey: `4efbf91022c84c81caf708e947f178814f9b2adc75e96550f404abcb62e6d494`

```
fda6d9f7 3dc35401 3dbef8d9 d43f2ad0
94b31d37 5b403df0 79939ffc fea54322
83c47e92 5f1a5854 f79bdc75 a2464aed
77b6860e 7660c3d3 7c51f9ab b1e4017c
```
