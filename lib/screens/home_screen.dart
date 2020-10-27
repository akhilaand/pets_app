import 'package:flutter/material.dart';
import 'package:pets_app/screens/horizontal_section.dart';
class Home_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(Icons.location_on,
          color: Colors.grey,
          ),
          title: Text('Diamond District, Amsterdam',
          style: TextStyle(
             color: Colors.grey.shade700,
            fontSize: 18
          ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right:8.0),
              child: CircleAvatar(
                backgroundColor: Colors.grey,
              ),
            )
          ],


        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: new InputDecoration(
                      fillColor: Colors.grey.shade200,
                      filled: true,

                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade200)),
                      hintText: 'Find Your Pets',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500
                      ),
                      suffixIcon:
                      IconButton(icon: Icon(Icons.search,
                      size: 25,
                      ), onPressed: null),

                    ),
                  ),

                  Horizontal()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
