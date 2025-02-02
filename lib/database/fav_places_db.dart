import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class FavoritePlacesDatabase {
  static final FavoritePlacesDatabase instance = FavoritePlacesDatabase._init();
  static Database? _database;

  FavoritePlacesDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB("favorites.db");
    return _database!;
  }

  Future<Database> _initDB(String fileName) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, fileName);

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE favorites (
            name TEXT NOT NULL,
            placeId TEXT PRIMARY KEY
          )
        ''');
      },
    );
  }

  Future<int> addFavorite(String name, String placeId) async {
    final db = await database;
    return await db.insert(
      "favorites",
      {"name": name, "placeId": placeId},
      conflictAlgorithm: ConflictAlgorithm.replace, // 👈 Zapobiega duplikatom
    );
  }

  Future<List<Map<String, dynamic>>> getFavorites() async {
    final db = await database;
    return await db.query("favorites");
  }

  Future<void> removeFavorite(String name) async {
    final db = await database;
    await db.delete("favorites", where: "name = ?", whereArgs: [name]);
  }
}
