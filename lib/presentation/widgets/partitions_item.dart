import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/models/paritions.dart';

class PartitionsItems extends StatelessWidget{
  late Datum partitionsItem;

   PartitionsItems({Key? key, required this.partitionsItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
        elevation: 15,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Container(
          
          padding: EdgeInsets.all(7),
          alignment: Alignment.center,
          height: 170,
          child: Text(partitionsItem.categoryName,style: TextStyle(color: Colors.white
              ,fontSize: 17),textAlign: TextAlign.center,),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
              image: DecorationImage(
                alignment: Alignment.center,
                image: NetworkImage(partitionsItem.categoryImage,),
                fit: BoxFit.cover,

                colorFilter:
                ColorFilter.mode(Colors.black.withOpacity(0.5),
                    BlendMode.darken),
              )
          ),


        )

    );
  }

}