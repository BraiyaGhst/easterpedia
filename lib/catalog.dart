import 'package:easterpedia/widgets/cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyCatalog extends StatefulWidget {
  const MyCatalog({super.key});

  @override
  State<MyCatalog> createState() => _MyCatalogState();
}

class _MyCatalogState extends State<MyCatalog> {
  @override
  Widget build(BuildContext context) {
    return Placeholder(
        child: Container(
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
          
          iconTheme: IconThemeData(color: Color.fromARGB(0, 255, 0, 0)),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          centerTitle: true,
          title: Image(
            image: AssetImage("Assets/easterpedia.png"),
            width: 250,
            height: 130,
            
          ),
              ),
              body: Container(
          
          child: SingleChildScrollView(
            child: GridView.count(
              
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              shrinkWrap: true,
              childAspectRatio: (150 / 195),
              children: [
                MyCard(
                  
                    image: "adventure.jpg",
                    link: "https://eldenring.wiki.fextralife.com"),
                MyCard(image: "minecraft.jpg" ),
                MyCard(image: "thelastofus.webp"),
                MyCard(image: "zelda.jpg")
                
              ],
            ),
            
          ),
              ),
              
            ),
        )
    );
  }
}
