import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class CircleButton extends StatelessWidget {
  static const routeName = '/circle-button';

  Map<String, double> dataMap = {"": 1, "react": 1, "asldfj": 1};

  @override
  Widget build(BuildContext context) {
    return PieChart(
      dataMap: dataMap,
      animationDuration: Duration(milliseconds: 800),
      // chartLegendSpacing: 32.0,
      chartRadius: MediaQuery.of(context).size.width / 1.2,
      showChartValuesInPercentage: false,
      showChartValues: false,
      showChartValuesOutside: false,
      chartValueBackgroundColor: Colors.grey[200],
      // colorList: colorList,
      showLegends: false,
      // legendPosition: LegendPosition.
      decimalPlaces: 0,
      showChartValueLabel: false,
      initialAngle: .5,
      chartValueStyle: defaultChartValueStyle.copyWith(
        color: Colors.blueGrey[900].withOpacity(0.9),
      ),
      chartType: ChartType.disc,
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
//                 color: Colors.red,
//               ),
//               height: 300,
//               width: 300,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   Expanded(
//                     child: Container(
//                       // width: 300,
//                       color: Colors.blue,
//                       child: Text('Button'),
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(
//                       color: Colors.green,
//                       child: Text('Button'),
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(
//                       color: Colors.yellow,
//                       child: Text('Button'),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
