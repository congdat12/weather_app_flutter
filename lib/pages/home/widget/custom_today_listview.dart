import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/model/today_model.dart';

class CustomTodayListview extends StatelessWidget {
  const CustomTodayListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 12),
                width: 76,
                height: 76,
                decoration:   BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff622FB5),
                ),
                child: Column(
                  children: [
                    Image.asset(todayModel[index].icon!),
                    Text(todayModel[index].temp!, style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
              Text(todayModel[index].time!, style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),)
            ],
          );

        }, 
        separatorBuilder: (_,__) => const SizedBox(width: 15,), itemCount: todayModel.length);
  
  }
}