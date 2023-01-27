import 'package:airportal/model/airports_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../view/login_page.dart';

class AlertDialogFunctions {
  static Future exitApp(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Airportal"),
            content: Text(
              "Çıkış yapmak istediğinizden emin misiniz?",
              style: TextStyle(fontFamily: 'IBMPlexSans'),
            ),
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
  }

  static Future? alertInfo(BuildContext context) {
    Alert(
      context: context,
      type: AlertType.warning,
      desc: "Please enter text consisting of at least 3 letters.",
      buttons: [
        DialogButton(
          color: Colors.blue,
          child: Text(
            "Tamam",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          width: 120,
        ),
      ],
    ).show();
  }

  static Future? airportDetail(BuildContext context,
      AirportsResult? item,) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: EdgeInsets.only(top: 10.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0))),

            title: Center(child: Text("${item!.name}")),
            content: Container(
              height: 100.0,
              child: Container(

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                  Text("City: ${item!.municipalityName}"),
                  Text("Iata: ${item!.iata}"),
                  Text("Icao: ${item!.icao}"),

              ],
            ),
                ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.white,
                // width: 1.0,
              ),
              borderRadius: BorderRadius.circular(32.0),
            ),
          ),),

            // actions: [
            //   IconButton(onPressed: (){
            //     Navigator.of(context).pop();
            //   }, icon: Icon(Icons.close))
            // ],

          );
        });
  }
}
