// class ChangeMapWithKeyExample extends StatefulWidget {
//   // ignore: prefer_const_constructors_in_immutables
//   ChangeMapWithKeyExample({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _ChangeMapWithKeyExampleState createState() =>
//       _ChangeMapWithKeyExampleState();
// }

// class _ChangeMapWithKeyExampleState extends State<ChangeMapWithKeyExample> {
//   String currentMap = 'tiled/tiled_projects/test_map/test_map2.json';
//   Key bonfireKey = UniqueKey();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BonfireWidget(
//         key: bonfireKey,
//         joystick: Joystick(
//             // Joystick configuration
//             ),
//         player: MyPlayer(
//           Vector2(200, 200),
//         ),
//         map: WorldMapByTiled(currentMap),
//         // Other configurations
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             bonfireKey =
//                 UniqueKey(); // This will force a full rebuild of the BonfireWidget
//             if (currentMap == 'tiled/tiled_projects/test_map/test_map2.json') {
//               currentMap = 'tiled/tiled_projects/test_map/test_map.json';
//             } else {
//               currentMap = 'tiled/tiled_projects/test_map/test_map2.json';
//             }
//           });
//         },
//         child: const Icon(Icons.map),
//       ),
//     );
//   }
// }
