import 'package:flutter/material.dart';
Widget get profile{
  return Padding(
    padding: const EdgeInsets.all(2.0),
    child: Row(
      children: [
        Container(

          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(
                Radius.circular(25)
            ),
          ),
          padding: EdgeInsets.all(2.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 23, // Image radius
                backgroundImage: NetworkImage(
                    'https://easy-peasy.ai/cdn-cgi/image/quality=80,format=auto,width=700/https://fdczvxmwwjwpwbeeqcth.supabase.co/storage/v1/object/public/images/78e88f76-29bf-4289-9624-719aec0f7bcb/e516f677-4846-4a28-9707-ba00ffa49479.png',
                ),
              )
            ],
          ),
        ),
        SizedBox(width: 10.0,),
        Text("សួស្តី, \nKeo Kanika" ,style: TextStyle(color: Colors.white,letterSpacing: 2.0,fontWeight: FontWeight.bold,fontSize: 18),),


      ],
    ),
  );
}

