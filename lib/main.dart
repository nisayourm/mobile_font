
import 'package:flutter/material.dart';

void main()=>runApp(Demo());

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  Continer day(String img1,String img2){
    return  Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Row(
              
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: <Widget>[
               
                   Image.network(img1,
                  fit: BoxFit.cover,
                  width: 200,
                  height: 300,
                  ),
                   Image.network(img2,
                  fit: BoxFit.cover,
                  width: 200,
                  height: 300,
                  ),
                
              ],
            ),
          );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("The Boy Is The B T",style:TextStyle(fontFamily: "ladyshop"),),
          actions: <Widget>[
          ],
        ),
        body: ListView(
          children: <Widget>[
            Image.network("https://writingandeditingsite.files.wordpress.com/2017/11/girl-alone.jpg?w=960&h=640&crop=1"),
          day("https://cdn-yotpo-images-production.yotpo.com/instagram/13/18017162926194313/standard_resolution.jpg", 
          "https://cdn-yotpo-images-production.yotpo.com/instagram/13/18017162926194313/standard_resolution.jpg"),
          day("https://cdn-yotpo-images-production.yotpo.com/instagram/13/18017162926194313/standard_resolution.jpg", "https://cdn-yotpo-images-production.yotpo.com/instagram/13/18017162926194313/standard_resolution.jpg")
          ],
        ),
        drawer: Drawer(
          child:Center(
            child: ListView( 
              children: <Widget>[
                DrawerHeader(
                  child: Center(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage("https://miro.medium.com/max/7744/0*Str-ifa1c2T8mg31"),
                      maxRadius: 70,
                    ),
                  ),
                  
                ),
                ListTile(
                  title: Text("096 678 900"),
                  leading: Icon(Icons.phone),
                ),
                ListTile(
                  title: Text("day@gamil.com"),
                  leading: Icon(Icons.email),
                ),
              ],
            ),
          ),
        ),
        
      ),
    
      
    );
  }
}