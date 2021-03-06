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

  List<Widget> _colorSelector() {
    List<Widget> colorItemList = List();

    for (var i = 0; i < colors.length; i++) {
      colorItemList
          .add(colorItem(colors[i], i == currentColorIndex, context, () {
        setState(() {
          currentColorIndex = i;
        });
      }));
    }
    return colorItemList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white10,
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
          Padding(
            padding: EdgeInsets.only(
              left: screenAwareSize(26, context),
              right: screenAwareSize(18, context),
            ),
            child: AnimatedCrossFade(
              firstChild: Text(
                desc,
                maxLines: 2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenAwareSize(10, context),
                  // fontFamily:
                ),
              ),
              secondChild: Text(
                desc,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenAwareSize(10, context),
                  // fontFamily:
                ),
              ),
              crossFadeState: isExpanded
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: Duration(milliseconds: 1000),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: screenAwareSize(26, context),
              right: screenAwareSize(18, context),
            ),
            child: GestureDetector(
              onTap: _expand,
              child: Text(
                isExpanded ? 'less' : 'more..',
                style: TextStyle(
                    color: Color(0xFFFB382F), fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(
            height: screenAwareSize(12, context),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: screenAwareSize(18, context),
              right: screenAwareSize(75, context),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Size',
                  style: TextStyle(
                    color: Color(0xFF949598),
                    fontSize: screenAwareSize(10, context),
                    // fontFamily:
                  ),
                ),
                Text(
                  'Quantity',
                  style: TextStyle(
                    color: Color(0xFF949598),
                    fontSize: screenAwareSize(10, context),
                    // fontFamily:
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: screenAwareSize(20, context),
              right: screenAwareSize(10, context),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: screenAwareSize(38, context),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: sizeNumlist.map((item) {
                      int index = sizeNumlist.indexOf(item);
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            currentSizeIndex = index;
                          });
                        },
                        child:
                            sizeItem(item, index == currentSizeIndex, context),
                      );
                    }).toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    width: screenAwareSize(100, context),
                    height: screenAwareSize(30, context),
                    decoration: BoxDecoration(
                      color: Color(0xFF525663),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Flexible(
                          flex: 3,
                          child: GestureDetector(
                            onTap: _decrease,
                            child: Container(
                              height: double.infinity,
                              child: Center(
                                child: Center(
                                  child: Text(
                                    '-',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      // fontFamily:
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        divider(),
                        Flexible(
                          flex: 3,
                          child: Container(
                            height: double.infinity,
                            child: Center(
                              child: Text(
                                _counter.toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  // fontFamily:
                                ),
                              ),
                            ),
                          ),
                        ),
                        divider(),
                        Flexible(
                          flex: 3,
                          child: GestureDetector(
                            onTap: _increase,
                            child: Container(
                              height: double.infinity,
                              child: Center(
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    // fontFamily:
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: screenAwareSize(18, context),
            ),
            child: Text(
              'Select Color',
              style: TextStyle(
                color: Color(0xFF949598),
                fontSize: screenAwareSize(10, context),
                // fontFamily:
              ),
            ),
          ),
          SizedBox(
            height: screenAwareSize(8, context),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: screenAwareSize(20, context)),
            height: screenAwareSize(34, context),
            child: Row(
              children: _colorSelector(),
            ),
          ),
          SizedBox(
            height: screenAwareSize(8, context),
          ),
          Padding(
            padding: EdgeInsets.only(left: screenAwareSize(20, context)),
            child: Text(
              'Price',
              style: TextStyle(
                color: Color(0xFF949598),
                // fontFamily:
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: screenAwareSize(100, context),
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    left: screenAwareSize(22, context),
                    right: screenAwareSize(22, context),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding:
                            EdgeInsets.only(left: screenAwareSize(22, context)),
                        child: Row(
                          children: <Widget>[
                            Text(
                              '\$',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: screenAwareSize(26, context),
                                // fontFamily:
                              ),
                            ),
                            SizedBox(width: screenAwareSize(2.0, context)),
                            Text(
                              "80",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: screenAwareSize(30.0, context),
                                // fontFamily: "Montserrat-Medium",
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenAwareSize(10.0, context),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: MaterialButton(
                          color: Color(0xFFFB382F),
                          padding: EdgeInsets.symmetric(
                            vertical: screenAwareSize(14.0, context),
                          ),
                          onPressed: () {},
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Add To Cart",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screenAwareSize(15.0, context))),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // Positioned(
                //   right: -40.0,
                //   bottom: -60.0,
                //   child: Icon(Icons.shopping_cart),

                //   // Image.asset("assets/cart.png",
                //   //     width: screenAwareSize(190.0, context),
                //   //     height: screenAwareSize(155.0, context),
                //   //     fit: BoxFit.cover),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget sizeItem(String size, bool isSelected, BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(left: 6),
    child: Container(
      width: screenAwareSize(30, context),
      height: screenAwareSize(30, context),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xFFFC3930) : Color(0xFF525663),
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
              color: isSelected ? Colors.black.withOpacity(.5) : Colors.black12,
              offset: Offset(0.0, 10.0),
              blurRadius: 10.0),
        ],
      ),
      child: Center(
        child: Text(
          size,
          style: TextStyle(
            color: Colors.white,
            // fontFamily:
          ),
        ),
      ),
    ),
  );
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

Widget divider() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
    child: Container(
      width: .8,
      color: Colors.black,
    ),
  );
}
