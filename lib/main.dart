import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  static const _kFontFam = 'MyFlutterApp';
  static const _kFontPkg = null;

  static const IconData drizzle = IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData sun = IconData(0xe801, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData cloud_sun = IconData(0xe802, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData sunset = IconData(0xe803, fontFamily: _kFontFam, fontPackage: _kFontPkg);

  String temp = '26';
  String whether = "S\nU\nN\nN\nY";
  Color color = Colors.black;
  String background = "assets/images/bg1.png";
  String gif = "assets/images/sunny.gif";

  List<bool> isSelected = [true, false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( 
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(background), fit: BoxFit.cover),
          
        ),
        
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20, left: 30, right:20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: Text(temp, style: TextStyle(
                                  fontSize: 100,
                                  fontFamily: "Oxygen",
                                  color: color,
                                ),),
                              ),

                              SizedBox(
                                width: 5,
                              ),

                              Container(
                                height: 80,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "o",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: color,
                                      ),
                                    ),

                                    Text("C", style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "IBM",
                                      color: color,
                                    ),
                                    
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 350,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Image.asset(gif),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("TOKYO", style: TextStyle(
                        fontSize: 30,
                        letterSpacing: 2,
                        fontFamily: "Poopins",
                        color: color,
                        fontWeight: FontWeight.w300,
                        ),
                      ),

                      SizedBox(
                        height: 10,
                      ),

                      ToggleButtons(
                        borderRadius: BorderRadius.circular(50),
                        fillColor: Colors.brown.withOpacity(0.4),
                        children: [
                          Icon(
                            sunset,
                            color: color,
                            size: 32
                          ),
                          Icon(
                            drizzle,
                            color: color,
                            size: 32
                          ),
                          Icon(
                            cloud_sun,
                            color: color,
                            size: 32
                          ),
                          Icon(
                            sun,
                            color: color,
                            size: 32
                          ),
                          Icon(
                            sunset,
                            color: color,
                            size: 32
                          ),
                          Icon(
                            drizzle,
                            color: color
                          ),
                          Icon(
                            cloud_sun,
                            color: color
                          ),
                        ],

                        onPressed: (int index){},
                        isSelected: isSelected,
                      ),

                      ConstrainedBox(
                        // padding: EdgeInsets.symmetric(horizontal: 10),
                        // height: 30,
                        // width: MediaQuery.of(context).size.width * 0.9,
                        constraints: BoxConstraints(
                          maxHeight: 30,
                          maxWidth: 355,
                        ),
                        child: ListView.builder(itemBuilder: (ctx, i) => Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 11.5, vertical: 5
                          ),
                          child: Text("Day", style: TextStyle(
                            fontFamily: "Poppins", color: color,
                          ),),
                        ),

                        itemCount: 7,
                        scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}