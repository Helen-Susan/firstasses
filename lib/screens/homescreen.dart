import 'dart:ui';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:ictasses1/screens/login.dart';
import 'package:ictasses1/widget/chart.dart';

class Homescreen extends StatelessWidget {
  Future<void> logout(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const Login()),
    );
  }

  List<String> name = [
    'Anamika',
    'MrMarumakan',
    'Appukuttan',
    'Pavanayi',
    'SethuramaIyer',
    'Ragan',
    'Nagavali',
  ];
  List<String> message = [
    'Hello',
    'Hi',
    'How are you?',
    'I am fine',
    'I am good',
    'Eda mone..',
    'Vidamaate',
    ''
  ];
  List<String> image = [
    'https://images.sftcdn.net/images/t_app-cover-l,f_auto/p/c54d5db8-dfc1-410b-8400-d778798b0fba/1725356617/profile-pictures-dp-for-whatsapp-screenshot.png',
    'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiaFT6BdaNs7J3UEP8a3fD6IzwhjIFs59_ehr6A9hmMHSseN0PhpUjRhSM_AxBorHAzBgAvLpLP3UltDvD07H2rtZXGtrJ4hyPm2crUHNVR_eP1V_QrF5Ia40ycDWYHZjzyONgvtgEbZD4/s1600/MrMarumakan1.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJFRX1exxaBM6SW0P4K_fB-jw71eX3Bgfi0w&s',
    'https://static.toiimg.com/thumb/msid-15092750,imgsize-13505,width-400,resizemode-4/15092750.jpg',
    'https://static.toiimg.com/thumb/msid-15092750,imgsize-13505,width-400,resizemode-4/15092750.jpg',
    'https://www.hindustantimes.com/ht-img/img/2024/04/15/1600x900/fahadh_faasil_1713179874950_1713179875261.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQznsX_h3jI-cyK3tnPTRU2n64_UUxtPInLYQ&s',
  ];
  List<String> time = [
    '3:30P.M',
    '2:00 P.M',
    '1/03/24',
    '27/02/24',
    '15/02/24',
    '14/02/24',
    '13/02/24',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 3, 60, 7),
        actions: [
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    WidgetStatePropertyAll(Color.fromARGB(255, 3, 60, 7)),
              ),
              onPressed: () => logout(context),
              child: Icon(
                Icons.home_outlined,
                color: Colors.white,
              )),
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
            // padding: const EdgeInsets.only(left: 85.0, right: 25.0),
            iconSize: 35.0,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ))
        ],
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Align(
              alignment: Alignment.topLeft,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(Icons.photo_camera),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                    Text(
                      "CHATS",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text("STATUS", style: TextStyle(color: Colors.white)),
                    Text("CALLS", style: TextStyle(color: Colors.white)),
                  ]),
            )),
      ),
      body: ListView.builder(
        itemCount: time.length,
        itemBuilder: (context, index) => Expanded(
          child: SingleChildScrollView(
            child: ListTile(
              title: Text(
                name[index],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(message[index]),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(image[index]),
              ),
              trailing: Text(time[index]),
            ),
          ),
        ),
      ),
      floatingActionButton: CircleAvatar(
        radius: 30,
        backgroundColor: const Color.fromARGB(255, 5, 74, 7),
        child: Icon(
          Icons.message_rounded,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
