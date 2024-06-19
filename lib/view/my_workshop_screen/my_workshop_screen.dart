import 'package:bike_fixup_team_project/constants/image_constants.dart';
import 'package:flutter/material.dart';

import '../../constants/app_colors_constants.dart';
import '../../constants/string_constants.dart';

class Myworkshop extends StatefulWidget {
  const Myworkshop({super.key});

  @override
  State<Myworkshop> createState() => _MyworkshopState();
}

class _MyworkshopState extends State<Myworkshop> {
  final workshop=[
    ImageConstants.bike1,
    ImageConstants.bike2,
    ImageConstants.bike,
    ImageConstants.bike4,
    ImageConstants.bike3,
    ImageConstants.bike1,
  ];
  final workshopname=[
    StringConstants.SteelVintageBikes,
    StringConstants.Wolfi,
    StringConstants.FalconRidersShop,
    StringConstants.OnTheWheels,
    StringConstants.ThePedalHutShop,
   StringConstants.SteelVintageBikes,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 30,
              color: AppColors.black,
            )),
        title: Text(
          StringConstants.MyWorkshop,
          style: TextStyle(color: AppColors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColors.backgroundColor,
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: workshop.length,
          itemBuilder: (context, index) {
            return Card(
              color: AppColors.backgroundColor,
              elevation: 1,
              child: ListTile(
                leading: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, "/workshopprofiie");
                  },
                  child: Image.asset("${workshop[index]}"),
                  ),
                title: Text(
                  workshopname[index],
                 // StringConstants.SteelVintageBikes,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black),
                ),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      StringConstants.Loremipsumdollarsitmet,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black),
                    ),
                    Text(StringConstants.Mumbai,
                    style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
