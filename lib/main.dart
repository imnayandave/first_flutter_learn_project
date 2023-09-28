import 'dart:ui';

import 'package:first_flutter_learn_project/SecondPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: HomeApp()));

class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(fetchSize(context, true)*0.125);
    return Scaffold(
        appBar: customAppBar('Experimental Project', Colors.pink.shade900, false),
        backgroundColor: Colors.grey.shade50,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: fetchSize(context, true)*0.15,
                height: fetchSize(context, true)*0.125,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/i_am_rich_app_icon.png'),),
                  color: Colors.grey,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2.5,
                        color: Colors.black38,
                        spreadRadius: 2.5),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name of the Learner : ',
                      style: myCustomStyle(
                          textColor: Colors.amber[600],
                          fontSize: 20.0,
                          weight: FontWeight.w900),
                    ),
                    Text(
                      'Nayan Dave',
                      style: myCustomStyle(
                          weight: FontWeight.w700,
                          textColor: Colors.black,
                          fontSize: 16.0),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Current Title : ',
                      style: myCustomStyle(
                          textColor: Colors.amber[600],
                          fontSize: 20.0,
                          weight: FontWeight.w900),
                    ),
                    Text(
                      'iOS Developer But Eager to learn flutter ;)',
                      style: myCustomStyle(
                          weight: FontWeight.w700,
                          textColor: Colors.black,
                          fontSize: 16.0),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink.shade900),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecondPage(),
                      ),
                    );
                  },
                  icon: Icon(Icons.get_app_outlined),
                  label: Text(
                    'SUBMIT',
                    style: myCustomStyle(weight: FontWeight.w900),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

AppBar customAppBar(String title, Color bgColor, bool isTitleCenter) {
  return AppBar(
    title: Text(title),
    backgroundColor: bgColor,
    centerTitle: isTitleCenter,
  );
}

TextStyle myCustomStyle(
    {double? fontSize, FontWeight? weight, Color? textColor}) {
  return TextStyle(
      fontSize: fontSize ?? 14.0,
      fontWeight: weight ?? FontWeight.normal,
      color: textColor ?? Colors.white);
}

double fetchSize(BuildContext context, bool isHeight) {
  if (isHeight) {
    var padding = MediaQuery.of(context).viewPadding;
    return MediaQuery.of(context).size.height - padding.top - padding.bottom;

  } else {
    return MediaQuery.of(context).size.width;
  }
}