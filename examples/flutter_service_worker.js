'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/fonts/MaterialIcons-Regular.otf": "4870288ad6ee2978011f3d1ccdcb8bd0",
"assets/FontManifest.json": "76db848cf78839df44fbc820c1390b55",
"assets/NOTICES": "221104c7e4d5660788053b09a620e751",
"assets/AssetManifest.bin": "963f9d0edb322dbd713f8f58a848968c",
"assets/AssetManifest.bin.json": "deaee3d0001ed081d8697c00bcc07afd",
"assets/packages/audio_soundpool/assets/notes/Ds5.mp3": "94e49f1403865e6e74b748bc206e32a6",
"assets/packages/audio_soundpool/assets/notes/Ds6.mp3": "93db6bd355ed9970ad4d6e3a4fe2860d",
"assets/packages/audio_soundpool/assets/notes/C1.mp3": "18e7a4f7075948ab503e70fc812e72c1",
"assets/packages/audio_soundpool/assets/notes/A5.mp3": "07a5bfc6f2d22a1f0ce18831131bc079",
"assets/packages/audio_soundpool/assets/notes/A0.mp3": "ae297c5adf385df57658e08f09c44e46",
"assets/packages/audio_soundpool/assets/notes/C2.mp3": "fea0b1f393117812f9a00519d59bdc73",
"assets/packages/audio_soundpool/assets/notes/A7.mp3": "dfbb0274be3ec0e6e43dd24741523063",
"assets/packages/audio_soundpool/assets/notes/C7.mp3": "a5d1aa5ac7e4a07e8b5d460bd0cc813f",
"assets/packages/audio_soundpool/assets/notes/Ds2.mp3": "8bb122604c4241b5c470958303f7314e",
"assets/packages/audio_soundpool/assets/notes/Ds7.mp3": "0e00cb46fef90113657ee395ffd0d423",
"assets/packages/audio_soundpool/assets/notes/A1.mp3": "8a4cf5ae59d78ae1bf5d8ae2628cc7c0",
"assets/packages/audio_soundpool/assets/notes/Fs3.mp3": "d9e8459da3320131e5a39155c2f86278",
"assets/packages/audio_soundpool/assets/notes/C4.mp3": "2f496ec3fdce5db3d2da548ce21be91d",
"assets/packages/audio_soundpool/assets/notes/C6.mp3": "8420f29f45dcb16e70d6e182c4f49154",
"assets/packages/audio_soundpool/assets/notes/Fs6.mp3": "99903cce422eadff5f93ad762ba3502a",
"assets/packages/audio_soundpool/assets/notes/A6.mp3": "7a848d96c5a03ba7f5655f28a17df7df",
"assets/packages/audio_soundpool/assets/notes/Ds4.mp3": "88ae883ad007a298010a5974db74ba53",
"assets/packages/audio_soundpool/assets/notes/Fs5.mp3": "3a213fc21fa03d96c5706f5c54353c10",
"assets/packages/audio_soundpool/assets/notes/Fs1.mp3": "8380198ef0d1b1edc3b2390c51ecc6e8",
"assets/packages/audio_soundpool/assets/notes/A4.mp3": "ac1793b11eb5472897c57a48897049ac",
"assets/packages/audio_soundpool/assets/notes/A2.mp3": "f30c6031e17463b32c6e8a3a8cf90fb4",
"assets/packages/audio_soundpool/assets/notes/C3.mp3": "e2e4c48c62a94d3d3d0cc0b070d0c8bd",
"assets/packages/audio_soundpool/assets/notes/A3.mp3": "d83805c080f80bcee94d817e375d224f",
"assets/packages/audio_soundpool/assets/notes/C5.mp3": "0d1e316ab0853d4b25ad7009e5e71716",
"assets/packages/audio_soundpool/assets/notes/C8.mp3": "cb23085ea092ccfc2bae4d15937329cc",
"assets/packages/audio_soundpool/assets/notes/Fs4.mp3": "210c4652fcf4a271a12d91fb3b1b7247",
"assets/packages/audio_soundpool/assets/notes/Ds3.mp3": "84bb9c0a39a515d87d90751ebd355085",
"assets/packages/audio_soundpool/assets/notes/Fs2.mp3": "86039a11bfdaf9ddfbba95a195c94d5b",
"assets/packages/audio_soundpool/assets/notes/Ds1.mp3": "f5208d1a95e8438193d2771b5e2b81a4",
"assets/packages/audio_soundpool/assets/notes/Fs7.mp3": "01e61f3e5216b85ad25c61a0b658ed3c",
"assets/packages/audio_soundpool/sounds/do-you-like-it.wav": "48ebe7e117a89596fe0f278cd1c7ca43",
"assets/packages/audio_soundpool/sounds/van-sliding-door-daniel_simon.wav": "0a5f8e468c60014d7d776de0ce1cc69c",
"assets/packages/audio_soundpool/sounds/dices.m4a": "1f3f38c91b4d12b923d5e7fa2197a269",
"assets/packages/widgetbook/assets/fonts/Poppins/Poppins-LightItalic.ttf": "0613c488cf7911af70db821bdd05dfc4",
"assets/packages/widgetbook/assets/fonts/Poppins/Poppins-Medium.ttf": "bf59c687bc6d3a70204d3944082c5cc0",
"assets/packages/widgetbook/assets/fonts/Poppins/Poppins-ExtraLight.ttf": "6f8391bbdaeaa540388796c858dfd8ca",
"assets/packages/widgetbook/assets/fonts/Poppins/Poppins-BoldItalic.ttf": "19406f767addf00d2ea82cdc9ab104ce",
"assets/packages/widgetbook/assets/fonts/Poppins/Poppins-Black.ttf": "14d00dab1f6802e787183ecab5cce85e",
"assets/packages/widgetbook/assets/fonts/Poppins/Poppins-ThinItalic.ttf": "01555d25092b213d2ea3a982123722c9",
"assets/packages/widgetbook/assets/fonts/Poppins/Poppins-ExtraBold.ttf": "d45bdbc2d4a98c1ecb17821a1dbbd3a4",
"assets/packages/widgetbook/assets/fonts/Poppins/Poppins-ExtraLightItalic.ttf": "a9bed017984a258097841902b696a7a6",
"assets/packages/widgetbook/assets/fonts/Poppins/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/packages/widgetbook/assets/fonts/Poppins/Poppins-Light.ttf": "fcc40ae9a542d001971e53eaed948410",
"assets/packages/widgetbook/assets/fonts/Poppins/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/packages/widgetbook/assets/fonts/Poppins/Poppins-Italic.ttf": "c1034239929f4651cc17d09ed3a28c69",
"assets/packages/widgetbook/assets/fonts/Poppins/Poppins-BlackItalic.ttf": "e9c5c588e39d0765d30bcd6594734102",
"assets/packages/widgetbook/assets/fonts/Poppins/Poppins-SemiBoldItalic.ttf": "9841f3d906521f7479a5ba70612aa8c8",
"assets/packages/widgetbook/assets/fonts/Poppins/Poppins-ExtraBoldItalic.ttf": "8afe4dc13b83b66fec0ea671419954cc",
"assets/packages/widgetbook/assets/fonts/Poppins/Poppins-MediumItalic.ttf": "cf5ba39d9ac24652e25df8c291121506",
"assets/packages/widgetbook/assets/fonts/Poppins/Poppins-SemiBold.ttf": "6f1520d107205975713ba09df778f93f",
"assets/packages/widgetbook/assets/fonts/Poppins/Poppins-Thin.ttf": "9ec263601ee3fcd71763941207c9ad0d",
"assets/packages/widgetbook/assets/logo.png": "445292cbfde4f60d5b3dca36d0d6dfb2",
"assets/packages/sound_service/assets/sfx/hash3.mp3": "38aad045fbbf951bf5e4ca882b56245e",
"assets/packages/sound_service/assets/sfx/p2.mp3": "ab829255f1ef20fbd4340a7c9e5157ad",
"assets/packages/sound_service/assets/sfx/click4.mp3": "fc48c687051776935ee27782a6ee5648",
"assets/packages/sound_service/assets/sfx/click2.mp3": "e7c23ca3c1bd7c9c3285c9e60f27504c",
"assets/packages/sound_service/assets/sfx/wssh2.mp3": "255c455d9692c697400696cbb28511cc",
"assets/packages/sound_service/assets/sfx/score2.mp3": "f9494ae1fe1a9b78563b386acca66c2c",
"assets/packages/sound_service/assets/sfx/hh2.mp3": "4d39e7365b89c74db536c32dfe35580b",
"assets/packages/sound_service/assets/sfx/lalala1.mp3": "b0b85bf59814b014ff48d6d79275ecfd",
"assets/packages/sound_service/assets/sfx/sh1.mp3": "f695db540ae0ea850ecbb341a825a47b",
"assets/packages/sound_service/assets/sfx/hh1.mp3": "fab21158730b078ce90568ce2055db07",
"assets/packages/sound_service/assets/sfx/haw1.mp3": "00db66b69283acb63a887136dfe7a73c",
"assets/packages/sound_service/assets/sfx/damage1.mp3": "e73bde6e93a3754205a6960f994acf91",
"assets/packages/sound_service/assets/sfx/k2.mp3": "8ec44723c33a1e41f9a96d6bbecde6b9",
"assets/packages/sound_service/assets/sfx/sh2.mp3": "e3212b9a7d1456ecda26fdc263ddd3d0",
"assets/packages/sound_service/assets/sfx/kss1.mp3": "fd0664b62bb9205c1ba6868d2d185897",
"assets/packages/sound_service/assets/sfx/oo1.mp3": "94b9149911d0f2de8f3880c524b93683",
"assets/packages/sound_service/assets/sfx/hit2.mp3": "19e99975f122b67cb5e17bb5e04818da",
"assets/packages/sound_service/assets/sfx/metronome-85688.mp3": "8005d8de3059a8f809b1ce4b7d33f65d",
"assets/packages/sound_service/assets/sfx/click1.mp3": "10dfe538c54ddca1d967034637a37cbb",
"assets/packages/sound_service/assets/sfx/click3.mp3": "23f7ef1589277fc59d0b297db8d0297f",
"assets/packages/sound_service/assets/sfx/fwfwfwfwfw1.mp3": "46355605b43594b67a39170f89141dc1",
"assets/packages/sound_service/assets/sfx/ws1.mp3": "5cfa8fda1ee940e65a19391ddef4d477",
"assets/packages/sound_service/assets/sfx/wehee1.mp3": "5a986231104c9f084104e5ee1c564bc4",
"assets/packages/sound_service/assets/sfx/yay1.mp3": "8d3b940e33ccfec612d06a41ae616f71",
"assets/packages/sound_service/assets/sfx/dsht1.mp3": "c99ece72f0957a9eaf52ade494465946",
"assets/packages/sound_service/assets/sfx/spsh1.mp3": "2e1354f39a5988afabb2fdd27cba63e1",
"assets/packages/sound_service/assets/sfx/fwfwfwfw1.mp3": "d0f7ee0256d1f0d40d77a1264f23342b",
"assets/packages/sound_service/assets/sfx/p1.mp3": "ad28c0d29ac9e8adf9a91a46bfbfac82",
"assets/packages/sound_service/assets/sfx/k1.mp3": "37ffb6f8c0435298b0a02e4e302e5b1f",
"assets/packages/sound_service/assets/sfx/hit1.mp3": "52f15e8def2750b4220796d7dd749e18",
"assets/packages/sound_service/assets/sfx/damage2.mp3": "3ae6d56c2fdff524875df5c956f62012",
"assets/packages/sound_service/assets/sfx/score1.mp3": "f51ae86826ee34f92514fb8e4b027edc",
"assets/packages/sound_service/assets/sfx/swishswish1.mp3": "219b0f5c2deec2eda0a9e0e941894cb6",
"assets/packages/sound_service/assets/sfx/ehehee1.mp3": "52f5042736fa3f4d4198b97fe50ce7f3",
"assets/packages/sound_service/assets/sfx/wssh1.mp3": "cf92e8d8483097569e3278c82ac9f871",
"assets/packages/sound_service/assets/sfx/kch1.mp3": "a832ed0c8798b4ec95c929a5b0cabd3f",
"assets/packages/sound_service/assets/sfx/hash2.mp3": "d26cb7676c3c0d13a78799b3ccac4103",
"assets/packages/sound_service/assets/sfx/hash1.mp3": "f444469cd7a5a27062580ecd2b481770",
"assets/packages/sound_service/assets/sfx/jump1.mp3": "247686373bffc27c3962702465614ea8",
"assets/packages/sound_service/assets/sfx/double_jump1.mp3": "58633df43115de841cf9235fccd64133",
"assets/packages/sound_service/assets/sfx/README.md": "c2318c37838f1811dd8a00d1bd6220a8",
"assets/packages/sound_service/assets/images/natural-wood-grain-background-14903911355WD.jpg": "feb4c1c9431e6304a18a1dd313556797",
"assets/packages/sound_service/assets/images/background.jpg": "0dbc8af9be00f6a8479e172e38c865cf",
"assets/packages/sound_service/assets/notes/b4.mp3": "ae7d435f6b7c8c799b54db25d622eb63",
"assets/packages/sound_service/assets/notes/f1.mp3": "274d903287a8e940cb5dd04bf4383062",
"assets/packages/sound_service/assets/notes/cc.mp3": "680d97a1c2f93b97f15e50175c15b0c6",
"assets/packages/sound_service/assets/notes/As.mp3": "5d43a148d713edbf60ebaa5628c55927",
"assets/packages/sound_service/assets/notes/b3f.mp3": "999a25fe427cd59c9bbdd7effec61175",
"assets/packages/sound_service/assets/notes/dd.mp3": "369d1cb654075139fe3589d342c13d8c",
"assets/packages/sound_service/assets/notes/ddf.mp3": "374467b2eb980b3a3131003ed8a39102",
"assets/packages/sound_service/assets/notes/d1s.mp3": "82d62457d92dff4961f6d6f384820660",
"assets/packages/sound_service/assets/notes/dds.mp3": "d49fe9fb35f1f09164cccc3d45c99867",
"assets/packages/sound_service/assets/notes/a%2520highs.mp3": "59dd53354a3712490029f05ddb7aab1e",
"assets/packages/sound_service/assets/notes/A_1f.mp3": "1d3799e7d64616ba967692c8b2e885d9",
"assets/packages/sound_service/assets/notes/c1.mp3": "8d155420b2716b355b4fd8e26fdaf3f7",
"assets/packages/sound_service/assets/notes/d3s.mp3": "9ecdcf5b3b75a4c0b8e29ccc211f430e",
"assets/packages/sound_service/assets/notes/g4f.mp3": "2c99e7b6ef4c828cfd4496f0542c11f9",
"assets/packages/sound_service/assets/notes/Ds.mp3": "a41720a423b4bb440fff2531ab21ee73",
"assets/packages/sound_service/assets/notes/b%2520highf.mp3": "d5e2ed9cc4eb3ec965317b15536e4fbb",
"assets/packages/sound_service/assets/notes/D_1.mp3": "2643f25201d39e00ec77ab5a84c4b67e",
"assets/packages/sound_service/assets/notes/dd1s.mp3": "82d62457d92dff4961f6d6f384820660",
"assets/packages/sound_service/assets/notes/c4s.mp3": "7c16f6a91ed160f150dd9a3da75d23d5",
"assets/packages/sound_service/assets/notes/f4.mp3": "8927816541ef1d583e4b04a230477925",
"assets/packages/sound_service/assets/notes/a%2520high.mp3": "1075ee0e80468637222bd19caa103130",
"assets/packages/sound_service/assets/notes/ggs.mp3": "331dfe0091daeb5cffedda6aab2c7f17",
"assets/packages/sound_service/assets/notes/E.mp3": "0b9c47868013861503dce1810b172869",
"assets/packages/sound_service/assets/notes/d4f.mp3": "c4771dac0419e81aca87df876a406f4a",
"assets/packages/sound_service/assets/notes/Cs.mp3": "645e0a7a889c8f0b7e8be956cb13dd14",
"assets/packages/sound_service/assets/notes/b1f.mp3": "43ae43039682d14c31e32aa215672640",
"assets/packages/sound_service/assets/notes/a%2520highf.mp3": "d6e2399a45bde29c01e371211e0f1982",
"assets/packages/sound_service/assets/notes/G_1.mp3": "9b3633ca388a2f631ec36f36f7194f84",
"assets/packages/sound_service/assets/notes/c3s.mp3": "b38eb0ba878b0ccf3fec0b7e1bc32a72",
"assets/packages/sound_service/assets/notes/D.mp3": "a0c36a2132f85c4ab5a86557fe93d54a",
"assets/packages/sound_service/assets/notes/a2.mp3": "0bddbface71a7e74ef43179a8af3a3f9",
"assets/packages/sound_service/assets/notes/aaf.mp3": "d6e2399a45bde29c01e371211e0f1982",
"assets/packages/sound_service/assets/notes/c2.mp3": "7421cb5934a5ada96df312c46738e540",
"assets/packages/sound_service/assets/notes/d2s.mp3": "a484d2db4af4f5362bec8d5c17165409",
"assets/packages/sound_service/assets/notes/f3.mp3": "93ea93a026985c7709dc5b65d4e59815",
"assets/packages/sound_service/assets/notes/e3.mp3": "9583820b31c4361d664e70550759f477",
"assets/packages/sound_service/assets/notes/d2.mp3": "b8927d7d051ef3b14317af1252a69380",
"assets/packages/sound_service/assets/notes/f2s.mp3": "6ea2dc2aa4f633455ff5523cba5807bf",
"assets/packages/sound_service/assets/notes/c4.mp3": "20d74bdc5d1cbc5a6068cc5405177b2a",
"assets/packages/sound_service/assets/notes/A_1.mp3": "5d38e7355e83b02021e635aa3aa316ef",
"assets/packages/sound_service/assets/notes/dd1.mp3": "09ff53a92f5af9b7e18aeb679de549bb",
"assets/packages/sound_service/assets/notes/g4.mp3": "b2c3c00c0e8c31fd34fc21697d7b9d3c",
"assets/packages/sound_service/assets/notes/a2s.mp3": "10b138e6f8d2cfb2acfdb517954cc980",
"assets/packages/sound_service/assets/notes/e1.mp3": "3d3e8febd6497c55e89268ef567407b5",
"assets/packages/sound_service/assets/notes/F_1s.mp3": "1f5fc8345ab75a024b562591c07bd78b",
"assets/packages/sound_service/assets/notes/e3f.mp3": "b2ff250783cd7baa366503dea8423e71",
"assets/packages/sound_service/assets/notes/bb.mp3": "c257dc133fc51abe1bba8c6766addef7",
"assets/packages/sound_service/assets/notes/g3.mp3": "bfaaf668f8260ce94eabd3aaf135af21",
"assets/packages/sound_service/assets/notes/e4f.mp3": "8911b60a42e9267e85f637d5f6742b39",
"assets/packages/sound_service/assets/notes/Df.mp3": "19e187f496ccb8cb65026fde4f4b8e74",
"assets/packages/sound_service/assets/notes/A_1s.mp3": "f931eb45da39e37324705a9008fb1e9c",
"assets/packages/sound_service/assets/notes/aas.mp3": "59dd53354a3712490029f05ddb7aab1e",
"assets/packages/sound_service/assets/notes/d2f.mp3": "b39b79b3d3a4e444875be75cfeff297b",
"assets/packages/sound_service/assets/notes/f1s.mp3": "42c081347ad11d80792b83433a3cdf84",
"assets/packages/sound_service/assets/notes/g3s.mp3": "62c76efaac0f2b28938859ff527d6134",
"assets/packages/sound_service/assets/notes/ff.mp3": "3318bd990dbe9ec0688f0712d2d3f3c4",
"assets/packages/sound_service/assets/notes/C.mp3": "e32ad23b9181a9373115cc663652c8f9",
"assets/packages/sound_service/assets/notes/aa.mp3": "1075ee0e80468637222bd19caa103130",
"assets/packages/sound_service/assets/notes/e4.mp3": "7c0d421e27f0a6a4392613cedf0c6305",
"assets/packages/sound_service/assets/notes/G_1s.mp3": "0be6dea2df20ccfbfa45627326145469",
"assets/packages/sound_service/assets/notes/D_1f.mp3": "6eff8df8419bf16f659e61a4b4547be0",
"assets/packages/sound_service/assets/notes/a4f.mp3": "f5206fad7b122d3aa7de0c869552c9ff",
"assets/packages/sound_service/assets/notes/b%2520high.mp3": "b240badf5da0dcbade1a1860fcdbb01c",
"assets/packages/sound_service/assets/notes/d4.mp3": "471cd39728fe50c5414fc90e04a1782f",
"assets/packages/sound_service/assets/notes/ee1f.mp3": "0d023dbc652a457a025affc39f1f933f",
"assets/packages/sound_service/assets/notes/g2f.mp3": "ebfb2476a55d85f742b5a69f3f34bdbb",
"assets/packages/sound_service/assets/notes/a4.mp3": "cb59f559b98a9153eb5676eaa229c1f8",
"assets/packages/sound_service/assets/notes/cc1.mp3": "9490f642c28f30c44be6ceacf749c146",
"assets/packages/sound_service/assets/notes/A_2s.mp3": "f9d56ccd579605bae92da1c18b542766",
"assets/packages/sound_service/assets/notes/c3.mp3": "29785edf31377565e5bbe060c112ff6c",
"assets/packages/sound_service/assets/notes/Bf.mp3": "46f4f52a3ea7989a71cdbbfa4f547b03",
"assets/packages/sound_service/assets/notes/g4s.mp3": "7342011ef874fcb8e7ff1785a1a16e0d",
"assets/packages/sound_service/assets/notes/g3f.mp3": "9afe484e782a706741566176b30cdd3f",
"assets/packages/sound_service/assets/notes/Gf.mp3": "8845ba3473b683940161eb8dbd0005ba",
"assets/packages/sound_service/assets/notes/d4s.mp3": "8911b60a42e9267e85f637d5f6742b39",
"assets/packages/sound_service/assets/notes/B_2f.mp3": "11c4278b83f0d02c54c98ce940511dee",
"assets/packages/sound_service/assets/notes/e1f.mp3": "0d023dbc652a457a025affc39f1f933f",
"assets/packages/sound_service/assets/notes/Af.mp3": "642c42708036e2f384680a7a17058fe7",
"assets/packages/sound_service/assets/notes/eef.mp3": "f220d9ab917a1c80452d7b198ef53dd6",
"assets/packages/sound_service/assets/notes/Fs.mp3": "2435740f7bdef59f941e44f24c71dcae",
"assets/packages/sound_service/assets/notes/bbf.mp3": "d5e2ed9cc4eb3ec965317b15536e4fbb",
"assets/packages/sound_service/assets/notes/F.mp3": "098779c1aef525eecadb337cfa22a9e4",
"assets/packages/sound_service/assets/notes/a1.mp3": "d2cc347b11aea0896e3520d86ca00324",
"assets/packages/sound_service/assets/notes/Gs.mp3": "e0798fb2a804f6d185822478d40d0228",
"assets/packages/sound_service/assets/notes/b2f.mp3": "4c16ab98dbdcf56ec6ed61f63cf11c45",
"assets/packages/sound_service/assets/notes/d3f.mp3": "f79bea02f202bb535f77b0d43623af0d",
"assets/packages/sound_service/assets/notes/b2.mp3": "8087f3fe9b2463d343e98cfa3270ea6e",
"assets/packages/sound_service/assets/notes/c2s.mp3": "9161a3ba05404dad310a75acaad99793",
"assets/packages/sound_service/assets/notes/ee.mp3": "fb3ff5518333a0da3071f267bb7d4305",
"assets/packages/sound_service/assets/notes/a1s.mp3": "620c5ca35fdfd74c4a6c22b4e4fe26c8",
"assets/packages/sound_service/assets/notes/f4s.mp3": "2c99e7b6ef4c828cfd4496f0542c11f9",
"assets/packages/sound_service/assets/notes/d3.mp3": "65272a316ecd993a4e247a4708f710df",
"assets/packages/sound_service/assets/notes/c1s.mp3": "1e735705395e0fbeeb711a774d3aa842",
"assets/packages/sound_service/assets/notes/g1f.mp3": "4e0d83876de11e6c9c86030aefaca56e",
"assets/packages/sound_service/assets/notes/d1f.mp3": "175963deecb0deaa14e896076bd81eac",
"assets/packages/sound_service/assets/notes/g1.mp3": "f729fed98e110910be49141e9764b66f",
"assets/packages/sound_service/assets/notes/ccs.mp3": "d7895c89faf2f33b7908327d91e86f3e",
"assets/packages/sound_service/assets/notes/g2s.mp3": "c62353c481d289a4b11cde277acbf74d",
"assets/packages/sound_service/assets/notes/G_1f.mp3": "1f5fc8345ab75a024b562591c07bd78b",
"assets/packages/sound_service/assets/notes/B_1.mp3": "58ab1b20aa70b76ffb19a4d3462ae1f0",
"assets/packages/sound_service/assets/notes/e2.mp3": "cb0194818613456bd59a4ba66148738f",
"assets/packages/sound_service/assets/notes/E_1.mp3": "9f6a863c9bedf3524ba727e7d4ea98cb",
"assets/packages/sound_service/assets/notes/A.mp3": "e21ecb96de246f8b8a455a957dc2db4c",
"assets/packages/sound_service/assets/notes/f2.mp3": "e52661017cc062e4f90ce4fa1a5ccb61",
"assets/packages/sound_service/assets/notes/g1s.mp3": "45c0936e99021308aef395db038565da",
"assets/packages/sound_service/assets/notes/B_1f.mp3": "f931eb45da39e37324705a9008fb1e9c",
"assets/packages/sound_service/assets/notes/A_2.mp3": "215ce16d9a87c7f10adf3fbae4fe0bf0",
"assets/packages/sound_service/assets/notes/a4s.mp3": "d4ce61fbd52c84775ba557369da1deb1",
"assets/packages/sound_service/assets/notes/ggf.mp3": "51b4d79c89df56962c1d84e97c664e15",
"assets/packages/sound_service/assets/notes/a2f.mp3": "c1d14a515c7a6b7ca2592fd51a7a8dd0",
"assets/packages/sound_service/assets/notes/E_1f.mp3": "9b884d5b4b92e936ecf5c3dd1df1b078",
"assets/packages/sound_service/assets/notes/gg.mp3": "71208e4a9112d3a10d61e572064669ba",
"assets/packages/sound_service/assets/notes/a3f.mp3": "83c6f06cfb87a683d592b84c37fdd641",
"assets/packages/sound_service/assets/notes/a1f.mp3": "927abd8363396b956949eef0efd41c47",
"assets/packages/sound_service/assets/notes/ffs.mp3": "d6720aea8fa0a9aae354846e28c9fa6c",
"assets/packages/sound_service/assets/notes/G.mp3": "bf387d98a87bfadcc814a65e3a246b2c",
"assets/packages/sound_service/assets/notes/b1.mp3": "361ddd5b907374b60637da9cd6e350f2",
"assets/packages/sound_service/assets/notes/D_1s.mp3": "ae20f2647361841062f0389b75b688da",
"assets/packages/sound_service/assets/notes/B.mp3": "51f1e1fda2d881aa81d16434b1cdc630",
"assets/packages/sound_service/assets/notes/a3.mp3": "9c96063874478ea403c2f762a51f86d5",
"assets/packages/sound_service/assets/notes/g2.mp3": "489529f9da6aba54856ab614d72af86a",
"assets/packages/sound_service/assets/notes/ee1.mp3": "c906cae67f96785032527e62d843741d",
"assets/packages/sound_service/assets/notes/f3s.mp3": "87d2e351fb44250904064165da88e65c",
"assets/packages/sound_service/assets/notes/C_1s.mp3": "69c644780c4c4f6f8dd54fcf760b5d67",
"assets/packages/sound_service/assets/notes/dd1f.mp3": "175963deecb0deaa14e896076bd81eac",
"assets/packages/sound_service/assets/notes/a3s.mp3": "a10ae53a32b0a75648d372c1d6a9e5ba",
"assets/packages/sound_service/assets/notes/b4f.mp3": "d4ce61fbd52c84775ba557369da1deb1",
"assets/packages/sound_service/assets/notes/c5.mp3": "294170dc3b9551059e40b178704eea75",
"assets/packages/sound_service/assets/notes/d1.mp3": "29047ab1477e4ba4d0a3cc3bb4f5d506",
"assets/packages/sound_service/assets/notes/F_1.mp3": "39c1e3df562c0e246119b690cfbae4d3",
"assets/packages/sound_service/assets/notes/Ef.mp3": "51d337b9ec890ac6360dbc80f4d1bcaf",
"assets/packages/sound_service/assets/notes/B_2.mp3": "e6d36fecac1cb58c6c0e451480e7bdf2",
"assets/packages/sound_service/assets/notes/b3.mp3": "e6fa0fc48e98bf561cf21fb7e77bac2b",
"assets/packages/sound_service/assets/notes/C_1.mp3": "6c9b44692908cceefabbbd517f6bf919",
"assets/packages/sound_service/assets/notes/cc1s.mp3": "21648837ac10588809e962dd18ebb924",
"assets/packages/sound_service/assets/notes/e2f.mp3": "e504bc81e6985b962e36035690e1f9b4",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/AssetManifest.json": "e87d6ab6432a52e594795237dc108de7",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"version.json": "2a87728d41cd15d58c8fc1338071af76",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"manifest.json": "d19dc292e879202587dd9faf5e858f96",
"main.dart.js": "ffdd676e199bfe0e1f5c9db094faed9c",
"index.html": "a6b398561e1eea2ebf4cb670f79cf3ff",
"/": "a6b398561e1eea2ebf4cb670f79cf3ff",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
