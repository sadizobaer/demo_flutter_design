import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
               color: Colors.pink[400],
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),),
              ),
            child: Stack(
              alignment: Alignment.bottomRight,
              overflow: Overflow.visible,
              children: [
                Stack(
                alignment: Alignment.bottomLeft,
                overflow: Overflow.visible,
                children:[
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 30,right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.menu,color: Colors.white,),
                          Icon(Icons.shopping_cart,color: Colors.white,),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 30,right: 20),
                      child: Text('Vanity Bag',
                        style: GoogleFonts.lato(
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 10,right: 20),
                      child: Text('Size - XL',
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 10,right: 20),
                      child: Text('Brand - Oremas',
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 10,right: 20,bottom: 90),
                      child: Text('Popularity - 4.5',
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),),
                    ),
                  ],
                ),
                  Positioned(
                    bottom: -25,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Container(
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 30,),),
                        ),
                      ))
                  ]
              ),
                Positioned(
                  bottom: -80,
                  child: Padding(
                    padding: EdgeInsets.only(right: 0),
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.transparent,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage('http://pngimg.com/uploads/women_bag/women_bag_PNG6416.png'),
                        )
                      ),
                    ),
                  ),
                )
              ],
            )
        ),
            Padding(
              padding: const EdgeInsets.only(top: 65,left: 20,right: 50),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Description',
                    style: GoogleFonts.lato(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),),
                    SizedBox(height: 10,),
                    Text('this bag is very styling and made of pure lether. its design is very nice and it is vary cheap. you cant buy a bag like this in this price range',
                      style: GoogleFonts.lato(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),),
                    SizedBox(height: 10,),
                    Text('Quantity',
                      style: GoogleFonts.lato(
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        RaisedButton(
                          onPressed: null,
                        child: Icon(Icons.add),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),),
                        SizedBox(width: 5,),
                        RaisedButton(onPressed: null,
                          child: Icon(Icons.minimize),
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),),
                        SizedBox(width: 15,),
                        Text('1',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.white,
                        ),)
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top:30),
              child: Row(
                children: [
                  Container(child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 51,top:20,bottom: 10),
                      child: Text('900 tk',
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.w500,
                        fontSize: 30,

                      ),),
                    ),
                  )),
                  Container(
                    child: Center(child: Padding(
                      padding: const EdgeInsets.only(left: 25,right: 30,top: 20,bottom: 10),
                      child: Text('Bye Now',
                      style: GoogleFonts.lato(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),),
                    ),),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40)),
                      color: Colors.blue,
                    ),
                  ),

                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
