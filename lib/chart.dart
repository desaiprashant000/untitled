import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class chart extends StatefulWidget {
  const chart({Key? key}) : super(key: key);

  @override
  State<chart> createState() => _chartState();
}

class _chartState extends State<chart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                child: SfSparkBarChart (
                  // borderWidth: 20,
                  color: Colors.deepOrange,

                  borderColor: Colors.green,
                  //Enable the trackball
                  trackball: SparkChartTrackball(
                    borderRadius: BorderRadius.circular(20),
                      activationMode: SparkChartActivationMode.tap),
                  //Enable marker
                  // marker: SparkChartMarker(
                  //     displayMode: SparkChartMarkerDisplayMode.all),
                  //Enable data label
                  labelDisplayMode: SparkChartLabelDisplayMode.all,
                  data: <double>[
                    1, 5, -6, 0, 1, -2, 7, -7, -4, -10, 13, -6, 7, 5, 11, 5, 3
                  ],
                )
            )
        )
    );
  }
}
