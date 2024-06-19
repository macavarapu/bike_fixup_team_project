import 'package:bike_fixup_team_project/constants/image_constants.dart';
import 'package:bike_fixup_team_project/constants/string_constants.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../constants/app_colors_constants.dart';
import '../../constants/text_style.dart';
import '../../widgets/order_status_screen/droupdown_widget.dart';

class OrderStatusscreen extends StatefulWidget {
  const OrderStatusscreen({super.key});

  @override
  State<OrderStatusscreen> createState() => _OrderStatusscreenState();
}

class _OrderStatusscreenState extends State<OrderStatusscreen> {
  List svgicon = [
    ImageConstants.Open,
    ImageConstants.WIP,
    ImageConstants.OnHold,
    ImageConstants.ReadyOrder,
    ImageConstants.Delivered,
    ImageConstants.Returned,
  ];
  List names = [
    StringConstants.Open,
    StringConstants.WIP,
    StringConstants.OnHold,
    StringConstants.ReadyOrder,
    StringConstants.Delivered,
    StringConstants.Returned,
  ];
  
 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConstants.OrderStatus,style: TextStyles.title(
        ),),
        leading: IconButton(
          onPressed: (){
        Navigator.pop(context);
        },
         icon: Icon(Icons.arrow_back_ios,color: AppColors.black,)),
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
         child: Column(
          children: [
            SizedBox(height: 10,),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
           Droupdownscreen(
            title:StringConstants.Today,),
             Droupdownscreen(
            title:StringConstants.All,),
           ],
         ),
         SizedBox(height: 20,),
              Container(
               height: MediaQuery.of(context).size.height,
               width: MediaQuery.of(context).size.width,
               //alignment: Alignment.center,
               color: AppColors.backgroundColor,
               child:    ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: svgicon.length,
                 itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                       margin: const EdgeInsets.all(4),
                       
                      elevation: 1,
                      
                      color: AppColors.backgroundColor,
                      
                      child: SizedBox(
                         width: MediaQuery.of(context).size.width,
                       height: 100,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(StringConstants.BookingNameHere),
                                ],
                              
                              ),
                              Row(
                            
                                children: [
                                  SvgPicture.asset(svgicon[index],),
                                Text(names[index]),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                  //  return ListTile(
                  //    leading: Text(StringConstants.BookingNameHere,
                  //    style: TextStyles.title(
                  //      fontSize: 15,
                  //      fontWeight: FontWeight.bold,
                               
                  //    ),
                  //    ),
                  //  trailing: Row(
                  //    children: [
                  //      SvgPicture.asset(svgicon[index],),
                  //      Text(StringConstants.Open),
                  //    ],
                  //  ),
                  //  );
                 }
          
         
                 ),
              ),
             
          ],
             ),
       ),
      
    );
  }
}