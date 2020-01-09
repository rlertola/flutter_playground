import 'package:flutter/material.dart';

class CurvedTabBar extends StatelessWidget {
  static const routeName = '/curved_tab_bar';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.directions_car)),
                  Tab(icon: Icon(Icons.directions_transit)),
                  Tab(icon: Icon(Icons.directions_bike)),
                ],
              ),
              title: Text('Tabs Demo'),
            ),
            body: TabBarView(
              children: [
                Icon(Icons.directions_car),
                Icon(Icons.directions_transit),
                Icon(Icons.directions_bike),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// @override
// Widget build(BuildContext context) {
//   return new Container(
//     height: 80.0,
//     child: new TabBarView(
//       controller: null,
//       children: <Widget>[
//         new Card(
//           child: new ListTile(
//             leading: const Icon(Icons.home),
//             title: new TextField(
//               decoration:
//                   const InputDecoration(hintText: 'Search for address...'),
//             ),
//           ),
//         ),
//         new Card(
//           child: new ListTile(
//             leading: const Icon(Icons.location_on),
//             title: new Text('Latitude: 48.09342\nLongitude: 11.23403'),
//             trailing: new IconButton(
//                 icon: const Icon(Icons.my_location), onPressed: () {}),
//           ),
//         ),
//       ],
//     ),
//   );

// MaterialApp(
//       home: DefaultTabController(
//         length: 3,
//         child: Scaffold(
//           appBar: AppBar(
//             bottom: TabBar(
//               tabs: [
//                 Tab(icon: Icon(Icons.directions_car)),
//                 Tab(icon: Icon(Icons.directions_transit)),
//                 Tab(icon: Icon(Icons.directions_bike)),
//               ],
//             ),
//             title: Text('Tabs Demo'),
//           ),
//           body: TabBarView(
//             children: [
//               Icon(Icons.directions_car),
//               Icon(Icons.directions_transit),
//               Icon(Icons.directions_bike),
//             ],
//           ),
//         ),
//       ),
//     );
