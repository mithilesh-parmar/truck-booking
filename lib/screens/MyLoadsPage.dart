import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:truck_booking/models/LoadOrder.dart';
import 'package:truck_booking/models/TruckLoad.dart';
import 'package:truck_booking/widgets/LoadListTile/LoadListTile.dart';

import 'LoadOrderDetails.dart';

class MyLoadsPage extends StatefulWidget {
  const MyLoadsPage({super.key});

  @override
  State<MyLoadsPage> createState() => _MyLoadsPageState();
}

class _MyLoadsPageState extends State<MyLoadsPage> {
  FleetOperator fleetOperator =
      FleetOperator("SN Logistics", "Mithilesh Parmar", "8561057510");
  TruckDetails truckDetails =
      TruckDetails("RJ37AC9926", "8925829103", "Mithilesh");

  List<TruckLoad> truckLoads = [
    TruckLoad(
        "Delhi Division, Delhi",
        "Delhi Division, Delhi",
        TruckLoadStatus.PENDING,
        "2303",
        TruckLoadType.FERTILIZER,
        TruckType.CONTAINER,
        "2000 Per Tonne",
        DateTime.now(),
        null),
    TruckLoad(
        "Delhi Division, Delhi",
        "Delhi Division, Delhi",
        TruckLoadStatus.PENDING,
        "2303",
        TruckLoadType.FERTILIZER,
        TruckType.CONTAINER,
        "2000 Per Tonne",
        DateTime.now(),
        null),
    TruckLoad(
        "Delhi Division, Delhi",
        "Delhi Division, Delhi",
        TruckLoadStatus.IN_PROGRESS,
        "2303",
        TruckLoadType.FERTILIZER,
        TruckType.CONTAINER,
        "2000 Per Tonne",
        DateTime.now(),
        null),
    TruckLoad(
        "Delhi Division, Delhi",
        "Delhi Division, Delhi",
        TruckLoadStatus.PENDING,
        "2303",
        TruckLoadType.FERTILIZER,
        TruckType.CONTAINER,
        "2000 Per Tonne",
        DateTime.now(),
        null),
    TruckLoad(
        "Delhi Division, Delhi",
        "Delhi Division, Delhi",
        TruckLoadStatus.IN_PROGRESS,
        "2303",
        TruckLoadType.FERTILIZER,
        TruckType.CONTAINER,
        "2000 Per Tonne",
        DateTime.now(),
        null),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              TabBar(
                  unselectedLabelColor: Colors.black,
                  indicatorColor: Colors.blue,
                  labelColor: Colors.blue,
                  labelStyle: TextStyle(fontWeight: FontWeight.w900),
                  indicatorWeight: 6,
                  tabs: [
                    Tab(
                      text: "Ongoing",
                    ),
                    Tab(
                      text: "Past",
                    )
                  ])
            ],
          ),
        ),
        body: Center(
          child: ListView.builder(
            padding: const EdgeInsets.only(top: 50, bottom: 50),
            itemBuilder: ((context, index) {
              return GestureDetector(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoadOrderDetails(
                        loadOrder: LoadOrder(index, truckLoads[index],
                            fleetOperator, truckDetails),
                      ),
                    ),
                  )
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 18, right: 18, top: 8, bottom: 8),
                  child: LoadListTile(
                    truckLoad: truckLoads[index],
                  ),
                ),
              );
            }),
            itemCount: truckLoads.length,
          ),
        ),
      ),
    );
  }
}
