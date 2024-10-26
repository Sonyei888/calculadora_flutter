import 'package:calculadora_flutter/widgets/CalcButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const CalcApp());
}

class CalcApp extends StatefulWidget {
  const CalcApp({super.key});

  @override
  State<CalcApp> createState() => _CalcAppState();
}

class _CalcAppState extends State<CalcApp> {
  String _history = "";
  String _expression = "";

   void clear(String text) {
    setState(() {
      _expression = "";
    });
  }
  
  void allClear(String text){
    setState(() {
      _history = "";
      _expression = "";
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculadora",
      home: Scaffold(
        backgroundColor: Color(0xFF283637),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                alignment: const Alignment(1.0, 1.0),
                child: Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Text(
                    _history,
                    style: GoogleFonts.rubik(
                        textStyle: const TextStyle(
                            fontSize: 24, color: Color(0xFF545F61))),
                  ),
                ),
              ),
              Container(
                alignment: const Alignment(1.0, 1.0),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: (Text(
                    _expression,
                    style: GoogleFonts.rubik(
                        textStyle:
                            const TextStyle(fontSize: 48, color: Colors.white)),
                  )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    bgcolor: 0xFF00BF45,
                    text: "Ac",
                    callback: allClear,
                    textSize: 20,
                  ),
                  CalcButton(
                    bgcolor: 0xffE3303A,
                    text: "C",
                    callback: clear,
                    textSize: 20,
                  ),
                  CalcButton(
                    text: "%",
                    callback: allClear,
                    textSize: 20,
                  ),
                  CalcButton(
                    text: "/",
                    callback: allClear,
                    textSize: 20,
                  ),
                  
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: "7",
                    callback: allClear,
                    textSize: 20,
                  ),
                  CalcButton(
                    text: "8",
                    callback: allClear,
                    textSize: 20,
                  ),
                  CalcButton(
                    text: "9",
                    callback: allClear,
                    textSize: 20,
                  ),
                  CalcButton(
                    text: "*",
                    callback: allClear,
                    textSize: 20,
                  ),
                  
                ],
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: "4",
                    callback: allClear,
                    textSize: 20,
                  ),
                  CalcButton(
                    text: "5",
                    callback: allClear,
                    textSize: 20,
                  ),
                  CalcButton(
                    text: "6",
                    callback: allClear,
                    textSize: 20,
                  ),
                  CalcButton(
                    text: "-",
                    callback: allClear,
                    textSize: 20,
                  )
                ],
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: "1",
                    callback: allClear,
                    textSize: 20,
                  ),
                  CalcButton(
                    text: "2",
                    callback: allClear,
                    textSize: 20,
                  ),
                  CalcButton(
                    text: "3",
                    callback: allClear,
                    textSize: 20,
                  ),
                  CalcButton(
                    text: "+",
                    callback: allClear,
                    textSize: 20,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CalcButton(
                    text: ".",
                    callback: allClear,
                    textSize: 20,
                  ),
                  CalcButton(
                    text: "0",
                    callback: allClear,
                    textSize: 20,
                  ),
                  CalcButton(
                    text: "00",
                    callback: allClear,
                    textSize: 20,
                  ),
                  CalcButton(
                    text: "=",
                    callback: allClear,
                    textSize: 20,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
