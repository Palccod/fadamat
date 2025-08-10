import 'package:fadamat/constants.dart';
import 'package:fadamat/responsive.dart';
import 'package:fadamat/screens/dashboard/components/header.dart';
import 'package:fadamat/screens/dashboard/components/sensor_readings.dart';
import 'package:fadamat/screens/dashboard/components/your_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

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
                                Expanded(child: SearchField()),
                              ],
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: DataTable(
                                columnSpacing: defaultPadding,
                                horizontalMargin: 0,
                                columns: [
                                  DataColumn(label: Text("Name")),
                                  DataColumn(label: Text("Phone")),
                                  DataColumn(label: Text("Soil")),
                                  DataColumn(label: Text("Date")),
                                ],
                                rows: [recentMeasurementDataRow()],
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

  DataRow recentMeasurementDataRow() {
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Text("Jane Smith"),
              ),
            ],
          ),
        ),
        DataCell(Text("123-456-7890")), // <-- Add this line
        DataCell(Text("Loamy")),
        DataCell(Text("2025-06-04")),
      ],
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
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
            // Implement search functionality here
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
