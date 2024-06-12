// profile_page.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobapp/widgets/setting_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Profile",
          style: TextStyle(color: Colors.white), // Change AppBar text color
        ),
        backgroundColor: Color(0xFF007FB6), // Optional: Change AppBar background color
        iconTheme: IconThemeData(
          color: Colors.white, // Change AppBar icon color
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
        ),
        child: Container(
          // color: Colors.orange,
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                padding: EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    color: Color(0xFF007FB6).withOpacity(0.7),
                    borderRadius: BorderRadius.all(Radius.circular(80))),
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      "https://easy-peasy.ai/cdn-cgi/image/quality=80,format=auto,width=700/https://fdczvxmwwjwpwbeeqcth.supabase.co/storage/v1/object/public/images/78e88f76-29bf-4289-9624-719aec0f7bcb/e516f677-4846-4a28-9707-ba00ffa49479.png"),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "សួស្តី, Keo Kanika",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle first button press
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                        top: 12,
                        bottom: 12
                      ),
                      child: Row(
                        children: [
                          Icon(
                              Icons.document_scanner_outlined,
                            color: Color(0xFF007FB6),
                            size: 25,
                          ),
                          SizedBox(width: 10,),
                          Text("Apply History",style: TextStyle(color: Color(0xFF007FB6),fontSize: 16),),
                        ],
                      ),
                    )

                  ),
                  SizedBox(width: 10), // Adjust the spacing between buttons
                  ElevatedButton(
                      onPressed: () {
                        // Handle first button press
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 12,
                            bottom: 12
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.heart_broken_outlined,
                              color: Color(0xFF007FB6),
                              size:28,
                            ),
                            SizedBox(width: 10,),
                            Text("Blacklist Jobs",style: TextStyle(color: Color(0xFF007FB6),fontSize: 16),),
                          ],
                        ),
                      )

                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16.0), // Adjust the left padding as needed
                          child: Text(
                            "Account Settings",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black54),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  SettingButton(icon: Icons.navigate_next, label: "Change Password"),
                  SettingButton(icon: Icons.navigate_next, label: "Looking for"),
                  SettingButton(icon: Icons.delete_forever_outlined, label: "Delete account"),

                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                // Handle button press
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 12),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Text(
                                      "Logout",
                                      style: TextStyle(color: Colors.black54, fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )



                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
