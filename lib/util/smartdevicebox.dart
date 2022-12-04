import 'package:flutter/material.dart';


class Smartdevicebox extends StatelessWidget {
   
final String smartdevicename,smdstate;
final String icojnpath;
   
   Smartdevicebox({
    super.key,
    required this.icojnpath,
    required this.smartdevicename,
    required this.smdstate,
   });

  @override
  Widget build(BuildContext context) {
    return Container(

      color:Colors.grey[200],
      child: Column(
        children: <Widget>[
          const Icon(Icons.abc,),
        ],
      ),
    );
  }
}