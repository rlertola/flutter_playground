import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'dart:math';

class CircleButton extends StatelessWidget {
  static const routeName = '/circle-button';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 500,
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  ClipOval(
                    child: Material(
                      color: Colors.blue, // button color
                      child: InkWell(
                        splashColor: Colors.red, // inkwell color
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text('Projects'),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ClipOval(
                    child: Material(
                      color: Colors.blue, // button color
                      child: InkWell(
                        splashColor: Colors.red, // inkwell color
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text('About'),
                          ),
                        ),
                        onTap: () {
                          print('about');
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  ClipOval(
                    child: Material(
                      color: Colors.blue, // button color
                      child: InkWell(
                        splashColor: Colors.red, // inkwell color
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text('Contact'),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// return Scaffold(
//       body: SafeArea(
//         child: Container(
//           child: Center(
//             child: Container(
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.transparent,
//               ),
//               height: 400,
//               width: 400,
//               child: Stack(
//                 fit: StackFit.expand,
//                 children: <Widget>[
//                   CustomPaint(
//                     painter: BluePainter(),
//                   ),
//                   CustomPaint(
//                     painter: GreenPainter(),
//                   ),
//                   CustomPaint(
//                     painter: YellowPainter(),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );

// class BluePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paintBlue = Paint()
//       ..style = PaintingStyle.fill
//       ..strokeWidth = 4.0
//       ..color = Colors.blue;

//     canvas.drawArc(
//       Rect.fromLTWH(
//         0.0,
//         0.0,
//         size.width,
//         size.height,
//       ),
//       0,
//       2 * pi / 3,
//       true,
//       paintBlue,
//     );
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }

// class GreenPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paintGreen = Paint()
//       ..style = PaintingStyle.fill
//       ..strokeWidth = 4.0
//       ..color = Colors.green;

//     canvas.drawArc(
//       Rect.fromLTWH(
//         0.0,
//         0.0,
//         size.width,
//         size.height,
//       ),
//       0,
//       -2 * pi / 3,
//       true,
//       paintGreen,
//     );
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }

// class YellowPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paintYellow = Paint()
//       ..style = PaintingStyle.fill
//       ..strokeWidth = 4.0
//       ..color = Colors.yellow;

//     canvas.drawArc(
//       Rect.fromLTWH(
//         0.0,
//         0.0,
//         size.width,
//         size.height,
//       ),
//       2 * pi / 3,
//       2 * pi / 3,
//       true,
//       paintYellow,
//     );
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }

// class SectionPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paintBlue = Paint()
//       ..style = PaintingStyle.fill
//       ..strokeWidth = 4.0
//       ..color = Colors.blue;

//     final paintGreen = Paint()
//       ..style = PaintingStyle.fill
//       ..strokeWidth = 4.0
//       ..color = Colors.green;

//     final paintYellow = Paint()
//       ..style = PaintingStyle.fill
//       ..strokeWidth = 4.0
//       ..color = Colors.yellow;

//     canvas.drawArc(
//       Rect.fromLTWH(
//         0.0,
//         0.0,
//         size.width,
//         size.height,
//       ),
//       0,
//       2 * pi / 3,
//       true,
//       paintBlue,
//     );

//     canvas.drawArc(
//       Rect.fromLTWH(
//         0.0,
//         0.0,
//         size.width,
//         size.height,
//       ),
//       0,
//       -2 * pi / 3,
//       true,
//       paintGreen,
//     );

//     canvas.drawArc(
//       Rect.fromLTWH(
//         0.0,
//         0.0,
//         size.width,
//         size.height,
//       ),
//       2 * pi / 3,
//       2 * pi / 3,
//       true,
//       paintYellow,
//     );
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }

// PieChart(
//       dataMap: dataMap,
//       animationDuration: Duration(milliseconds: 800),
//       // chartLegendSpacing: 32.0,
//       chartRadius: MediaQuery.of(context).size.width / 1.2,
//       showChartValuesInPercentage: false,
//       showChartValues: false,
//       showChartValuesOutside: false,
//       chartValueBackgroundColor: Colors.grey[200],
//       // colorList: colorList,
//       showLegends: false,
//       // legendPosition: LegendPosition.
//       decimalPlaces: 0,
//       showChartValueLabel: false,
//       initialAngle: .5,
//       chartValueStyle: defaultChartValueStyle.copyWith(
//         color: Colors.blueGrey[900].withOpacity(0.9),
//       ),
//       chartType: ChartType.disc,
//     );
