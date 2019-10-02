import 'package:flutter/material.dart';

void main() {

  void copyContent(){
    print('copy was pressed');
  };
  void shareContent(){
    print('share was pressed');
  };
  void refreshContent(){
    print('refresh was pressed');
  };
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Varun Resh'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.share),onPressed: shareContent),
            IconButton(icon: Icon(Icons.refresh),onPressed: refreshContent),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                  radius:100,
                  backgroundImage: AssetImage('assets/profile.jpg')),
              SizedBox(height: 5),
              Text('Varun Resh',
              style: TextStyle(
                letterSpacing: 2,
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'AbrilFatface',
              ),),
              Container(
                width:200,
                height: 2,
                color: Colors.white,
              ),
              SizedBox(height: 10),
              Text('Loves to code',
                style: TextStyle(
                  fontSize: 25,
                  letterSpacing: 3,
                  color: Colors.white,
                ),),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.call,color: Colors.green,),
                    title: Text('+ 134567',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),),
                    trailing: IconButton(icon: Icon(Icons.content_copy),onPressed: copyContent),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.alternate_email,color: Colors.green,),
                    title: Text('dart@dart.com',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),),
                    trailing: IconButton(icon: Icon(Icons.content_copy),onPressed: copyContent),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );


}
