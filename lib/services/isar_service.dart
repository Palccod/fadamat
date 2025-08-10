import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../models/reading.dart';

class IsarService {
  static late Isar isar;

  static Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([ReadingSchema], directory: dir.path);
  }
}
