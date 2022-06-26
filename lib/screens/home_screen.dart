import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen ({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() =>_HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Inicio"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 150,
                child: Image.asset("assets/profile_pic_zelda.png", fit: BoxFit.contain
                )),
              Text(
                "Bievenido Usuario",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Text("Nombre",
              style: TextStyle(
                color: Colors.black54, 
                fontWeight: FontWeight.w500, 
                )),
                Text("Email",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    )),
                    SizedBox(height: 15,),
                    ActionChip(label: Text("Cerrar sesión"), onPressed: () {}),
            ],
          ),

      ),
      ),
    );
  }

}
 
