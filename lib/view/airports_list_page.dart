import 'package:airportal/model/airports_model.dart';
import 'package:airportal/view/airports_map_page.dart';
import 'package:airportal/view/login_page.dart';
import 'package:airportal/viewmodel/airports_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../component/constant/enum.dart';
import '../component/responsive/frame_size.dart';


class AirportsListPage extends StatefulWidget {
  const AirportsListPage({Key? key}) : super(key: key);

  @override
  State<AirportsListPage> createState() => _AirportsListPageState();
}

class _AirportsListPageState extends State<AirportsListPage> {

  AirportsViewModel? airportsStore;
  var tfSearch = TextEditingController();

  @override
  void initState() {
    airportsStore = AirportsViewModel();
    airportsStore!.init();
    airportsStore!.getAirportsDatas("ank");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    FrameSize.init(context: context);

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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          )
        ],
        backgroundColor: Color(0xff224459),
        elevation: 5,
        shadowColor: Color(0xffD97D48),
      ),
      body: WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: ListView(
          children: [buildObserver()],
        ),
      ),
    );
  }

  Observer buildObserver() {
    return Observer(builder: (context) {
      switch (airportsStore!.pageState) {
        case PageState.LOADING:
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: FrameSize.screenHeight! / 3),
                child: CircularProgressIndicator(),
              ),
            ],
          );

        case PageState.SUCCESS:
          return SingleChildScrollView(
            child: Container(
              color: Colors.grey[100],
              child: Column(
                children: [
                  Container(
                    color: Colors.grey[100],
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
                                          hintText: "Ara",
                                          border: InputBorder.none),
                                    ),
                                    Positioned(
                                        left: FrameSize.screenWidth! / 1.7,
                                        top: FrameSize.screenHeight! /
                                            154.9714285714286,
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              print(tfSearch.text);
                                              airportsStore = AirportsViewModel();
                                              airportsStore!.init();
                                              airportsStore!.getAirportsDatas("${tfSearch.text}");
                                            });


                                          },
                                          child: Container(
                                              height: FrameSize.screenHeight! /
                                                  22.13877551020408,
                                              width: FrameSize.screenHeight! /
                                                  22.13877551020408,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(FrameSize
                                                            .screenHeight! /
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
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Stack(children: [
                      Container(
                        color: Colors.grey[100],
                        height: FrameSize.screenHeight! / 1.25,
                        child: ListView.builder(
                            itemCount:
                                airportsStore!.airportsResultList!.length,
                            itemBuilder: (context, index) {
                              AirportsResult? item =
                                  airportsStore!.airportsResultList![index];
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Colors.white
                                      ),
                                      width: FrameSize.screenWidth,
                                      height: FrameSize.screenHeight! / 7,
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "${item!.shortName!.toString()} ${item.countryCode!.toString()}",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 5.0),
                                                  child: Row(
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 8.0),
                                                            child: Text(
                                                                "Icao: ${item.icao.toString()} "),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 8.0),
                                                            child: Text(
                                                                "Iata: ${item.iata.toString()} "),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 8.0,
                                                                    left: 15.0),
                                                            child: Text(
                                                                "Lat: ${item.location!.lat.toString()} "),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 8.0,
                                                                    left: 23),
                                                            child: Text(
                                                                "Lon: ${item.location!.lon.toString()} "),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              );
                            }),
                      ),

                      Positioned(
                        left: FrameSize.screenWidth!/1.25,
                        top: FrameSize.screenHeight!/1.5,
                        child: FloatingActionButton( onPressed: () {

                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => AirportsPage()));


                        },
                          backgroundColor: Color(0xff224459),
                          child: const Icon(Icons.map),),
                      )
                    ]),
                  )
                ],
              ),
            ),
          );
        default:
          return Container(
            child: Center(
              child: Text("Lütfen Bekleyin"),
            ),
          );
      }
    });
  }
}
