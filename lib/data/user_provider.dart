import 'package:basic_demo/models/user_model.dart';
import 'package:sqflite/sqflite.dart';

class UserProvider {
  Database db;

  Future open(String path) async {
    db = await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    String sql =
        """create table User(id integer primary key autoincrement,username text not null, password text not null)""";
    await db.execute(sql);
  }

  Future<int> insertUser(User user) async {
    var id = await this.db.insert('User', user.toMap());
    return id;
  }

  Future<int> deleteuser(User user) async {
    var id =
        await this.db.delete('User', where: 'id = ?', whereArgs: [user.id]);
    return id;
  }
}
