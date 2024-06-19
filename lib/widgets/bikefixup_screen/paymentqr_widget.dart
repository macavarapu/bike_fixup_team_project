import 'package:bike_fixup_team_project/constants/app_colors_constants.dart';
import 'package:bike_fixup_team_project/constants/image_constants.dart';
import 'package:bike_fixup_team_project/constants/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:upi_payment_qrcode_generator/upi_payment_qrcode_generator.dart';

class PaymentQRscreen extends StatefulWidget {
  const PaymentQRscreen({super.key});

  @override
  State<PaymentQRscreen> createState() => _PaymentQRscreenState();
}

class _PaymentQRscreenState extends State<PaymentQRscreen> {
  final upiDetails = UPIDetails(
      upiID: "singaraiahmachavarapu@ibl",
      payeeName: "singam",
      amount: 1,
      transactionNote: "Hello World");
  final upiDetailsWithoutAmount = UPIDetails(
    upiID: "singaraiahmachavarapu@ibl",
    payeeName: "singam",
    transactionNote: "Hello World",
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 40,
              color: AppColors.black,
            )),
        centerTitle: true,
        title: Text(StringConstants.ScanQRCode),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              height: 150,
              width: 400,
             // width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.with500,
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    ImageConstants.explanation,
                    height: 50,
                    width: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(StringConstants.UseCameratoscanQRCode),
                  ),
                ],
              ),
            ),
          ),
          QrImageView(
        data: "Welcome to code city",
        version:QrVersions.auto ,
        size: 300,
        ),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     const Text("UPI Payment QRCode without Amount",
          //         style: TextStyle(fontWeight: FontWeight.bold)),
          //     UPIPaymentQRCode(
          //       upiDetails: upiDetails,
          //       size: 200,
          //       embeddedImagePath: 'assets/images/logo.png',
          //       embeddedImageSize: const Size(60, 60),
          //     ),
          //     Text(
          //       "Scan QR to Pay",
          //       style: TextStyle(color: Colors.grey[600], letterSpacing: 1.2),
          //     ),
          //     const SizedBox(
          //       height: 20,
          //     ),
          //     const Text("UPI Payment QRCode with Amount",
          //         style: TextStyle(fontWeight: FontWeight.bold)),
          //     UPIPaymentQRCode(
          //       upiDetails: upiDetails,
          //       size: 220,
          //       upiQRErrorCorrectLevel: UPIQRErrorCorrectLevel.low,
          //     ),
          //     Text(
          //       "Scan QR to Pay",
          //       style: TextStyle(color: Colors.grey[600], letterSpacing: 1.2),
          //     ),
          //   ],
          // ),
      
        
        
        ],
      ),
    );
  }
}
