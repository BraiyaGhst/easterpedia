import 'package:easterpedia/widgets/cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyTest extends StatelessWidget {
  const MyTest({super.key});

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
              crossAxisCount: 1,
              shrinkWrap: true,
              childAspectRatio: (90 / 80),
              children: [
                MyCard(image:"thelastofus.webp",  ),
               
                
                Text('Easter Eggs:',
                 style: TextStyle(
                  height: 1.2,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,  
                 ),
                  ),
                Text('Easter Egg Prólogo 1.',
                style: TextStyle(
                  height: -16,
                  fontSize: 20,
                  fontWeight: FontWeight.w100,
                ),
                ),
                 Text('No prólogo, Joel confessa a seu irmão Tommy sua responsabilidade em impedir que os Vaga-Lumes tentassem encontrar uma cura para a pandemia do fungo Cordyceps, salvando Ellie de uma operação que a teria matado. Cinco anos depois, Joel e Ellie estão morando no assentamento de Tommy em Jackson, Wyoming, onde eles e outros sobreviventes construíram uma comunidade. Durante esses anos, Ellie, agora com dezoito anos, fez amizade com Dina e Jesse; posteriormente, Ellie e Dina se descobrem apaixonadas e assumem um relacionamento. No inverno, quando Joel e Tommy desaparecem enquanto observam o movimentos de infectados próximos ao assentamento, Ellie e Dina decidem investigar. Joel e Tommy encontram Abby e o grupo fogem de uma grande horda de infectados. Em um abrigo, Abby se revela como líder de pequeno grupo da mílicia Washington Liberation Front (WLF) e ex-integrante dos Vaga-Lumes; onde seu pai Derek Phillips foi o cirugião que iria realizar a operação para remover a mutação do cerebro de Ellie, mas foi assassinado por Joel durante o resgate da garota. O grupo da WLF ataca Joel e Tommy, e Abby — que buscara vingança pela morte de seu pai — mata Joel à sangue frio com golpes de um taco de golfe na cabeça. Ellie consegue chegar no abrigo a tempo, porém presencia a morte de Joel e fica aterrorizada, prometendo se vingar de todos os responsáveis.',
                style: TextStyle(
                  fontSize: 15,
                  height: -1.4,
                  fontStyle: FontStyle.italic,
                ),
                 ),
              ],
            ),
               ),
         ),
        
           
      
        
        ),
      ),
      
    );
    
  }
}
