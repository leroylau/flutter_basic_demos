import 'package:basic_demo/models/user_model.dart';
import 'package:sqflite/sqflite.dart';

class UserProvider {
  static Database _db;

  Future<Database> get db async {
    if (_db != null) return _db;
    _db = await initDb();
    return _db;
  }

  Future initDb() async {
    Directory documentDirectory = await getApplicationDocumentDirectory();
    db = await openDatabase(path, version: 1, onCreate: _onCreate);
  }
  //[onCreate] is called if the database did not exist prior to calling [openDatabase].
  //You can use the opportunity to create the required tables in the database according to your schema

  Future _onCreate(Database db, int version) async {
    String sql =
        """create table User(id integer primary key autoincrement,username text not null, password text not null)""";
    await db.execute(sql);
  }

  Future<int> insertUser(User user) async {
    var id = await this.db.insert('User', user.toMap());
    return id;
  }

  Future<int> deleteUser(User user) async {
    var id = await this
        .db
        .delete('User', where: 'username = ?', whereArgs: [user.username]);
    return id;
  }
}
