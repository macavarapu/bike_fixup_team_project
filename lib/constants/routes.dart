
import 'package:bike_fixup_team_project/view/Bikefixup_screen/bikefixup_screen.dart';
import 'package:bike_fixup_team_project/view/OTP%20Verification/OTP%20Verification.dart';
import 'package:bike_fixup_team_project/view/Order%20Status_screen/order_status.dart';
import 'package:bike_fixup_team_project/view/Register_screen/Register_sccreen.dart';
import 'package:bike_fixup_team_project/view/calander_screen/calander_screen.dart';
import 'package:bike_fixup_team_project/view/earring_screen/earring_screen.dart';
import 'package:bike_fixup_team_project/view/home_screen/home_screen.dart';
import 'package:bike_fixup_team_project/view/login_screen/login_screen.dart';
import 'package:bike_fixup_team_project/view/my_workshop_screen/my_workshop_screen.dart';
import 'package:bike_fixup_team_project/view/profile_screen/profile_screen.dart';
import 'package:bike_fixup_team_project/widgets/bikefixup_screen/See%20Appointment_widget.dart';
import 'package:bike_fixup_team_project/widgets/bikefixup_screen/contactus_screen.dart';
import 'package:bike_fixup_team_project/widgets/bikefixup_screen/create_new_workshop.dart';

import 'package:bike_fixup_team_project/widgets/bikefixup_screen/paymentqr_widget.dart';
import 'package:bike_fixup_team_project/widgets/bikefixup_screen/youtub_screen_widget.dart';
import 'package:bike_fixup_team_project/widgets/home_screen/bottom_navagationbar_widget.dart';
import 'package:bike_fixup_team_project/widgets/my_workshop_screnn/edit_detail_widget.dart';
import 'package:bike_fixup_team_project/widgets/my_workshop_screnn/my_workshop_erson.dart';
import 'package:flutter/cupertino.dart';

import '../constants/routes_constants.dart';
import '../view/welcome_screen/welcome_screen.dart';

class Routes {
  static Map<String, WidgetBuilder> get routes {
    return {
      RouteList.welcome: (context) => Welcomescreen(),
      RouteList.login:(context) => Loginscreen(),
    RouteList.OTP:(context) => OTPVerificationscreen(),
      RouteList.register:(context) => Registerscreen(),
      RouteList.bottomNavigationBar:(context) => BottomNavagationbarscreen(),
      RouteList.home:(context) => Homescreen(),
      RouteList.Profile:(context) => Profilescreen(),
      RouteList.BIKEFIXUP:(context) => Bikefixupscreen(),
      RouteList.MyWorkshop:(context) => Myworkshop(),
      RouteList.Earning:(context) => Earringscreen(),
      RouteList.OrderStatus:(context) => OrderStatusscreen(),
      RouteList.calendar:(context) => Calendarscreen(),
      RouteList.workshopProfile:(context) => MyProfilescreen(),
      RouteList.EditDetail:(context) => EditDetailwidget(),
      RouteList.ScanQRCode:(context) => PaymentQRscreen(),
      RouteList.SeeAppointment:(context) => SeeAppointment(),
      RouteList.ContactUs:(context) => ContactUsscreen(),
      RouteList.youtube:(context) => youtubeFeedVideos(),
      //RouteList.setupworkshop:(context) => Setuoworkshop(),
      RouteList.CreateNewWorkshop:(context) => CreateNewWorkshopscreen(),
    };
  }
 
  }