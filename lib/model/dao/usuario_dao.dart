import 'package:login_with_mysql_in_flutter/model/bo/usuario.dart';
import 'package:login_with_mysql_in_flutter/model/dao/I_crud.dart';
import 'package:login_with_mysql_in_flutter/model/dao/conexao.dart';
import 'package:login_with_mysql_in_flutter/model/dao/funcao_dao.dart';
import 'package:login_with_mysql_in_flutter/model/dao/hierarquia_dao.dart';
import 'package:mysql1/mysql1.dart';

class UsuarioDAO implements ICrud<Usuario> {
  final conexao = Conexao();

  @override
  create(Usuario object) async {
    await conexao.iniciarConexao();

    /// inserir hierarquia
    final hierarquiaDAO = HierarquiaDAO();
    int hierarquiaId =
        hierarquiaDAO.retriveIdPelaSigla(object.hierarquia!.sigla!);

    /// inserir funcao (com nivel de acesso)
    final funcaoDAO = FuncaoDAO();
    int funcaoId = funcaoDAO.retriveIdDaDescricao(object.funcao!.descricao!);

    /// inserir usuario
    var result = await conexao.conn?.query(
        'insert into usuario(nome,status,dataDeCriacao,ultimoAcesso,hierarquiaId,funcaoId) values (?,?,?,?,?,?)',
        [
          object.nome,
          object.status,
          object.dataDeCriacao,
          object.ultimoAcesso,
          hierarquiaId,
          funcaoId
        ]);

    print('Insert row id= ${result?.insertId}');

    await conexao.fecharConexao();
  }

  @override
  delete(Usuario object) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Usuario retrive(int idObject) {
    // TODO: implement retrive
    throw UnimplementedError();
  }

  @override
  List<Usuario> retriveAll(int idObject) {
    // TODO: implement retriveAll
    throw UnimplementedError();
  }

  @override
  update(Usuario object) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
