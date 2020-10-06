import 'package:flutter/material.dart';

void main() {
  runApp(
    MyOwnWidget(),
  );
}

class MyOwnWidget extends StatefulWidget {
  @override
  _MyOwnWidgetState createState() => _MyOwnWidgetState();
}

class _MyOwnWidgetState extends State<MyOwnWidget> {
  bool _isShapeCircle = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _isShapeCircle = !_isShapeCircle;

        //#region expand later
//        setState(() {
//          _isShapeCircle = !_isShapeCircle;
//        });
        //#endregion
      },
      child: Container(
        decoration: BoxDecoration(
          shape: _isShapeCircle ? BoxShape.circle : BoxShape.rectangle,
          color: _isShapeCircle ? Colors.lime : Colors.lightGreen,
        ),
        alignment: Alignment.center,
        child: Text(
          'Hello, world!',
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.black, fontSize: 40),
        ),
      ),
    );
  }
}
