import 'package:flutter/material.dart';

const double kSizedBoxWidth = 14;

class FlightTile extends StatelessWidget {
  final String from;
  final String to;

  FlightTile({this.from, this.to});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,

      // margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white54,
      ),
      child: buildContainer(from, to, context),
    );
  }

  buildContainer(from, to, context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Flexible(
          flex: 2,
          fit: FlexFit.tight,
          child: Container(
            child: CircleAvatar(
              child: Icon(Icons.map),
            ),
          ),
        ),
        Flexible(
          flex: 2,
          fit: FlexFit.tight,
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'From',
                  style: TextStyle(
                    color: Color(0xFFd7dcea),
                    fontSize: 18,
                  ),
                ),
                Text(
                  from,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 18,
            // horizontal: 14,
          ),
          child: VerticalDivider(
            width: 4,
            color: Color(0xFFd7dcea),
          ),
        ),
        SizedBox(
          width: 30,
        ),
        Flexible(
          flex: 3,
          fit: FlexFit.tight,
          child: Container(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'To',
                  style: TextStyle(
                    color: Color(0xFFd7dcea),
                    fontSize: 18,
                  ),
                ),
                Text(
                  to,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

//   Container buildContainer(from, to) {
//     return Container(
//       width: 275,
//       child: Row(
//         children: <Widget>[
//           Container(
//             color: Colors.black12,
//             width: 120,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text('From',
//                     style: TextStyle(fontSize: 18, color: Color(0xFF7B849B))),
//                 Text(
//                   from,
//                   style: TextStyle(fontSize: 20, color: Colors.black),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             width: kSizedBoxWidth,
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 16),
//             child: VerticalDivider(
//               width: 0,
//               thickness: 1,
//               color: Color(0xFFAEBEDB),
//             ),
//           ),
//           SizedBox(
//             width: kSizedBoxWidth,
//           ),
//           Container(
//             color: Colors.black12,
//             width: 120,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text('To',
//                     style: TextStyle(fontSize: 18, color: Color(0xFF7B849B))),
//                 Text(
//                   to,
//                   style: TextStyle(fontSize: 20, color: Colors.black),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
