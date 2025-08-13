import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../models/reading.dart';

class IsarService {
  static late Isar isar;

  static Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([ReadingSchema], directory: dir.path);
  }

  static Future<void> addReading(Reading reading) async {
    await isar.writeTxn(() async {
      await isar.readings.put(reading);
    });
  }

  static Future<void> updateSensorValues(
    int id, {
    double? n,
    double? p,
    double? k,
    double? moisture,
    double? temperature,
    double? ph,
    double? lighting,
    double? conductivity,
  }) async {
    await isar.writeTxn(() async {
      final reading = await isar.readings.get(id);
      if (reading != null) {
        if (n != null) reading.n = n;
        if (p != null) reading.p = p;
        if (k != null) reading.k = k;
        if (moisture != null) reading.moisture = moisture;
        if (temperature != null) reading.temperature = temperature;
        if (ph != null) reading.ph = ph;
        if (lighting != null) reading.lighting = lighting;
        if (conductivity != null) reading.conductivity = conductivity;
        await isar.readings.put(reading);
      }
    });
  }
}
