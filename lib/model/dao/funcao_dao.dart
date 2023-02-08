import 'package:login_with_mysql_in_flutter/model/bo/funcao.dart';
import 'package:login_with_mysql_in_flutter/model/dao/I_crud.dart';

class FuncaoDAO implements ICrud<Funcao>{
  @override
  create(Funcao object) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  delete(Funcao object) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Funcao retrive(int idObject) {
    // TODO: implement retrive
    throw UnimplementedError();
  }

  @override
  List<Funcao> retriveAll(int idObject) {
    // TODO: implement retriveAll
    throw UnimplementedError();
  }

  @override
  update(Funcao object) {
    // TODO: implement update
    throw UnimplementedError();
  }

  int retriveIdDaDescricao(String descricao) {
    return 1;
  }

}