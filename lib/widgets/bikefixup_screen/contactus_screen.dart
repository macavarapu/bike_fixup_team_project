import 'package:bike_fixup_team_project/constants/app_colors_constants.dart';
import 'package:bike_fixup_team_project/constants/image_constants.dart';
import 'package:bike_fixup_team_project/constants/string_constants.dart';
import 'package:bike_fixup_team_project/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContactUsscreen extends StatefulWidget {
  const ContactUsscreen({super.key});

  @override
  State<ContactUsscreen> createState() => _ContactUsscreenState();
}

class _ContactUsscreenState extends State<ContactUsscreen> {
  final name=[
    StringConstants.phonenumbertext,
    StringConstants.Gmail,
    StringConstants.Whatsap,

  ];
  final subnames=[
    StringConstants.phonenumber,
    StringConstants.hotpro,
    StringConstants.Whatsapnamber,
  ];
  final icons=[
   
        ImageConstants.Whatsap,
         ImageConstants.Whatsap,
          ImageConstants.Whatsap,

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: AppColors.black,
            )),
        centerTitle: true,
        title: Text(
          StringConstants.ContactUs,
          style: TextStyles.body1(
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
          height: 400,
            child: ListView.builder(
              itemCount: name.length,
              itemBuilder: (contex,index){
                return  Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  color: AppColors.backgroundColor,
                  child: Card(
                    
                      //elevation: 20,
                                shadowColor: AppColors.backgroundColor,
                                color: AppColors.backgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ListTile(
                      leading: Column(
                        children: [
                           Text("${name[index]}",
                            style: TextStyles.body2(
                             
                      ),
                           ),
                     
                          
                          Text("${subnames[index]}" ,
                          style: TextStyles.body2(
                        fontSize: 15,
                      ),),
                            
                        ],
                      ),
                             // trailing: SvgPicture.asset(ImageConstants.Gmail),
                            trailing:SvgPicture.asset("${icons[index]}",height: 100,),
                              ),
                    ),
                  ),
                );
              }
            
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.blue,
                      ),
                      child:  Icon(Icons.facebook_rounded,size: 40,color: AppColors.backgroundColor,),
                  ),
                        Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.with500,
                      ),
                      child: Image.asset(ImageConstants.instagram,height: 100,),
                     // child:  Icon(Icons.facebook_rounded,size: 40,color: AppColors.backgroundColor,),
                  ),
                        Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.red,
                      ),
                      child: InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, "/youtub");
                        },
                        child: Image.asset(ImageConstants.youtube,height: 100,)),
                      //child:  Icon(Icons.youtube_searched_for_rounded,size: 40,color: AppColors.backgroundColor,),
                  ),
                  
                  


                ],
              ),
          
            ],
          ),
        ],
      ),
    );
  }
}
