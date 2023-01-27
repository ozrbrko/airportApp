import 'package:airportal/component/responsive/frame_size.dart';
import 'package:airportal/component/utils/alert_dialog.dart';
import 'package:airportal/model/airports_model.dart';
import 'package:flutter/material.dart';

import '../model/airports_detail_model.dart';
import 'login_page.dart';

class AirportsDetailPage extends StatefulWidget {

  AirportsResult? cameList;

  AirportsDetailPage({required this.cameList});



  @override
  State<AirportsDetailPage> createState() => _AirportsDetailPageState();
}

class _AirportsDetailPageState extends State<AirportsDetailPage> {


  @override
  void initState() {
    // TODO: implement initState
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Airportal",
          style: TextStyle(fontFamily: "KaushanScript", fontSize: 33),
        ),
        actions: <Widget>[
          IconButton(
            icon: SizedBox(
              height: 20,
              child: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              AlertDialogFunctions.exitApp(context);
            },
          )
        ],
        backgroundColor: Color(0xff224459),
        elevation: 5,
        shadowColor: Color(0xffD97D48),
      ),
      body: Container(
        color: Colors.grey[100],
        width: FrameSize.screenWidth,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                width: FrameSize.screenWidth,
                height: 200,
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("${widget.cameList!.shortName}",style: TextStyle(fontSize: 35),),
                    Text("${widget.cameList!.icao}",style: TextStyle(fontSize: 15),),
                    Text("${widget.cameList!.municipalityName}",style: TextStyle(fontSize: 15),),

                  ],
                ),

              ),
            ),


          ],
        ),
      ),
    );
  }
}
