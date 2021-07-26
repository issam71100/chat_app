import 'package:flutter/material.dart';
import 'package:chat_app_ui/components/chattile.dart';
import 'package:chat_app_ui/components/storybtn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Whatsapp(),
    );
  }
}

class Whatsapp extends StatefulWidget {
  @override
  _WhatsappState createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  //Adding the main color of the app
  Color mainColor = Color(0xFF177767);
  var containerRadius = Radius.circular(30.0);
  //Adding a list of image URL to simulate the avatar picture
  List<String> imageUrl = [
    "https://lh3.googleusercontent.com/a-/AOh14Ggs8juTaXQIZJ44iPdwLxkMInsvR06Fl0PjqkzYjA=s600-k-no-rp-mo",
    "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
    "https://images.unsplash.com/photo-1547425260-76bcadfb4f2c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1491349174775-aaafddd81942?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
    "https://images.unsplash.com/photo-1500048993953-d23a436266cf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=749&q=80",
    "https://images.unsplash.com/photo-1499952127939-9bbf5af6c51c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=755&q=80",
    "https://images.unsplash.com/photo-1504593811423-6dd665756598?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1542206395-9feb3edaa68d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80",
    "https://images.unsplash.com/photo-1503443207922-dff7d543fd0e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=282&q=80"
  ];
  List<String> persons = [
    'Talha Sultan',
    'Jzck Brell',
    'Andre Kujo',
    'Jack Ma',
    'Jeff bezos',
    'Bill Gates',
    'Anjie Wo',
    'Terry Go',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Developers Chat Hub"),
        backgroundColor: mainColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: Column(
        children: [
          //First let's create the Story time line container
          Container(
            height: 100.0,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  //Let's create a custom widget for our story button
                  storyButton(imageUrl[0], persons[0]),
                  storyButton(imageUrl[1], persons[1]),
                  storyButton(imageUrl[2], persons[2]),
                  storyButton(imageUrl[3], persons[3]),
                  storyButton(imageUrl[4], persons[4]),
                  storyButton(imageUrl[5], persons[5]),
                  storyButton(imageUrl[6], persons[6]),
                ],
              ),
            ),
          ),

          //Now let's create our chat timeline
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: containerRadius, topRight: containerRadius),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
                child: ListView(
                  children: [
                    //Now let's create our chat tile custom widget
                    chatTile(imageUrl[0], persons[0], "msg", "9Am", true),
                    chatTile(imageUrl[1], persons[6], "msg", "8Am", true),
                    chatTile(imageUrl[2], persons[5], "msg", "6Am", true),
                    chatTile(
                        imageUrl[3], persons[1], "msg", "Yesterday", false),
                    chatTile(
                        imageUrl[5], persons[4], "msg", "Yesterday", false),
                    chatTile(imageUrl[4],persons[3], "msg", "San 20", true),
                    chatTile(imageUrl[6], persons[2], "msg", "San20", true),
                    chatTile(imageUrl[7], persons[7], "msg", "San20", true),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
