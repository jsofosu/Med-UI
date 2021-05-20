import 'package:flutter/material.dart';
import 'package:medd/screens/data.dart';

class Second extends StatelessWidget {
  final File file;
  Second({this.file});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Color(0xff17155c)),
            onPressed: () {
              Navigator.pop(context);
            },
            iconSize: 20),
        title: Text(
          file.filename,
          style: TextStyle(
              fontSize: 20,
              color: Color(0xff17155c),
              fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.swap_vert, color: Color(0xff17155c)),
              onPressed: null,
              iconSize: 30),
        ],
      ),
      backgroundColor: color,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Container(
                  height: (MediaQuery.of(context).size.height / 2),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    image: DecorationImage(
                      alignment: Alignment.center,
                      image: AssetImage(file.fileimage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    color: color,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: (MediaQuery.of(context).size.height / 4),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 30,
                      top: 10,
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                file.consult + ' ' + 'review',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff17155c)),
                              ),
                            ],
                          ),
                          Text(file.date,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black26)),
                          SizedBox(
                            height: 10,
                          ),
                          Text(file.physician,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff17155c))),
                          Text(file.consult,
                              style: TextStyle(
                                fontSize: 15,
                                color: blu,
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Text(file.consult,
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xff17155c))),
                          Text(
                              file.consult +
                                  ', ' +
                                  'review' +
                                  ', ' +
                                  file.physician,
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black26)),
                          SizedBox(
                            height: 20,
                          ),
                        ]),
                  ),
                ),
              ],
            ),
            Container(
                height: (MediaQuery.of(context).size.height / 2) - 10,
                width: (MediaQuery.of(context).size.width),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white,
                ),
                child: Stack(children: <Widget>[
                  Positioned(
                    top: -15,
                    right: 50,
                    child: IconButton(
                        icon: Icon(
                          Icons.bookmark,
                          color: Colors.orange,
                          size: 46,
                        ),
                        onPressed: null),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 10, bottom: 10, left: 30, right: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Description',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff17155c))),
                            SizedBox(
                              height: 10,
                            ),
                            Text(file.description,
                                style: TextStyle(
                                    fontSize: 18,
                                    height: 1.5,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff17155c)))
                          ],
                        ),
                      ),
                    ),
                  )
                ]))
          ],
        ),
      ),
    );
  }
}
