import 'package:airportal/component/responsive/frame_size.dart';
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
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Airportal"),
                      content: Text(
                        "Çıkış yapmak istediğinizden emin misiniz?",style: TextStyle(fontFamily: 'IBMPlexSans'),),
                      actions: [
                        ElevatedButton(
                          child: Text(
                            "Vazgeç",
                            style: TextStyle(
                                color: Color(0xff74A2B7),
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'IBMPlexSans'),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        ElevatedButton(
                          child: Text(
                            "Çıkış Yap",
                            style: TextStyle(
                                color: Color(0xff74A2B7),
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'IBMPlexSans'),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => LoginPage()));
                          },
                        ),
                      ],
                    );
                  });
            },
          )
        ],
        backgroundColor: Color(0xff224459),
        elevation: 5,
        shadowColor: Color(0xffD97D48),
      ),
      body: Container(
        color: Colors.blue,
        width: FrameSize.screenWidth,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                width: FrameSize.screenWidth,
                height: 200,
                color: Colors.white,
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("${widget.cameList!.icao}",style: TextStyle(fontSize: 35),),
                    Text("icao: dsfsdfsd",style: TextStyle(fontSize: 15),),
                    Text("ülke: dsfsdfdsdf",style: TextStyle(fontSize: 15),),

                  ],
                ),

              ),
            ),


            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                height: 200,
                width: FrameSize.screenWidth,
                color: Colors.white,
                child: Text("Website"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
