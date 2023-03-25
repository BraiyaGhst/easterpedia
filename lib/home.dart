import 'package:easterpedia/catalog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color.fromARGB(255,0,255,255),
              Color.fromARGB(255,0,206,209),
              Color.fromARGB(255,64,224,208),
              Color.fromARGB(255, 72,209,204),
              Color.fromARGB(255,32,178,170),
              Color.fromARGB(255, 0,139,139),
              Color.fromARGB(255,0,128,128),
              Color.fromARGB(255,0,139,139),
            ], // Gradient from https://learnui.design/tools/gradient-generator.html
            tileMode: TileMode.mirror,
          ),
        ),
      child: Scaffold(
        
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Image(
            image: AssetImage("assets/easterpedia.png" ),
            width: 500,
           height: 130,
           
          ),
          centerTitle: true,
        ),
        body: Center(
          
          child: ElevatedButton(
            
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>MyCatalog()
                
                )
              );
            },
            child: Text("PLAY", style: GoogleFonts.anekBangla(
              fontSize: 30,
            ),)
            
          ),
        ),
      ),
    );
  }
}