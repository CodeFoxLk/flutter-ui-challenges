import 'package:flutter/material.dart';
import 'package:flutter_ui/tesla_app/configs/colors.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    iconSize: 30,
                    splashRadius: 25,
                    icon: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.white,
                    )),
                Text(
                  'Diagnostics',
                  style: TextStyle(fontSize: 25),
                ),
                Spacer(),
                Text(
                  'MODEL X',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: kCardGradient),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    height: 600,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Text(
                            'Overall Health',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: buttonGradient),
                              child: IconButton(
                                  iconSize: 35,
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.replay_rounded,
                                    color: Colors.white,
                                  ))),
                        ),
                        Positioned(
                            top: 0,
                            right: 0,
                            left: 0,
                            child: SizedBox(
                              width: 350,
                              height: 650,
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Center(
                                      child: Container(
                                        width: 230,
                                        height: 230,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: kPrimaryColor),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: SizedBox(width: 350, height: 350, child: CustomRipple()),
                                  ),
                                  Positioned(
                                      top: 100,
                                      right: 40,
                                      child: SizedBox(
                                          width: 100,
                                          height: 100,
                                          child: CustomRipple())),
                                  Positioned(
                                      top: 115,
                                      right: 55,
                                      child: SizedBox(
                                          width: 70,
                                          height: 70,
                                          child: CustomRipple())),
                                  Positioned(
                                      top: 100,
                                      left: 40,
                                      child: SizedBox(
                                          width: 100,
                                          height: 100,
                                          child: CustomRipple())),
                                  Positioned(
                                      top: 115,
                                      left: 55,
                                      child: SizedBox(
                                          width: 70,
                                          height: 70,
                                          child: CustomRipple())),
                                  Positioned(
                                      bottom: 100,
                                      right: 40,
                                      child: SizedBox(
                                          width: 100,
                                          height: 100,
                                          child: CustomRipple())),
                                  Positioned(
                                      bottom: 115,
                                      right: 55,
                                      child: SizedBox(
                                          width: 70,
                                          height: 70,
                                          child: CustomRipple())),
                                  Positioned(
                                      bottom: 100,
                                      left: 40,
                                      child: SizedBox(
                                          width: 100,
                                          height: 100,
                                          child: CustomRipple())),
                                  Positioned(
                                      bottom: 115,
                                      left: 55,
                                      child: SizedBox(
                                          width: 70,
                                          height: 70,
                                          child: CustomRipple())),
                                  Center(
                                    child: SizedBox(
                                      height: 650,
                                      child: Image.asset(
                                        'lib/tesla_app/images/bird_view_tesla.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                  Text('Battery Health',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 20,
                  ),
                  LinearPercentIndicator(
                    animation: true,
                    backgroundColor: kProgressBackGroundColor.withOpacity(0.5),
                    percent: 0.8,
                    lineHeight: 20,
                    animationDuration: 2500,
                    center: Text('90.0%'),
                    linearGradient: LinearGradient(
                        colors: [kPrimaryColor, kSecondaryColor]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Text('Sensors',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Sensor(
                        value: 0.8,
                        label: 'Motors',
                      ),
                      Sensor(
                        value: 0.4,
                        label: 'Batery Temp',
                      ),
                      Sensor(
                        value: 0.9,
                        label: 'Brakes',
                      ),
                      Sensor(
                        value: 0.6,
                        label: 'Suspentions',
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Sensor extends StatelessWidget {
  const Sensor({
    Key? key,
    required this.value,
    required this.label,
  }) : super(key: key);

  final double value;
  final double heigth = 120.0;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 50,
              height: heigth,
              color: kProgressBackGroundColor.withOpacity(0.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: heigth * value,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            end: Alignment.topCenter,
                            begin: Alignment.bottomCenter,
                            colors: buttonGradient.colors)),
                  )
                ],
              ),
            )),
        SizedBox(
          height: 5,
        ),
        Text(label)
      ],
    );
  }
}

class CustomRipple extends StatefulWidget {
  CustomRipple({Key? key}) : super(key: key);

  @override
  _CustomRippleState createState() => _CustomRippleState();
}

class _CustomRippleState extends State<CustomRipple>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1200));
    _animation = Tween<double>(begin: 0.4, end: 0.8).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: kPrimaryColor, width: 8),
            shape: BoxShape.circle),
      ),
    );
  }
}
