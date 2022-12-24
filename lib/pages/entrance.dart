import 'package:flutter/material.dart';
import 'package:flutter_api_sqlite/main.dart';
import 'package:flutter_api_sqlite/pages/perfil.dart';
import 'package:google_fonts/google_fonts.dart';

class Entrance extends StatefulWidget {
  const Entrance({super.key});

  @override
  State<Entrance> createState() => _EntranceState();
}

class _EntranceState extends State<Entrance> {
  
  showMyAlert(){
      showDialog(
        context: context, 
        builder: (BuildContext context ){
          return AlertDialog(
            backgroundColor: Colors.pink[50],
            title: Text("❤️ YOUR SOUL MATE ❤️",
            style: TextStyle(color: Colors.pink,
            fontWeight: FontWeight.bold,
            fontFamily: "Source Sans Pro" ),
            ),
            content: Text("YSM es un lugar lleno de posibilidades. Como la de formar conexiones que podrían llevar a algo más.💋💌",
            style: TextStyle(color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: "Source Sans Pro",
           
            ),
            ),
            actions: [
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Aceptar"),)
            ],
          );        
      }     
    );
  }

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
                Text(
                  "YOUR SOUL MATE",
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
                  
                  child: Text("Perfil",
                ),
                ),
              ],
            ),
          ),
        ],
      ),
      
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.favorite),
        onPressed: (){
         showMyAlert();
        },
      ),

    );
  }
}
