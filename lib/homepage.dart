import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");
  void add() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t1.text);
      sum = num1 + num2;
    });
  }

  void mul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t1.text);
      sum = num1 * num2;
    });
  }

  void sub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t1.text);
      sum = num1 - num2;
    });
  }

  void div() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t1.text);
      sum = num1 ~/ num2;
    });
  }

  void doClear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("calculator"),
      ),
      body: Container(
        padding: EdgeInsets.all(100.0),
        child: Column(children: <Widget>[
          Text(
            "Output:$sum",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(hintText: "Enter number1"),
            controller: t1,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(hintText: "Enter number2"),
            controller: t2,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: add,
                  color: Colors.black38,
                  textColor: Colors.white),
              MaterialButton(
                child: Text(
                  "-",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: sub,
                color: Colors.black38,
                textColor: Colors.white,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                child: Text(
                  "*",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: mul,
                color: Colors.black38,
                textColor: Colors.white,
              ),
              MaterialButton(
                child: Text(
                  "/",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: div,
                color: Colors.black38,
                textColor: Colors.white,
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            MaterialButton(
              child: Text(
                "clear",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: doClear,
              color: Colors.black38,
              textColor: Colors.white,
            ),
          ]),
        ]),
      ),
    );
  }
}
