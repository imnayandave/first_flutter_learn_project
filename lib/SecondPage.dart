import 'package:flutter/material.dart';
import 'main.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: const Text('Second Page'),
        backgroundColor: Colors.indigo,
        centerTitle: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.grey.shade50,
      body: Center(
        child: Text(
          'This is the Second Page',
          style: myCustomStyle(
              fontSize: 18, weight: FontWeight.bold, textColor: Colors.black54),
        ),
      ),
    );
  }
}
