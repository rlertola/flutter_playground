import 'package:flutter/material.dart';
import 'package:flutter_playground2/widgets/home_screen/box.dart';

class CurvedTabBar extends StatelessWidget {
  static const routeName = '/curved_tab_bar';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tabs'),
          ),
          body: Center(
            child: Container(
              height: 300,
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                    width: 300,
                    height: 30,
                    child: TabBar(
                      indicatorColor: Colors.green,
                      labelPadding: EdgeInsets.zero,
                      tabs: <Widget>[
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                            ),
                          ),
                          child: Center(child: Text('tab 1')),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          child: Center(child: Text('tab 2')),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    width: 300,
                    height: 250,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

    //   return Container(
    //     child: MaterialApp(
    //       home: DefaultTabController(
    //         length: 3,
    //         child: Scaffold(
    //           appBar: AppBar(
    //             bottom: TabBar(
    //               tabs: [
    //                 Container(
    //                   decoration: BoxDecoration(
    //                     color: Colors.green,
    //                     borderRadius: BorderRadius.only(
    //                       topRight: Radius.circular(20),
    //                     ),
    //                   ),
    //                   width: double.infinity,
    //                   height: 50,
    //                   child: Text('hello'),
    //                 ),
    //                 Container(
    //                   decoration: BoxDecoration(
    //                     color: Colors.green,
    //                     borderRadius: BorderRadius.only(
    //                       topRight: Radius.circular(20),
    //                     ),
    //                   ),
    //                   width: double.infinity,
    //                   height: 50,
    //                   child: Text('hello'),
    //                 ),
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
    //     ),
    //   );
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
