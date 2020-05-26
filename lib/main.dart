import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double total = 0.0;
  final num1c = TextEditingController();
  final num2c = TextEditingController();

  void calcular(String x) {
    setState(() {
      (x == '+')
          ? total = double.parse(num1c.text) + double.parse(num2c.text)
          : (x == '-')
              ? total = double.parse(num1c.text) - double.parse(num2c.text)
              : (x == '*')
                  ? total = double.parse(num1c.text) * double.parse(num2c.text)
                  : total = double.parse(num1c.text) / double.parse(num2c.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Teste"),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: num1c,
                decoration: InputDecoration(
                  labelText: "Numero 1",
                  labelStyle: TextStyle(color: Colors.green),
                  border: OutlineInputBorder(),
                ),
                style: TextStyle(color: Colors.black, fontSize: 25.0),
              ),
              Divider(),
              TextField(
                controller: num2c,
                decoration: InputDecoration(
                  labelText: "Numero 2",
                  labelStyle: TextStyle(color: Colors.green),
                  border: OutlineInputBorder(),
                ),
                style: TextStyle(color: Colors.black, fontSize: 25.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text("Somar", 
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 15.0,
                    ),
                    ),
                    onPressed: () => calcular("+"),
                    color: Colors.white,
                  ),
                  RaisedButton(
                    child: Text("Subtrair", 
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 15.0,
                    ),),
                    onPressed: () => calcular("-"),
                    color: Colors.white,
                  ),
                  RaisedButton(
                    child: Text("Multiplicar", 
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 15.0,
                    ),),
                    onPressed: () => calcular("*"),
                    color: Colors.white,
                  ),
                  RaisedButton(
                    child: Text("Dividir", 
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 15.0,
                    ),),
                    onPressed: () => calcular("/"),
                    color: Colors.white,
                  ),
                ],
              ),
              Text("O Total é $total", 
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
              ),)
            ],
          ),
        ));
  }
}
