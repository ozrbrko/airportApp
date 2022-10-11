import 'dart:async';



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
  List<Marker> pointers = <Marker>[];

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
    var ekranBilgisi = MediaQuery.of(context).size;
    var ekranYuksekligi = ekranBilgisi.height;
    var ekranGenisligi = ekranBilgisi.width;

    return
      Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Airportal",
              style: TextStyle(
                  fontFamily: "KaushanScript",
                  fontSize: ekranYuksekligi / 25.6984126984127),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
              )
            ],
            backgroundColor: Color(0xff224459),
            elevation: ekranYuksekligi / 110.6938775510204,
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
                            top: ekranYuksekligi / 100,
                            left: ekranGenisligi / 10,
                            right: ekranGenisligi / 10),
                        child: SizedBox(
                          height: ekranYuksekligi / 12.91428571428572,
                          child: Padding(
                            padding: EdgeInsets.all(
                                ekranYuksekligi / 96.85714285714286),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffC9D6F5), //0xffD97D48
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(
                                        ekranYuksekligi / 25.82857142857143),
                                    bottomRight: Radius.circular(
                                        ekranYuksekligi / 25.82857142857143),
                                    topLeft: Radius.circular(
                                        ekranYuksekligi / 25.82857142857143),
                                    bottomLeft: Radius.circular(
                                        ekranYuksekligi / 25.82857142857143)),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: ekranYuksekligi / 43.04761904761905,
                                    bottom: ekranYuksekligi / 258.2857142857143),
                                child: Stack(children: [
                                  TextField(
                                    controller: tfSearch,
                                    decoration: InputDecoration(
                                        hintText: "Ara",
                                        border: InputBorder.none),
                                  ),
                                  Positioned(
                                      left: ekranGenisligi / 1.7,
                                      top: ekranYuksekligi / 154.9714285714286,
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
                                            height: ekranYuksekligi /
                                                22.13877551020408,
                                            width: ekranYuksekligi /
                                                22.13877551020408,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      ekranYuksekligi /
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
                      color: Colors.white,
                      height: ekranYuksekligi / 1.32,
                      width: ekranGenisligi,
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
                  Padding(
                    padding: const EdgeInsets.only(top: 508.0, left: 10),
                    child: SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                        child: Text(
                          "Liste Görünümü",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xffC9D6F5),
                            shadowColor: Colors.black,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(7)),
                              side: BorderSide(color: Colors.black),
                            )),
                        onPressed: () {
                          print("sdssddsdsdsds");

                          Navigator.pop(context, true);


                        },
                      ),
                    ),
                  ),

                ]),
              ],
            ),
          ));

  }
}
