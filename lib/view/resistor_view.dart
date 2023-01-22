import 'package:flutter/material.dart';
import 'package:band_test/model/color_code.dart';

class Resistor extends StatefulWidget {
  Resistor({Key? key}) : super(key: key);

  @override
  State<Resistor> createState() => _ResistorState();
}

class _ResistorState extends State<Resistor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Center(
            child: Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                  color: resistorColor,
                  borderRadius: BorderRadius.all(Radius.circular(60))),
            ),
          ),
          Center(
            child: Container(
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 100,
                    width: 15,
                    color: factorsColors[0],
                  ),
                  Container(
                    height: 100,
                    width: 15,
                    color: factorsColors[1],
                  ),
                  Container(
                    height: 100,
                    width: 15,
                    color: factorsColors[2],
                  ),
                  Container(
                    height: 100,
                    width: 15,
                    color: factorsColors[3],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
