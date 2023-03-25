import 'dart:html';

import 'package:easterpedia/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:url_launcher/url_launcher.dart';

class MyCard extends StatelessWidget {
  String? image, link;

  MyCard({super.key, this.image, this.link});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFF212325),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 1,
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyTest()));
        },

        //Ideia para acessar link externo (web)
        // onTap: () async {
        //   Uri url = Uri.parse(this.link!);
        //   await launchUrl(url);
        // },

        child: Image(
          fit: BoxFit.cover,
          image: AssetImage(this.image!),
        ),
      ),
    );
  }
}
