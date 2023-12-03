import 'package:shared_preferences/shared_preferences.dart';

class Shared {
  late SharedPreferences file;

  Future<void> open() async {
    file = await SharedPreferences.getInstance();
  }

  Future<void> clearCache(String cacheKey) async {
    await file.remove(cacheKey);
  }

  Future<void> clearAllCache() async {
    await file.clear();
  }
}
