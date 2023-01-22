import 'package:band_test/model/color_code.dart';
import 'package:band_test/model/factors.dart';
import 'package:band_test/view/resistor_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var que = factors[factorNo];
  var digit1_value = '';
  var digit2_value = '';
  var multiplier_value = '';
  var tolerance_value = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('4 Band Resistor Calculator'),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const SizedBox(
              height: 50,
            ),
            Resistor(),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: Center(
                child: (digit1_value != '')
                    ? Text(
                        ' $digit1_value . $digit2_value  x  $multiplier_value  Ω ±   $tolerance_value %',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 121, 3, 3),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )
                    : Text(''),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Choose $que from the below options...'),
            ),
            Container(
              decoration: BoxDecoration(
                color: optionColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  for (var k in colorCode.keys)
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 60,
                              child: Text(
                                '$k\t',
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: colorCode[k]![4],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          setState(
                            () {
                              factorsValue![factorNo] = colorCode[k]![factorNo];
                              digit1_value = factorsValue![0];
                              digit2_value = factorsValue![1];
                              multiplier_value = factorsValue![2];
                              tolerance_value = factorsValue![3];
                              factorsColors[factorNo] = colorCode[k]![4];
                              if (factorNo == 3) {
                                factorNo = 0;
                              } else {
                                factorNo++;
                              }
                              que = factors[factorNo];
                            },
                          );
                        },
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
