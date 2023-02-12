import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: HomeApp()));

class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar('Experimental Project', Colors.pink.shade900, false),
        backgroundColor: Colors.grey.shade50,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        color: Colors.black38,
                        spreadRadius: 2.5),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage('assets/i_am_rich_app_icon.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kohi-Noor Diamond of India !',
                      style: myCustomStyle(
                          textColor: Colors.amber[600],
                          fontSize: 22.0,
                          weight: FontWeight.w900),
                    ),
                    Text(
                      'It\'s Stolen',
                      style: myCustomStyle(
                          weight: FontWeight.w700,
                          textColor: Colors.black,
                          fontSize: 18.0),
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
                      'Second Heading Line : ',
                      style: myCustomStyle(
                          textColor: Colors.amber[600],
                          fontSize: 22.0,
                          weight: FontWeight.w900),
                    ),
                    Text(
                      'I can & will learn Flutter very very soon!',
                      style: myCustomStyle(
                          weight: FontWeight.w700,
                          textColor: Colors.black,
                          fontSize: 18.0),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              Center(child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.pink.shade900), onPressed: (){}, icon: Icon(Icons.get_app_outlined), label: Text('SUBMIT',style: myCustomStyle(weight: FontWeight.w900),)))
            ],
          ),
        ));
  }
}

AppBar customAppBar(String title, Color bgColor, bool isTitleCenter) {
  return AppBar(
    title: Text(title),
    titleSpacing: 0,
    backgroundColor: bgColor,
    centerTitle: isTitleCenter,
    leading: IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: (){},),
  );
}

TextStyle myCustomStyle(
    {double? fontSize, FontWeight? weight, Color? textColor}) {
  return TextStyle(
      fontSize: fontSize ?? 14.0,
      fontWeight: weight ?? FontWeight.normal,
      color: textColor ?? Colors.white);
}
