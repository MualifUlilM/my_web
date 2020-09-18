import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mualif Ulil Misbakh',
      theme: ThemeData(
        primaryColor: Color(0xFF1B1B2F),
        accentColor: Color(0xFFE43F5A),
        buttonColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Mualif Ulil Misbakh'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: SingleChildScrollView(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('I AM', style: TextStyle(
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).accentColor
                      ),),
                      SizedBox(width: 30,),
                      Text('YOU GOT THE IDEA\nI DESIGN IT AND MAKE IT HAPPEN', style: TextStyle(
                        fontSize: 19.95,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).buttonColor
                      ),textAlign: TextAlign.right,)
                    ],
                  ),
                  Text('MUALIF ULIL MISBAKH', style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).accentColor
                      ),),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlatButton(onPressed: (){
                        launch('https://www.facebook.com/mualifulil.misbakh');
                      }, child: Container(child: Container(child: Image.asset('assets/img/facebook.png', scale: 15,),),)),
                      FlatButton(onPressed: (){
                        launch('https://www.instagram.com/mualif_ulil/');
                      }, child: Container(child: Container(child: Image.asset('assets/img/instagram.png', scale: 15,),),)),
                      FlatButton(onPressed: (){
                        launch('https://twitter.com/haytika');
                      }, child: Container(child: Container(child: Image.asset('assets/img/twitter.png', scale: 15,),),)),
                      FlatButton(onPressed: (){
                        launch('https://www.linkedin.com/in/mualif-ulil-misbakh/');
                      }, child: Container(child: Container(child: Image.asset('assets/img/linkedin.png', scale: 15,),),)),
                      FlatButton(onPressed: (){
                        launch('https://github.com/mualifulilm');
                      }, child: Container(child: Container(child: Image.asset('assets/img/github.png', scale: 15,),),))
                    ],
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
