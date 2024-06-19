import 'package:bike_fixup_team_project/constants/image_constants.dart';
import 'package:flutter/material.dart';

class CircleAvatarwidget extends StatelessWidget {
  const CircleAvatarwidget({super.key});

  @override
  Widget build(BuildContext context) {
        return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage(ImageConstants.bike1),
          ),
          Positioned(
              bottom: 0,
              right: -25,
              child: RawMaterialButton(
                onPressed: () {},
                elevation: 2.0,
                fillColor: Color(0xFFF5F6F9),
                child: Icon(Icons.camera_alt_outlined, color: Colors.blue,),
                padding: EdgeInsets.all(15.0),
                shape: CircleBorder(),
              )),
        ],
      ),
    );
  }
}