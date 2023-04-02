import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../model/listview_home_model.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    final b = listviewHomeModel;
    return  ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            
            itemBuilder: (context, index){
              //final a = listviewHomeModel[index];
              return Container(
                padding: const EdgeInsets.only(top: 24),
                margin: const EdgeInsets.only(left: 5,right: 5),
                width: 172,
                height: 215,
                decoration:   BoxDecoration(
              image: DecorationImage(
              
                image: AssetImage(b[index].img!),fit: BoxFit.fill
              ),

            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(b[index].namePlace!, style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400
                  ),),
                  Text(b[index].temp!, style: const TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.w600
                  ),)
                ],
              ),
            ),


              );
            }, 
            separatorBuilder: (_,__) =>const  SizedBox(width: 0,), itemCount: 2);

  }
}