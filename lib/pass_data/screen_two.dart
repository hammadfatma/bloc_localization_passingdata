import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    String data = ModalRoute.of(context)?.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Two'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Data from Screen One:', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text(
              data,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}