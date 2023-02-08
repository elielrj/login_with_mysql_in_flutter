import 'dart:async';
import 'package:mysql1/mysql1.dart';

class Conexao {
  MySqlConnection? conn;

  /// Open a connection (testdb should already exist)
  ///
  Future<void> iniciarConexao() async {
    conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'servico',
      password: 'root',
    ));
  }

  /// Finally, close the connection
  Future<void> fecharConexao() async {
    await conn?.close();
  }
}
