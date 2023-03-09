import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Container(
        height: height,
        child: Stack(
          children: [
            _headSection(),
          ],
        ),
      ),
    );
  }

  _headSection() {
    return Container(
      height: 310,
      child: Stack(
        children: [
          _mainBackground(),
          _curvedImageContainer(),
          _buttonContainer(),
        ],
      ),
    );
  }

  _mainBackground() {
    return Positioned(
        bottom: 10,
        left: 0,
        child: Container(
          height: 300,
          width: MediaQuery.of(context).size.width * 0.1,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/background.png"),
                  fit: BoxFit.cover)),
        ));
  }

  _curvedImageContainer() {
    return Positioned(
      left: 0,
      right: -2,
      bottom: 10,
      child: Container(
        height: MediaQuery.of(context).size.height * 0 / 1,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/curve.png"), fit: BoxFit.cover)),
      ),
    );
  }

  _buttonContainer() {
    return Positioned(
      bottom: 10,
      right: 58,
      child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/lines.png')),
              boxShadow: [
                BoxShadow(
                    blurRadius: 15,
                    offset: Offset(0, 1),
                    color: Color(0xFF11324d).withOpacity(0.2))
              ])),
    );
  }
}
