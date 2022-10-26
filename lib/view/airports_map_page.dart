import 'dart:async';

import 'package:airportal/component/responsive/frame_size.dart';
import 'package:airportal/view/airports_list_page.dart';
import 'package:airportal/view/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

var tfSearch = TextEditingController();

class AirportsPage extends StatefulWidget {
  const AirportsPage({Key? key}) : super(key: key);

  @override
  State<AirportsPage> createState() => _AirportsPageState();
}

class _AirportsPageState extends State<AirportsPage> {
  Completer<GoogleMapController> mapControl = Completer();
  List<Marker> pointers = <Marker>[



  ];

  var baslangicKonum =
      CameraPosition(target: LatLng(38.7412482, 26.1844276), zoom: 0.1);

  Future<void> konumaGit(double lon, double lat) async {
    GoogleMapController controller = await mapControl.future;
    var arrivePointer = Marker(
        markerId: MarkerId("id"),
        position: LatLng(lon, lat),
        infoWindow: InfoWindow(title: "Airport"));

    // var arrive2Pointer = Marker(markerId: MarkerId("id"),position: LatLng(38.9412482, 26.1844276),
    //     infoWindow: InfoWindow(title: "aa",snippet: "fff"));

    setState(() {
      pointers.add(arrivePointer);
      // pointers.add(arrive2Pointer);
    });
  }

  @override
  void initState() {
    // konumaGit(38.7412482, 26.1844276);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            "Airportal",
            style: TextStyle(
                fontFamily: "KaushanScript",
                fontSize: FrameSize.screenHeight! / 25.6984126984127),
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
          elevation: FrameSize.screenHeight! / 110.6938775510204,
          shadowColor: Color(0xffD97D48),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(

                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: FrameSize.screenHeight! / 100,
                          left: FrameSize.screenWidth! / 10,
                          right: FrameSize.screenWidth! / 10),
                      child: SizedBox(
                        height: FrameSize.screenHeight! / 12.91428571428572,
                        child: Padding(
                          padding: EdgeInsets.all(
                              FrameSize.screenHeight! / 96.85714285714286),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffC9D6F5), //0xffD97D48
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(
                                      FrameSize.screenHeight! /
                                          25.82857142857143),
                                  bottomRight: Radius.circular(
                                      FrameSize.screenHeight! /
                                          25.82857142857143),
                                  topLeft: Radius.circular(
                                      FrameSize.screenHeight! /
                                          25.82857142857143),
                                  bottomLeft: Radius.circular(
                                      FrameSize.screenHeight! /
                                          25.82857142857143)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: FrameSize.screenHeight! /
                                      43.04761904761905,
                                  bottom: FrameSize.screenHeight! /
                                      258.2857142857143),
                              child: Stack(children: [
                                TextField(
                                  controller: tfSearch,
                                  decoration: InputDecoration(
                                      hintText: "Search",
                                      border: InputBorder.none),
                                ),
                                Positioned(
                                    left: FrameSize.screenWidth! / 1.7,
                                    top: FrameSize.screenHeight! /
                                        154.9714285714286,
                                    child: GestureDetector(
                                      onTap: () {
                                        // konumaGit();
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) => LoginPage()));

                                        print(tfSearch.text);
                                      },
                                      child: Container(
                                          height: FrameSize.screenHeight! /
                                              22.13877551020408,
                                          width: FrameSize.screenHeight! /
                                              22.13877551020408,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                    FrameSize.screenHeight! /
                                                        25.82857142857143)),
                                            color: Colors.white,
                                          ),
                                          child: Icon(Icons.search)),
                                    ))
                              ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Stack(children: [

                Container(
                    // color: Colors.red,
                    height: FrameSize.screenHeight! / 1.240,
                    width: FrameSize.screenWidth,
                    child: SizedBox(
                      child: GoogleMap(
                        mapType: MapType.normal,
                        initialCameraPosition: baslangicKonum,
                        onMapCreated: (GoogleMapController controller) {
                          mapControl.complete(controller);
                        },
                        markers: Set<Marker>.of(pointers),
                      ),
                    )),
                Positioned(
                  right: FrameSize.screenWidth!/1.25,
                  top: FrameSize.screenHeight!/1.6,
                  child: FloatingActionButton( onPressed: () {

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AirportsListPage()));


                  },
                    backgroundColor: Color(0xff224459),
                    child: const Icon(Icons.list),),
                )
              ]),
            ],
          ),
        ));
  }





}


