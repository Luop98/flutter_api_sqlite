import 'package:flutter/material.dart';
import 'package:flutter_api_sqlite/main.dart';
import 'package:flutter_api_sqlite/pages/perfil.dart';
import 'package:google_fonts/google_fonts.dart';

class Entrance extends StatelessWidget {
  const Entrance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/citass.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "BIENVENIDO",
                  style: GoogleFonts.lobster(
                    fontSize: 45,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,

                  ),
                ),
                SizedBox(height: 10.0,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute<Null>(
                        builder: (BuildContext context) {
                      return new MyHomePage();
                    }));
                  },
                  
                  child: Text("CONOCE YA..."),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute<Null>(
                        builder: (BuildContext context) {
                      return new Perfil();
                    }));
                  },
                  
                  child: Text("Perfil"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
