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
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isWide = constraints.maxWidth > 800;
        return isWide
            ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Current Readings Card
                Expanded(child: _CurrentReadingsCard()),
                SizedBox(width: defaultPadding),
                // Sensor Readings Card
                Expanded(child: _SensorReadingsCard()),
              ],
            )
            : Column(
              children: [
                _CurrentReadingsCard(),
                SizedBox(height: defaultPadding),
                _SensorReadingsCard(),
              ],
            );
      },
    );
  }
}

class _CurrentReadingsCard extends StatelessWidget {
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
            "Current Readings",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            width: double.infinity,
            child: StreamBuilder<Reading?>(
              stream: IsarService.isar.readings
                  .where()
                  .sortByDateDesc()
                  .limit(1)
                  .watch(fireImmediately: true)
                  .map((list) => list.isNotEmpty ? list.first : null),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator());
                }
                final reading = snapshot.data;
                if (reading == null) {
                  return Center(child: Text("No data"));
                }
                return DataTable(
                  columnSpacing: defaultPadding,
                  horizontalMargin: 0,
                  columns: [
                    DataColumn(label: Text("Name")),
                    DataColumn(label: Text("Crop")),
                    DataColumn(label: Text("Soil")),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(Text(reading.name)),
                        DataCell(Text(reading.crop)),
                        DataCell(Text(reading.soil)),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _SensorReadingsCard extends StatelessWidget {
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
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          MeasurementInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "N",
            value: 0,
            unit: "mg/kg",
          ),
          MeasurementInfoCard(
            svgSrc: "assets/icons/media.svg",
            title: "P",
            value: 0,
            unit: "mg/kg",
          ),
          MeasurementInfoCard(
            svgSrc: "assets/icons/folder.svg",
            title: "K",
            value: 0,
            unit: "mg/kg",
          ),
          MeasurementInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "Soil Moisture",
            value: 0,
            unit: "%",
          ),
          MeasurementInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "Soil Temperature",
            value: 0,
            unit: "°C",
          ),
          MeasurementInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "Environmental Temperature",
            value: 0,
            unit: "°C",
          ),
          MeasurementInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "Humidity",
            value: 0,
            unit: "%",
          ),
          MeasurementInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "Light Intensity",
            value: 0,
            unit: "%",
          ),
          MeasurementInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "pH",
            value: 0,
            unit: "",
          ),
        ],
      ),
    );
  }
}
