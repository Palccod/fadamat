import 'package:isar/isar.dart';

part 'reading.g.dart';

@Collection()
class Reading {
  Id id = Isar.autoIncrement;

  late String name;
  late String phone;
  late String crop;
  late String soil;
  late DateTime date;

  // Sensor readings (initially 0)
  double n = 0;
  double p = 0;
  double k = 0;
  double moisture = 0;
  double temperature = 0;
  double ph = 0;
  double lighting = 0;
  double conductivity = 0;
}
