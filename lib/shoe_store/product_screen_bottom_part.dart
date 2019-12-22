import 'package:flutter/material.dart';
import 'package:flutter_playground2/shoe_store/utils.dart';

class ProductScreenBottomPart extends StatefulWidget {
  @override
  _ProductScreenBottomPartState createState() =>
      _ProductScreenBottomPartState();
}

class _ProductScreenBottomPartState extends State<ProductScreenBottomPart> {
  bool isExpanded = false;
  int currentSizeIndex = 0;
  int currentColorIndex = 0;
  int _counter = 0;

  void _increase() {
    setState(() {
      _counter++;
    });
  }

  void _decrease() {
    setState(() {
      _counter--;
    });
  }

  void _expand() {
    setState(() {
      isExpanded ? isExpanded = false : isExpanded = true;
    });
  }

  List<Widget> colorSelector() {
    List<Widget> colorItemList = List();

    for (var i = 0; i < colors.length; i++) {
      colorItemList
          .add(colorItem(colors[i], i == currentColorIndex, context, () {
        setState(() {
          currentColorIndex = i;
        });
      }));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: screenAwareSize(12, context),
          ),
          Padding(
            padding: EdgeInsets.only(left: screenAwareSize(18, context)),
            child: Text(
              'Product Description',
              style: TextStyle(
                color: Color(0xFF949598),
                fontSize: screenAwareSize(10, context),
              ),
            ),
          ),
          SizedBox(
            height: screenAwareSize(8, context),
          ),

          //
          //
          //
          //
          // LEFT OFF HERE - LINE 207 of GH
          //
          //
          //
          //
        ],
      ),
    );
  }
}

Widget colorItem(
    Color color, bool isSelected, BuildContext context, VoidCallback _onTab) {
  return GestureDetector(
    onTap: _onTab,
    child: Padding(
      padding: EdgeInsets.only(
        left: screenAwareSize(10, context),
      ),
      child: Container(
        width: screenAwareSize(30, context),
        height: screenAwareSize(30, context),
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(5),
            boxShadow: isSelected
                ? [
                    BoxShadow(
                      color: Colors.black.withOpacity(.8),
                      blurRadius: 10,
                      offset: Offset(0.0, 10.0),
                    )
                  ]
                : []),
        child: ClipPath(
          clipper: MClipper(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: color,
          ),
        ),
      ),
    ),
  );
}

class MClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height);
    path.lineTo(size.width * 0.2, size.height);
    path.lineTo(size.width, size.height * 0.2);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
