import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';
import 'package:intl/intl.dart' show DateFormat;

// ignore: must_be_immutable
class KaiYaCalendar extends StatelessWidget {
  DateTime _currentDate = DateTime(2021, 5, 1);
  DateTime _currentDate2 = DateTime(2021, 5, 17);
  String _currentMonth = DateFormat.yMMM().format(DateTime(2021, 5, 1));
  DateTime _targetDateTime = DateTime(2021, 5, 17);

  static Widget _eventIcon = new Container(
    decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(1000)),
        border: Border.all(color: Colors.blue, width: 2.0)),
    child: new Icon(
      Icons.person,
      color: Colors.amber,
    ),
  );

  EventList<Event> _markedDateMap = new EventList<Event>(
    events: {},
  );

  void initState() {
  }

  @override
  Widget build(BuildContext context) {
    final _calendarCarouselNoHeader = CalendarCarousel<Event>(

      todayBorderColor: Color.fromRGBO(255, 255, 255, 1),

      daysHaveCircularBorder: true,

      showOnlyCurrentMonthDate: false,

      weekdayTextStyle: TextStyle(
        color: Color.fromRGBO(46, 130, 139, 1),
      ),

      daysTextStyle: TextStyle(
        color: Color.fromRGBO(46, 130, 139, 1),
      ),

      weekendTextStyle: TextStyle(
        color: Color.fromRGBO(46, 130, 139, 1),
      ),

      thisMonthDayBorderColor: Color.fromRGBO(255, 255, 255, 1),

      weekFormat: false,

      //markedDatesMap: _markedDateMap,

      height: 310.0,

      //selectedDateTime: _currentDate2,

      //targetDateTime: _targetDateTime,

      customGridViewPhysics: NeverScrollableScrollPhysics(),

      markedDateCustomShapeBorder:
          CircleBorder(side: BorderSide(color: Color.fromRGBO(193, 193, 193, 1))),

      markedDateCustomTextStyle: TextStyle(
        fontSize: 18,
        color: Color.fromRGBO(46, 130, 139, 1),
      ),

      showHeader: true,
      headerTextStyle: TextStyle(
        color: Color.fromRGBO(19, 65, 83, 1),
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      showHeaderButton: true,


      todayTextStyle: TextStyle(
        color: Color.fromRGBO(46, 130, 139, 1),
      ),
      todayButtonColor: Color.fromRGBO(193, 193, 193, 1),

      selectedDayTextStyle: TextStyle(
        color: Color.fromRGBO(46, 130, 139, 1),
      ),
      minSelectedDate: _currentDate.subtract(Duration(days: 360)),
      maxSelectedDate: _currentDate.add(Duration(days: 360)),
      prevDaysTextStyle: TextStyle(
        fontSize: 16,
        color: Color.fromRGBO(193, 193, 193, 1),
      ),
      inactiveDaysTextStyle: TextStyle(
        color: Color.fromRGBO(46, 130, 139, 1),
        fontSize: 16,
      ),
      onDayLongPressed: (DateTime date) {
        print('long pressed date $date');
      },
    );
    return new Container(
      width: 340,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 20,left: 20,right: 20),
            child: _calendarCarouselNoHeader,
          ), //
        ],
      ),
    );
  }
}
