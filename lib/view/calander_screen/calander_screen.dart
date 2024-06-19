import 'package:bike_fixup_team_project/constants/app_colors_constants.dart';
import 'package:bike_fixup_team_project/constants/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

class Calendarscreen extends StatefulWidget {
  const Calendarscreen({super.key});

  @override
  State<Calendarscreen> createState() => _CalendarscreenState();
}

class _CalendarscreenState extends State<Calendarscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(StringConstants.calendar),
        //leading: Icon(Icons.arrow_back_ios,size: 40,color: AppColors.black,),
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: CalendarCarousel<Event>(
                    onDayPressed: (DateTime date, List<Event> events) {
                     // setState(() => _currentDate = date);
                    },
                    weekendTextStyle: const TextStyle(
                      color: Colors.red,
                    ),
                    thisMonthDayBorderColor: Colors.grey,
                    customDayBuilder: (
                      /// you can provide your own build function to make custom day containers
                      bool isSelectable,
                      int index,
                      bool isSelectedDay,
                      bool isToday,
                      bool isPrevMonthDay,
                      TextStyle textStyle,
                      bool isNextMonthDay,
                      bool isThisMonthDay,
                      DateTime day,
                    ) {
                      return null;
                    },
                    weekFormat: false,
                    height: 360.0,
                    todayButtonColor: Colors.black54,
                    //selectedDateTime: _currentDate,
                    // markedDateShowIcon: true,
                    // markedDateIconMaxShown: 1,
                    daysHaveCircularBorder: false,
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}