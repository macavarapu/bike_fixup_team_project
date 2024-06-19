import 'package:bike_fixup_team_project/constants/string_constants.dart';
import 'package:bike_fixup_team_project/widgets/earning_screen/listtile_widget.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

import '../../constants/app_colors_constants.dart';
import 'earring_screen.dart';

class Earringscreen extends StatefulWidget {
  const Earringscreen({super.key});

  @override
  State<Earringscreen> createState() => _EarringscreenState();
}

class _EarringscreenState extends State<Earringscreen> {
  List<_SalesData> data = [
    _SalesData(StringConstants.Jan, 45),
    _SalesData(StringConstants.Feb, 50),
    _SalesData(StringConstants.Mar, 28),
    _SalesData(StringConstants.Apr, 38),
    _SalesData(StringConstants.May, 35),
    _SalesData(StringConstants.Jun, 43),
  ];
  List years = [
    StringConstants.Day,
    StringConstants.Week,
    StringConstants.Month,
    StringConstants.Year,
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConstants.Earnings),
        actions: [
          Badge(
            child: IconButton(
                onPressed: () {
                   Navigator.pushNamed(context, "/orderstatus");
                },
                icon: Icon(
                  Icons.notification_important_rounded,
                  size: 45,
                  color: AppColors.black,
                )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Listtilewidget(
                title: StringConstants.Earningsforthisweek,
                text: StringConstants.Earningsforlastweek,
                subtitle: StringConstants.INR6500,
                titletext: StringConstants.INR7900,
              ),
              SizedBox(
                height: 30,
              ),
              SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                series: [
                  StackedColumnSeries(
                    dataSource: data,
                    xValueMapper: (_SalesData ch, _) => ch.year,
                    yValueMapper: (_SalesData ch, _) => ch.sales,
                    color: AppColors.pink,
                    borderWidth: 1,
                    width: 0.2,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.with500,
                ),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: years.length,
                    itemBuilder: (context, index) {
                      return Container(
                          width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "${years[index]}",
                            style:
                                TextStyle(fontSize: 15, color: AppColors.black),
                          ));
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                StringConstants.Performanceforthisweek,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 140,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.backgroundColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      // height: 70,
                      // width: 150,
                      padding: EdgeInsets.all(25),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.with500, width: 2),
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.witht,
                      ),
                      child: Column(
                        children: [
                          Text(
                            StringConstants.a13,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: AppColors.black),
                          ),
                          Text(
                            StringConstants.TotalBookings,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: AppColors.blak1),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // height: 70,
                      // width: 150,
                      padding: EdgeInsets.all(25),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.with500, width: 2),
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.witht,
                      ),
                      child: Column(
                        children: [
                          Text(
                            StringConstants.b103,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: AppColors.black),
                          ),
                          Text(
                            StringConstants.LoginHours,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: AppColors.blak1),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.backgroundColor,
                ),
                child: Text(
                  StringConstants.Settlementswillbedisplayedattheendoftheweek,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
