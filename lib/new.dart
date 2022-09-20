import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
class Pin extends StatefulWidget {
  const Pin({Key? key}) : super(key: key);

  @override
  State<Pin> createState() => _PinState();
}

class _PinState extends State<Pin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Pinput(),
      ),
    );
    
  }
}