import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import '../../../constants.dart';
import '../../../models/reading.dart';
import '../../../services/isar_service.dart';
import 'chart.dart';
import 'measurement_info_card.dart';

class MeasurementDetails extends StatelessWidget {
  const MeasurementDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sensor Readings",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),

          SizedBox(
            width: double.infinity,
            child: FutureBuilder<List<Reading>>(
              future:
                  IsarService.isar.readings.where().sortByDateDesc().findAll(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator());
                }
                final readings = snapshot.data!;
                return DataTable(
                  columnSpacing: defaultPadding,
                  horizontalMargin: 0,
                  columns: [
                    DataColumn(label: Text("Name")),
                    DataColumn(label: Text("Phone")),
                    DataColumn(label: Text("Soil")),
                    DataColumn(label: Text("Date")),
                  ],
                  rows:
                      readings.map((reading) {
                        return DataRow(
                          cells: [
                            DataCell(Text(reading.name)),
                            DataCell(Text(reading.phone)),
                            DataCell(Text(reading.soil)),
                            DataCell(Text(reading.date.toString())),
                          ],
                        );
                      }).toList(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
