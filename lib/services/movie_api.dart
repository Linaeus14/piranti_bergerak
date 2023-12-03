part of './services.dart';

class Api {
  static const String apiKey = '0b026f86ca43fb4838eaf8830235604a';

  static Future<List<Film>> _getFilms() async {
    const String cacheKey = 'filmsCacheKey';
    Shared cache = Shared();
    await cache.open();
    final String? cachedData = cache.file.getString(cacheKey);
    final genreMap = await _getGenreMap();
    List<dynamic> results;

    if (cachedData == null) {
      var api = Uri.parse(
          "https://api.themoviedb.org/3/discover/movie?api_key=0b026f86ca43fb4838eaf8830235604a&language=en-US");
      final response =
          await http.get(api, headers: {"Content-Type": "application/json"});
      if (response.statusCode == 200) {
        final Map<String, dynamic> body = json.decode(response.body);
        results = body['results'];
        await cache.file.setString(cacheKey, jsonEncode(results));
      } else {
        throw Exception('Failed to load films');
      }
    } else {
      // If data is available in cache, parse and return it
      results = json.decode(cachedData);
    }

    final List<Film> films = results
        .map(
          (json) => Film.fromJson(json, genreMap),
        )
        .toList();
    return films;
  }

  static Future<List<Film>> _getComingSoon() async {
    const String cacheKey = 'comingSoonCacheKey';
    Shared cache = Shared();
    await cache.open();
    final String? cachedData = cache.file.getString(cacheKey);
    final genreMap = await _getGenreMap();
    List<dynamic> results;

    if (cachedData == null) {
      var api = Uri.parse(
          "https://api.themoviedb.org/3/movie/upcoming?api_key=0b026f86ca43fb4838eaf8830235604a&language=en-US");
      final response =
          await http.get(api, headers: {"Content-Type": "application/json"});
      if (response.statusCode == 200) {
        final Map<String, dynamic> body = json.decode(response.body);
        results = body['results'];
        await cache.file.setString(cacheKey, jsonEncode(results));
      } else {
        throw Exception('Failed to load films');
      }
    } else {
      // If data is available in cache, parse and return it
      results = json.decode(cachedData);
    }

    final List<Film> comingSoon = results
        .map(
          (json) => Film.fromJson(json, genreMap),
        )
        .toList();
    return comingSoon;
  }

  static Future<Map<int, String>> _getGenreMap() async {
    const String cacheKey = 'genreMapCacheKey';
    Shared cache = Shared();
    await cache.open();
    final String? cachedData = cache.file.getString(cacheKey);
    List<dynamic> genres;

    if (cachedData == null) {
      final genreApiUrl = Uri.parse(
          'https://api.themoviedb.org/3/genre/movie/list?api_key=0b026f86ca43fb4838eaf8830235604a&language=en-US');
      final response = await http.get(genreApiUrl);
      if (response.statusCode == 200) {
        final Map<String, dynamic> body = json.decode(response.body);
        genres = body['genres'];
        await cache.file.setString(cacheKey, jsonEncode(genres));
      } else {
        throw Exception('Failed to load genres');
      }
    } else {
      genres = jsonDecode(cachedData);
    }

    // Convert the List<dynamic> to List<Map<String, dynamic>>
    final List<Map<String, dynamic>> genreList =
        List<Map<String, dynamic>>.from(genres);

    // Create a map of genre IDs to genre names
    final Map<int, String> genreMap = {};
    for (final genre in genreList) {
      final int id = genre['id'];
      final String name = genre['name'];
      genreMap[id] = name;
    }
    return genreMap;
  }

  static Future<List<Cast>> getCastList(String movieId) async {
    const String cacheKey = 'castCacheKey';
    Shared cache = Shared();
    await cache.open();
    List<dynamic> castList;

    final String? cachedData = cache.file.getString(cacheKey);
    if (cachedData == null) {
      try {
        var api = Uri.parse(
            "https://api.themoviedb.org/3/movie/$movieId/credits?api_key=0b026f86ca43fb4838eaf8830235604a");
        final response =
            await http.get(api, headers: {"Content-Type": "application/json"});
        if (response.statusCode == 200) {
          final Map<String, dynamic> body = json.decode(response.body);

          // Extract the cast information directly from the response
          castList = body['cast'];
          await cache.file.setString(cacheKey, jsonEncode(castList));
        } else {
          throw Exception('Failed to load cast information');
        }
      } catch (error) {
        debugPrint(error.toString());
        rethrow;
      }
    } else {
      castList = jsonDecode(cachedData);
    }

    // Parse the cast information into a List<Cast>
    final List<Cast> castData =
        castList.map((json) => Cast.fromJson(json)).toList();
    return castData;
  }

  static Future<List<Film>> get futureData => _getFilms();
  static Future<List<Film>> get futureDataSoon => _getComingSoon();
}
