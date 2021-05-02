import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class KaiYaCalendarApr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromRGBO(255, 255, 255, 1),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.2),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 40,right: 20),
                  child: Icon(CupertinoIcons.back,
                  color: Color.fromRGBO(193, 193, 193, 1),),
                ),
                Container(
                  child: Text('April 2021',
                  style: TextStyle(
                    color: Color.fromRGBO(19, 65, 83, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20,right: 40),
                  child: Icon(CupertinoIcons.forward,
                    color: Color.fromRGBO(193, 193, 193, 1),),
                ),
              ],
            ),
          ),
          Container(
            width: 330,
            //color: Colors.deepPurple,
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text('Sun',
                    style: TextStyle(
                      color: Color.fromRGBO(46, 130, 139, 1),
                      fontSize: 18
                    ),),
                ),
                Container(
                  child: Text('Mon',
                    style: TextStyle(
                      color: Color.fromRGBO(46, 130, 139, 1),
                        fontSize: 18
                    ),),
                ),
                Container(
                  child: Text('Tue',
                    style: TextStyle(
                      color: Color.fromRGBO(46, 130, 139, 1),
                        fontSize: 18
                    ),),
                ),
                Container(
                  child: Text('Wed',
                    style: TextStyle(
                      color: Color.fromRGBO(46, 130, 139, 1),
                        fontSize: 18
                    ),),
                ),
                Container(
                  child: Text('Thu',
                    style: TextStyle(
                      color: Color.fromRGBO(46, 130, 139, 1),
                        fontSize: 18
                    ),),
                ),
                Container(
                  child: Text('Fri',
                    style: TextStyle(
                      color: Color.fromRGBO(46, 130, 139, 1),
                        fontSize: 18
                    ),),
                ),
                Container(
                  child: Text('Sat',
                    style: TextStyle(
                      color: Color.fromRGBO(46, 130, 139, 1),
                        fontSize: 18
                    ),),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  width: 300,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  //color: Colors.pink,
                  child: Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text('25 ',
                            style: TextStyle(
                                color: Color.fromRGBO(46, 130, 139, 0),
                                fontSize: 18
                            ),),
                        ),
                        Container(
                          child: Text('26 ',
                            style: TextStyle(
                                color: Color.fromRGBO(46, 130, 139, 0),
                                fontSize: 18
                            ),),
                        ),
                        Container(
                          child: Text('27 ',
                            style: TextStyle(
                                color: Color.fromRGBO(46, 130, 139, 0),
                                fontSize: 18
                            ),),
                        ),
                        Container(
                          child: Text('28 ',
                            style: TextStyle(
                                color: Color.fromRGBO(46, 130, 139, 0),
                                fontSize: 18
                            ),),
                        ),
                        Container(
                          child: Text(' 1',
                            style: TextStyle(
                                color: Color.fromRGBO(193, 193, 193, 1),
                                fontSize: 18
                            ),),
                        ),
                        Container(

                          child: Text(' 2',
                            style: TextStyle(
                                color: Color.fromRGBO(193, 193, 193, 1),
                                fontSize: 18
                            ),),
                        ),
                        Container(
                          child: Text(' 3 ',
                            style: TextStyle(
                                color: Color.fromRGBO(193, 193, 193, 1),
                                fontSize: 18
                            ),),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  margin: EdgeInsets.only(top: 10,bottom:10,left: 20,right: 20),
                  //color: Colors.pink,
                  child: Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text('   4',
                            style: TextStyle(
                                color: Color.fromRGBO(193, 193, 193, 1),
                                fontSize: 18
                            ),),
                        ),
                        Container(
                          child: Text('   5',
                            style: TextStyle(
                                color: Color.fromRGBO(193, 193, 193, 1),
                                fontSize: 18
                            ),),
                        ),
                        Container(
                          child: Text('   6',
                            style: TextStyle(
                                color: Color.fromRGBO(193, 193, 193, 1),
                                fontSize: 18
                            ),),
                        ),
                        Container(
                          child: Text('   7',
                            style: TextStyle(
                                color: Color.fromRGBO(193, 193, 193, 1),
                                fontSize: 18
                            ),),
                        ),
                        Container(
                          child: Text('   8',
                            style: TextStyle(
                                color: Color.fromRGBO(193, 193, 193, 1),
                                fontSize: 18
                            ),),
                        ),
                        Container(
                          child: Text('  9',
                            style: TextStyle(
                                color: Color.fromRGBO(193, 193, 193, 1),
                                fontSize: 18
                            ),),
                        ),
                        Container(
                          child: Text(' 10',
                            style: TextStyle(
                                color: Color.fromRGBO(193, 193, 193, 1),
                                fontSize: 18
                            ),),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  margin: EdgeInsets.only(left: 20,right: 20),
                  //color: Colors.pink,
                  child: Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text('  11',
                            style: TextStyle(
                                color: Color.fromRGBO(193, 193, 193, 1),
                                fontSize: 18
                            ),),
                        ),
                        Container(
                          child: Text('  12',
                            style: TextStyle(
                                color: Color.fromRGBO(193, 193, 193, 1),
                                fontSize: 18
                            ),),
                        ),
                        Container(
                          child: Text(' 13',
                            style: TextStyle(
                                color: Color.fromRGBO(193, 193, 193, 1),
                                fontSize: 18
                            ),),
                        ),
                        Container(
                          child: Text(' 14',
                            style: TextStyle(
                                color: Color.fromRGBO(46, 130, 139, 1),
                                fontSize: 18
                            ),),
                        ),
                        Container(
                          child: Text('  15',
                            style: TextStyle(
                                color: Color.fromRGBO(46, 130, 139, 1),
                                fontSize: 18
                            ),),
                        ),
                        Container(
                          child: Text(' 16',
                            style: TextStyle(
                                color: Color.fromRGBO(46, 130, 139, 1),
                                fontSize: 18
                            ),),
                        ),
                        Container(
                          child: Text(' 17',
                            style: TextStyle(
                                color: Color.fromRGBO(46, 130, 139, 1),
                                fontSize: 18
                            ),),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  margin: EdgeInsets.only(top: 10,bottom:10,left: 20,right: 20),
                  //color: Colors.pink,
                  child: Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text('  18',
                            style: TextStyle(
                                color: Color.fromRGBO(46, 130, 139, 1),
                                fontSize: 18
                            ),),
                        ),
                        Container(
                          child: Text('  19',
                            style: TextStyle(
                                color: Color.fromRGBO(46, 130, 139, 1),
                                fontSize: 18
                            ),),
                        ),
                        Container(
                          child: Text('  20',
                            style: TextStyle(
                                color: Color.fromRGBO(46, 130, 139, 1),
                                fontSize: 18
                            ),),
                        ),
                        Container(
                          child: Text('  21',
                            style: TextStyle(
                                color: Color.fromRGBO(46, 130, 139, 1),
                                fontSize: 18
                            ),),
                        ),
                        Container(
                          child: Text('  22',
                            style: TextStyle(
                                color: Color.fromRGBO(46, 130, 139, 1),
                                fontSize: 18
                            ),),
                        ),
                        Container(
                          child: Text(' 23',
                            style: TextStyle(
                                color: Color.fromRGBO(46, 130, 139, 1),
                                fontSize: 18
                            ),),
                        ),
                        Container(
                          child: Text(' 24',
                            style: TextStyle(
                                color: Color.fromRGBO(46, 130, 139, 1),
                                fontSize: 18
                            ),),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  margin: EdgeInsets.only(left: 20,right: 20),
                  //color: Colors.pink,
                  child: Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(' 25 ',
                            style: TextStyle(
                                color: Color.fromRGBO(46, 130, 139, 1),
                                fontSize: 18
                            ),),
                        ),
                        Container(
                          child: Text(' 26 ',
                            style: TextStyle(
                                color: Color.fromRGBO(46, 130, 139, 1),
                                fontSize: 18
                            ),),
                        ),
                        Container(
                          child: Text(' 27 ',
                            style: TextStyle(
                                color: Color.fromRGBO(46, 130, 139, 1),
                                fontSize: 18
                            ),),
                        ),
                        Container(
                          child: Text(' 28 ',
                            style: TextStyle(
                                color: Color.fromRGBO(46, 130, 139, 1),
                                fontSize: 18
                            ),),
                        ),
                        Container(
                          child: Text(' 29 ',
                            style: TextStyle(
                                color: Color.fromRGBO(46, 130, 139, 1),
                                fontSize: 18
                            ),),
                        ),
                        Container(

                          child: Text('30 ',
                            style: TextStyle(
                                color: Color.fromRGBO(46, 130, 139, 1),
                                fontSize: 18
                            ),),
                        ),
                        Container(
                          child: Text('30',
                            style: TextStyle(
                                color: Color.fromRGBO(46, 130, 139, 0),
                                fontSize: 18
                            ),),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
