import 'package:flutter/material.dart';
import 'package:medd/screens/data.dart';
import 'package:medd/screens/second.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu, color: Color(0xff17155c)),
            onPressed: null,
            iconSize: 30,
          ),
          title: Text(
            'Dashboard',
            style: TextStyle(
                fontSize: 20,
                color: Color(0xff17155c),
                fontWeight: FontWeight.w500),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.swap_vert),
              onPressed: null,
              iconSize: 30,
            ),
          ],
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        backgroundColor: color,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.fromLTRB(20, 15, 20, 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Luke Gdyk',
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff17155c)),
                            ),
                            // SizedBox(height:5),
                            Text('36 years old',
                                style: TextStyle(color: Colors.black26)),
                          ],
                        ),
                        Container(
                            height: 70,
                            width: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: color,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Image.asset('images/emoji.png'),
                                Positioned(
                                  top: 3,
                                  right: -3,
                                  child: Container(
                                    height: 15,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: blu,
                                    ),
                                    child: Center(
                                      child: Text(
                                        '3',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ))
                      ],
                    ),
                    SizedBox(height: 25),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: color),
                      height: 50,
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Select'),
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: blu,
                              ),
                              child: FlatButton(
                                color: blu,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: IconButton(
                                    color: blu,
                                    icon: Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    ),
                                    onPressed: null),
                                onPressed: null,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                  ])),
              SizedBox(height: 25),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Fav folders',
                      style: TextStyle(
                        fontSize: 26,
                        color: Color(0xff17155c),
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.001,
                      ),
                    ),
                    Text(
                      'Show All',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black26,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(right: 25, left: 25),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Folders('images/toth.png', 'Dental', 45),
                      Folders('images/gh.png', 'Stomach', 45),
                      Folders('images/hj.png', 'Heart', 57),
                    ]),
              ),
              SizedBox(height: 40),
              Container(
                padding: EdgeInsets.only(right: 25, left: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Last added Files',
                      style: TextStyle(
                        fontSize: 26,
                        color: Color(0xff17155c),
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.001,
                      ),
                    ),
                    Text('Show All',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black26,
                        ))
                  ],
                ),
              ),
              SizedBox(height: 22),
              Files(
                'images/periodont.jpg',
                'periodontitis',
                'Dental',
                '12.02.2020',
                Colors.orange,
                0,
              ),
              //SizedBox(height: 8),
              Files(
                'images/red2.jpg',
                'Blood Tests',
                'heart',
                '26.01.2020',
                Colors.amber[900],
                1,
              ),
            ],
          ),
        ));
  }
}

class Files extends StatelessWidget {
  final String image;
  final String branch;
  final String sub;
  final String date;
  final Color colour;
  final int filenumber;
  Files(
    this.image,
    this.branch,
    this.sub,
    this.date,
    this.colour,
    this.filenumber,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Second(file: files[filenumber])));
            },
            child: Stack(
              alignment: Alignment.topLeft,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                        height: 70,
                        width: 68,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(image, fit: BoxFit.cover),
                        )),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            sub,
                            style: TextStyle(
                                color: Color(0xff17155c), fontSize: 16),
                          ),
                          Text(
                            branch,
                            style: TextStyle(color: blu, fontSize: 14),
                          ),
                          Text(
                            'results',
                            style: TextStyle(
                                color: Color(0xffe3e3f0), fontSize: 13),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 5, right: 5),
                      child: Text(date),
                    )),
                Positioned(
                  top: -15,
                  right: 5,
                  child: IconButton(
                      icon: Icon(
                        Icons.bookmark,
                        color: colour,
                        size: 30,
                      ),
                      onPressed: null),
                ),
              ],
            )));
  }
}

class Folders extends StatelessWidget {
  final String image;
  final String text;
  final double length;
  Folders(this.image, this.text, this.length);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 115,
        width: 109,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: blu,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Image.asset(
              image,
              height: length,
              color: Colors.white,
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    text,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
