import 'package:flutter/material.dart';

void main() => runApp(DogYearsConverterApp());

class DogYearsConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dog Years Converter',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: DogYearsConverter(),
    );
  }
}

class DogYearsConverter extends StatefulWidget {
  @override
  _DogYearsConverterState createState() => _DogYearsConverterState();
}

class _DogYearsConverterState extends State<DogYearsConverter> {
  double humanYears = 0;
  double dogYears = 0;

  void convertToDogYears(double years) {
    setState(() {
      humanYears = years;
      dogYears = years * 7;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dog Years Converter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Enter your age in human years:',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 20),
            Container(
              width: 400,
              child: TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  double input = double.tryParse(value) ?? 0;
                  convertToDogYears(input);
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Your age in dog years is:',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 20),
            Text(
              '$dogYears',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
