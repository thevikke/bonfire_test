'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "2457b387253dd85ec8e5369a57f05735",
"assets/AssetManifest.json": "ddb2f8634f969e5419e34adf8e12c7e2",
"assets/assets/audio/test_sound.mp3": "99aadd6efe3d36496eb822a9da444a8d",
"assets/assets/images/enemy/atack_effect_bottom.png": "aaeb1a8e791a0f15ba911e1d2540ab32",
"assets/assets/images/enemy/atack_effect_left.png": "9c99ad913fcc75ce253f8db53faa846f",
"assets/assets/images/enemy/atack_effect_right.png": "15831f9ccee22a845e854ccb3d18f6e5",
"assets/assets/images/enemy/atack_effect_top.png": "df3eeb246450bf06de6dfc325d0bdbd0",
"assets/assets/images/enemy/cucumber_run_left.png": "bb6dd36f83a084c807acd0772bdc5a24",
"assets/assets/images/enemy/cucumber_yell_run_left.png": "abb467b4bf7589e96a8fa56718fc7bca",
"assets/assets/images/enemy/cumber_die_left.png": "264edfd386f745a03d4f6e0af42e6fc5",
"assets/assets/images/enemy/cumber_die_right.png": "8ae592991c6b57728f182053ad6c182d",
"assets/assets/images/enemy/cumber_idle.png": "f7e91b96407f80d629e0b122d49f647f",
"assets/assets/images/enemy/cumber_idle_left.png": "19bd694945080e4461c89ae59b5b99a3",
"assets/assets/images/enemy/cumber_run.png": "20cb8039012c98e8052e380eda24a0c9",
"assets/assets/images/enemy/cumber_spit.png": "09852c6cc414783df888cf8f0f05780e",
"assets/assets/images/enemy/cumber_spit_left.png": "58ce965caac29f4719a46a18cf5368e2",
"assets/assets/images/enemy/cumber_yell_die_left.png": "77f9321a0c32ba4a044a20f442566512",
"assets/assets/images/enemy/cumber_yell_die_right.png": "84d84cac3aa6f882dba05579eaa67323",
"assets/assets/images/enemy/cumber_yell_idle.png": "61b7c860b40a752e16152d36ede35277",
"assets/assets/images/enemy/cumber_yell_idle_left.png": "97b2fc33c85af9971d8f227fb3c64ba8",
"assets/assets/images/enemy/cumber_yell_run.png": "3265637f54d5b8a0ecad7a6d2060cd15",
"assets/assets/images/enemy/cumber_yell_spit.png": "b2ca2bb43372721166809ce29459c30a",
"assets/assets/images/enemy/cumber_yell_spit_left.png": "f63aa9a46c40a3d50038f4c167099af3",
"assets/assets/images/enemy/goblin_idle.png": "8c97e935786b994c3cff4008212381b9",
"assets/assets/images/enemy/goblin_idle_left.png": "a7563675f85ed259b2d0aae50ded196b",
"assets/assets/images/enemy/goblin_run_left.png": "05863189b562610b17a062114c7849a9",
"assets/assets/images/enemy/goblin_run_right.png": "565c2f9a0bb01a9c56975664f8cd375c",
"assets/assets/images/enemy/kurkun%2520puhkunta.png": "1bd95e8f8236a3e16647d1f5c565af33",
"assets/assets/images/interface/health_ui.png": "effe9c92ee658e487859ff0848c4289a",
"assets/assets/images/items/barrel.png": "dc4d5a9e456b6f1c6ec6fdcc66af7727",
"assets/assets/images/items/bookshelf.png": "ce2fc17cb8251da9966a3e91bb0b2272",
"assets/assets/images/items/chest_spritesheet.png": "bcc8785d27d816e23eca114dd4e708ed",
"assets/assets/images/items/column.png": "2ccdc666f36fef12bb99345d4c6c9d66",
"assets/assets/images/items/flag_green.png": "1a5a7df4b10a84b0a722b3b6600198dd",
"assets/assets/images/items/flag_red.png": "6aca7b9e01f86f1b1a45e262e65821b8",
"assets/assets/images/items/potion_life.png": "825b71a3532854e849d512683dba06b0",
"assets/assets/images/items/prisoner.png": "45dcdd9a419bcd1f39cfd78024865578",
"assets/assets/images/items/spikes.png": "8ee92dd121da5fc50964a6a68e3e262c",
"assets/assets/images/items/table.png": "5e22fb237c60943f46ba18d5e176c10c",
"assets/assets/images/items/torch_spritesheet.png": "858f57abd642f0303de50d719532f198",
"assets/assets/images/player/atack_effect_bottom.png": "e2406062be291971a034123fdd1757f9",
"assets/assets/images/player/atack_effect_left.png": "5b5475da758d76f79c34429f70f7f6af",
"assets/assets/images/player/atack_effect_right.png": "39b3d8583205c90284cd60f0e018f29d",
"assets/assets/images/player/atack_effect_top.png": "7b01845d595c3803a07567ee87710658",
"assets/assets/images/player/attack_slice.png": "beba77fb533926f190bec337ae145632",
"assets/assets/images/player/bear_attack.png": "831a68d74af2777d7aa1a168c8cf2055",
"assets/assets/images/player/bear_flip.png": "a1dd556128d8471af8a2105ca674b900",
"assets/assets/images/player/bear_idle.png": "26be29a9345f95fd5552f939746450ed",
"assets/assets/images/player/bear_idle_alt.png": "3bb713e3ba52105149237cbdfa388908",
"assets/assets/images/player/bear_slice.png": "74c899dc669cd13501d22c031baf6961",
"assets/assets/images/player/bear_slice_alt.png": "66063922c3ebf092eadb75a27613f91d",
"assets/assets/images/player/bear_walk.png": "e56142afd51c77348473434ff9fc66b5",
"assets/assets/images/player/bear_walk_alt.png": "70698b51d9b1a0ffc6cb85d568f6bb47",
"assets/assets/images/player/crypt.png": "8e55febc1e2563a9d7ba4b48625ba88d",
"assets/assets/images/player/emote_exclamacao.png": "8b1897ae92f3a077e0aadaef2626d65a",
"assets/assets/images/player/explosion_fire.png": "81a3691935a18a30572870b759ad1683",
"assets/assets/images/player/fireball_bottom.png": "05522f950d8d60e15615ee9705ff2ef0",
"assets/assets/images/player/fireball_left.png": "cb3370c9039ec112af7bee6edf3e342d",
"assets/assets/images/player/fireball_right.png": "aaa2c18fe241c16e95be131619693b80",
"assets/assets/images/player/fireball_top.png": "e9a76f3ea950d6bc22f8f4cd3a22d7e3",
"assets/assets/images/player/knight_idle.png": "191737282656dd3c8851a2dd3dfc1c0c",
"assets/assets/images/player/knight_idle_left.png": "e4ddca181210b0cf9555331aaf2af512",
"assets/assets/images/player/knight_run.png": "9cac5c91f943ba81915573bd93060d4d",
"assets/assets/images/player/knight_run_left.png": "ce9f3ad71135b459f6b66c892b5b9e30",
"assets/assets/images/player/pirate.png": "3129a70b4ba971c0b0f99c386fb4b2ab",
"assets/assets/images/tiled/tiled_projects/examples/top_down/map.json": "73957553a68d3d24620660a435a39c5a",
"assets/assets/images/tiled/tiled_projects/examples/top_down/tilesheet.json": "03d43534a53b04a4a761aaffc7a3ff71",
"assets/assets/images/tiled/tiled_projects/examples/top_down/tilesheet.png": "bbd9628ccc0e7734c82ca71591f15c7e",
"assets/assets/images/tiled/tiled_projects/example_map/untitled.tiled-session": "91ae8e655c434112f2bd8a90299b5fe0",
"assets/assets/images/tiled/tiled_projects/SyysJam23Tiled/Ground.png": "ac8cd9ab21d552ce8d13c5ccbdf15537",
"assets/assets/images/tiled/tiled_projects/SyysJam23Tiled/Syysjam23.tiled-project": "f569bfd3353c5a0faa26a765cae42f0d",
"assets/assets/images/tiled/tiled_projects/SyysJam23Tiled/Syysjam23.tiled-session": "66702e2bd8f46ebe2d584c3cad6ceb3c",
"assets/assets/images/tiled/tiled_projects/SyysJam23Tiled/Syysjam23Map.json": "3f6fc325da804f56ec5761dfa98b1a2f",
"assets/assets/images/tiled/tiled_projects/SyysJam23Tiled/Syysjam23Map.tmx": "d61b84c706b6c12f6a95e3467b9b533a",
"assets/assets/images/tiled/tiled_projects/test_map/0x72_DungeonTilesetII_v1.3.tsx": "22b487097c63b6cee74f18e05eb037ee",
"assets/assets/images/tiled/tiled_projects/test_map/mapa1.json": "8e31edf4a48e18fcd921c4866fc369be",
"assets/assets/images/tiled/tiled_projects/test_map/testi_kartta.tiled-project": "f569bfd3353c5a0faa26a765cae42f0d",
"assets/assets/images/tiled/tiled_projects/test_map/testi_kartta.tiled-session": "2cb3a892d16057c27b3f8eea81974cc1",
"assets/assets/images/tiled/tiled_projects/test_map/test_map.json": "6044b43cffd15ca37f986cbeadb6a68d",
"assets/assets/images/tiled/tiled_projects/test_map/test_map2.json": "40ab9a096bfa921b75f9a7158e32aab7",
"assets/assets/images/tiled/tiled_projects/test_map/untitled.tmx": "d5ee6a7f5bf1812ba8606ccfd84217dd",
"assets/assets/images/tiled/tileset/0x72_DungeonTilesetII_v1.3.png": "99ee27544da829bed54efd1f22e5a588",
"assets/assets/images/tiled/tileset/0x72_DungeonTilesetII_v1.json": "4ff2b5a15607fe7bd92f708093d0021e",
"assets/assets/images/tiled/tileset/tileset1.8.tsj": "57a43cb70d463bbcab6c64b56d146ce8",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "32fce58e2acb9c420eab0fe7b828b761",
"assets/NOTICES": "c8583af4e10280444fffd8c41b1c2385",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/canvaskit.wasm": "42df12e09ecc0d5a4a34a69d7ee44314",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "be0e3b33510f5b7b0cc76cc4d3e50048",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "1a074e8452fe5e0d02b112e22cdcf455",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "143e8c6d1cfbe2b37ca51646b6fca9b1",
"/": "143e8c6d1cfbe2b37ca51646b6fca9b1",
"main.dart.js": "a411363f807cfb90d883efc8bac73974",
"manifest.json": "a0844743dde288274d7a03ef5551784d",
"version.json": "412dfc442908f780d292e2a70908ce91"};
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
