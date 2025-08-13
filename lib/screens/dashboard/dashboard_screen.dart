import 'package:fadamat/constants.dart';
import 'package:fadamat/responsive.dart';
import 'package:fadamat/screens/dashboard/components/header.dart';
import 'package:fadamat/screens/dashboard/components/sensor_readings.dart';
import 'package:fadamat/screens/dashboard/components/your_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:isar/isar.dart';

import '../../models/reading.dart';
import '../../services/isar_service.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchTerm = "";

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {
        _searchTerm = _searchController.text.trim().toLowerCase();
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      YourInfo(),
                      SizedBox(height: defaultPadding),
                      Container(
                        padding: EdgeInsets.all(defaultPadding),
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Recent Readings",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                Spacer(
                                  flex: Responsive.isDesktop(context) ? 2 : 1,
                                ),
                                Expanded(
                                  child: SearchField(
                                    controller: _searchController,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: StreamBuilder<List<Reading>>(
                                stream: IsarService.isar.readings
                                    .where()
                                    .sortByDateDesc()
                                    .watch(fireImmediately: true)
                                    .map(
                                      (list) =>
                                          list.length <= 1
                                              ? []
                                              : list.sublist(1),
                                    ),
                                builder: (context, snapshot) {
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  }
                                  final readings = snapshot.data!;
                                  // Filter readings by search term (name)
                                  final filtered =
                                      _searchTerm.isEmpty
                                          ? readings
                                          : readings
                                              .where(
                                                (r) => r.name
                                                    .toLowerCase()
                                                    .contains(_searchTerm),
                                              )
                                              .toList();
                                  return DataTable(
                                    columnSpacing: defaultPadding / 2,
                                    horizontalMargin: 0,
                                    columns: [
                                      DataColumn(label: Text("Name")),
                                      DataColumn(label: Text("Phone")),
                                      DataColumn(label: Text("Crop")),
                                      DataColumn(label: Text("Soil")),
                                      DataColumn(label: Text("Date")),
                                    ],
                                    rows:
                                        filtered.map((reading) {
                                          return DataRow(
                                            cells: [
                                              DataCell(
                                                Row(
                                                  children: [
                                                    SvgPicture.asset(
                                                      "assets/icons/user.svg",
                                                      color: primaryColor,
                                                      height: 20,
                                                      width: 20,
                                                    ),
                                                    SizedBox(width: 8),
                                                    Flexible(
                                                      child: Text(
                                                        reading.name,
                                                        overflow:
                                                            TextOverflow
                                                                .ellipsis,
                                                        softWrap: true,
                                                        maxLines: 2,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              DataCell(
                                                SizedBox(
                                                  width: 90, // adjust as needed
                                                  child: Text(
                                                    reading.phone,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    softWrap: true,
                                                    maxLines: 2,
                                                  ),
                                                ),
                                              ),
                                              DataCell(
                                                SizedBox(
                                                  width: 90, // adjust as needed
                                                  child: Text(
                                                    reading.crop,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    softWrap: true,
                                                    maxLines: 2,
                                                  ),
                                                ),
                                              ),
                                              DataCell(
                                                SizedBox(
                                                  width: 90, // adjust as needed
                                                  child: Text(
                                                    reading.soil,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    softWrap: true,
                                                    maxLines: 2,
                                                  ),
                                                ),
                                              ),
                                              DataCell(
                                                SizedBox(
                                                  width:
                                                      120, // adjust as needed
                                                  child: Text(
                                                    reading.date
                                                        .toString()
                                                        .split('.')
                                                        .first,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    softWrap: true,
                                                    maxLines: 2,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        }).toList(),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (Responsive.isMobile(context))
                        SizedBox(height: defaultPadding),
                      if (Responsive.isMobile(context)) MeasurementDetails(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(width: defaultPadding),
                if (!Responsive.isMobile(context))
                  Expanded(flex: 2, child: MeasurementDetails()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  final TextEditingController controller;
  const SearchField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: Colors.white,
      cursorHeight: 18,
      decoration: InputDecoration(
        fillColor: Colors.black.withAlpha((0.08 * 255).toInt()),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        suffixIcon: InkWell(
          onTap: () {
            // Optionally clear or focus
          },
          child: Container(
            padding: EdgeInsets.all(defaultPadding * 0.75),
            margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset("assets/icons/Search.svg"),
          ),
        ),
      ),
    );
  }
}
