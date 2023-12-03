import 'package:shared_preferences/shared_preferences.dart';

class Shared {
  late SharedPreferences file;

  Future<void> open() async {
    file = await SharedPreferences.getInstance();
  }

  Future<void> clearCache() async {
    await file.remove("filmsCacheKey");
    await file.remove("comingSoonCacheKey");
    await file.remove("genreMapCacheKey");
    await file.remove("castCacheKey");
  }
}
