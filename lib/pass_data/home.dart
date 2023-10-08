import 'package:flutter/material.dart';
import 'package:passdata/pass_data/screen_two.dart';


class ScreenOne extends StatelessWidget {
  final TextEditingController _nameEditingController = TextEditingController();
  final TextEditingController _ageEditingController = TextEditingController();

  ScreenOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Passing Data Across Pages',
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _nameEditingController,
                decoration: InputDecoration(
                  labelText: 'Enter Name',
                ),
              ),
              TextField(
                controller: _ageEditingController,
                decoration: InputDecoration(
                  labelText: 'Enter Age',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  String data ="My name is ${_nameEditingController.text} ,My age is ${_ageEditingController.text}";
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScreenTwo(),
                      settings: RouteSettings(arguments: data),
                    ),
                  );
                },
                child: Text('Go to Screen Two'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}