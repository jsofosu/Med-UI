import 'package:flutter/material.dart';
import 'package:medd/screens/data.dart';
import 'package:medd/screens/second.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.menu, color: Color(0xff17155c)),
                            onPressed: null,
                            iconSize: 30),
                        Text(
                          'Dashboard',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff17155c),
                              fontWeight: FontWeight.w500),
                        ),
                        IconButton(
                            icon: Icon(Icons.swap_vert),
                            onPressed: null,
                            iconSize: 30),
                      ],
                    ),
                    SizedBox(height: 10),
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
                    SizedBox(height: 15),
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
                padding: EdgeInsets.only(right: 25, left: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Fav folders',
                      style: TextStyle(
                          fontSize: 22,
                          color: Color(0xff17155c),
                          fontWeight: FontWeight.w500),
                    ),
                    Text('Show All',
                        style: TextStyle(fontSize: 18, color: Colors.black26))
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(right: 25, left: 25),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ClipRRect(
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
                                'images/toth.png',
                                height: 45,
                                color: Colors.white,
                              ),
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      'Dental',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      ClipRRect(
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
                                'images/gh.png',
                                color: Colors.white,
                                height: 45,
                              ),
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      'Stomach',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      ClipRRect(
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
                                'images/hj.png',
                                height: 57,
                                color: Colors.white,
                              ),
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      'Heart',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ]),
              ),
              SizedBox(height: 25),
              Container(
                padding: EdgeInsets.only(right: 25, left: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Last added Files',
                      style: TextStyle(
                          fontSize: 22,
                          color: Color(0xff17155c),
                          fontWeight: FontWeight.w500),
                    ),
                    Text('Show All',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xffe3e3f0),
                        ))
                  ],
                ),
              ),
              SizedBox(height: 25),
              Container(
                  height: 90,
                  margin: EdgeInsets.only(right: 25, left: 25),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Second(file: files[0])));
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
                                    child: Image.asset('images/periodont.jpg',
                                        fit: BoxFit.cover),
                                  )),
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'periodontitis',
                                      style: TextStyle(
                                          color: Color(0xff17155c),
                                          fontSize: 16),
                                    ),
                                    Text(
                                      'Dental',
                                      style:
                                          TextStyle(color: blu, fontSize: 14),
                                    ),
                                    Text(
                                      'results',
                                      style: TextStyle(
                                          color: Color(0xffe3e3f0),
                                          fontSize: 13),
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
                                child: Text('12.02.2020'),
                              )),
                          Positioned(
                            top: -15,
                            right: 5,
                            child: IconButton(
                                icon: Icon(
                                  Icons.bookmark,
                                  color: Colors.orange,
                                  size: 30,
                                ),
                                onPressed: null),
                          ),
                        ],
                      ))),
              SizedBox(height: 20),
              Container(
                  height: 90,
                  margin: EdgeInsets.only(right: 25, left: 25),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Second(file: files[1])));
                      },
                      child: Stack(
                        alignment: Alignment.centerLeft,
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
                                    child: Image.asset('images/red2.jpg',
                                        fit: BoxFit.cover),
                                  )),
                              SizedBox(width: 10),
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Blood Tests',
                                      style: TextStyle(
                                          color: Color(0xff17155c),
                                          fontSize: 16),
                                    ),
                                    Text(
                                      'Heart',
                                      style:
                                          TextStyle(color: blu, fontSize: 14),
                                    ),
                                    Text(
                                      'results',
                                      style: TextStyle(
                                          color: Color(0xffe3e3f0),
                                          fontSize: 13),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 5, right: 5),
                                child: Text('26.01.2020'),
                              )),
                          Positioned(
                            top: -15,
                            right: 5,
                            child: IconButton(
                                icon: Icon(
                                  Icons.bookmark,
                                  color: Colors.amber[900],
                                  size: 30,
                                ),
                                onPressed: null),
                          ),
                        ],
                      ))),
            ],
          ),
        ));
  }
}
