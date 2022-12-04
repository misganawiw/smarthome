import 'package:flutter/material.dart';
import 'package:smarthome/util/smartdevicebox.dart';
import 'package:smarthome/util/smartdiv_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // list of devices
  List myhomedevices = [
    //[device name, iconpath, powerstatus]
    ["smart light","lib/icons/light-bulb.png",true],
    ["smart fan","lib/icons/fan.png",true],
    ["smart tv","lib/icons/smart-tv.png",true],
    ["smart ac","lib/icons/air-conditioner.png",true],
  ];


  void powerchanged(bool value,int index){
      
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body of the app
      body: SafeArea(child: 
      Container(
        color: Colors.grey[300],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // custum app bar

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //menu icon
                  Image.asset('lib/icons/menu.png',height: 45,color: Colors.grey[800],),
                  //account icon
                  Icon(Icons.person,size: 45,color:Colors.grey[800])
                ],
              ),
            ),

            //spacing
            SizedBox(height: 25,),
           
           
            //the hello text
            Padding(
              
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text('Welcome Home'),
                  SizedBox(height: 5,),
                  const Text('MISGANA GALI',style: TextStyle(fontSize: 40,),),
                ],
              ),
            ),
            // spacing
            SizedBox(height: 25,),

            //smart devices
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 40),
               child: Text('Smart devices'),
             ),

            //spacing
            SizedBox(height: 25,),

            //grid of widgets
            Expanded(
              
              child: GridView.builder(
                itemCount: myhomedevices.length,
                padding: EdgeInsets.all(25),   
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1/0.3
                  ), 
                itemBuilder: (context,index){
                  return Smartdiv(
                  smdiv: myhomedevices[index][0], 
                  smiconPath: myhomedevices[index][1], 
                  smstatusofswitch:myhomedevices[index][2],
                   onChanged: (bool )=>{

                      setState((){
        myhomedevices[index][2]= bool;
      })

                     },
                  
                  );
                  
                }
                
             ),
            ),


          ],
        ),
      )),
    );
  }
}