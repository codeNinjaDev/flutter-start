import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: NinjaCard()));
}

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          "VALORANT AGENT",
          style: TextStyle(
            color: Colors.redAccent[200],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn.vox-cdn.com/thumbor/AOjfJON61BPiiPFnZsOCmYwZSCI=/1400x788/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/19884649/VALORANT_Jett_Red_1_1.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              thickness: 4,
              color: Colors.redAccent[200],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Jett',
              style: TextStyle(
                color: Colors.redAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'CURRENT AGENT LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color: Colors.redAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "email@example.com",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            Divider(
              height: 60.0,
              thickness: 4,
              color: Colors.redAccent[200],
            ),
            Image(
              image: NetworkImage(
                  "https://media1.tenor.com/images/569034329c1247c3e01e0514247261ff/tenor.gif?itemid=16803098"),
            ),
          ],
        ),
      ),
    );
  }
}
