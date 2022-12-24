import 'package:flutter/material.dart';
import 'package:flutter_api_sqlite/widgets/info_card.dart';

const url = "meshivanshsingh.me";
const email = "RogerGuitierrez@gmail.com";
const phone = "90441539202"; 
const location = "Buenos Aires, Argentina";


class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: [
              SizedBox(height: 50.0,),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/perfil.jpg"),
            ),
            Text(
              "Roger Gutierrez",
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: "Pacifico",
              ),
            ),
            Text(
              "Aprendiz apasionado",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black54,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Source Sans Pro  "),
            ),
            SizedBox(
              height: 75,
              width: 200,
              child: Divider(
                color: Colors.white,
              ),
            ),
            
            InfoCard(text: phone, icon: Icons.phone, onPressed: ()async{}),
            InfoCard(text: url, icon: Icons.web, onPressed: ()async{}),
            InfoCard(text: location, icon: Icons.local_activity, onPressed: ()async{}),
            InfoCard(text: email, icon: Icons.email, onPressed: ()async{}),

          ],
        ),
      ),
    );
  }
}
