import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Smartdiv extends StatelessWidget {


  final String smdiv;
  final String smiconPath;
  final bool smstatusofswitch;
  void Function(bool)? onChanged;

   Smartdiv({
    super.key,
    required this.smdiv,
    required this.smiconPath,
    required this.smstatusofswitch,
    required this.onChanged,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration:BoxDecoration(color: Colors.grey[200]),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical:25,
            
          ),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(smiconPath,height:65,color: Colors.grey[800],),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  children: <Widget>[
                     Expanded(child: Text(smdiv,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                     Transform.rotate(
                       angle:pi/2,
                       child: CupertinoSwitch(value: smstatusofswitch, onChanged: onChanged),
                     )
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}