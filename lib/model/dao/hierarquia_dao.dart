import 'package:login_with_mysql_in_flutter/model/bo/hierarquia.dart';
import 'package:login_with_mysql_in_flutter/model/dao/I_crud.dart';

class HierarquiaDAO implements ICrud<Hierarquia>{
  @override
  create(Hierarquia object) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  delete(Hierarquia object) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Hierarquia retrive(int idObject) {
    // TODO: implement retrive
    throw UnimplementedError();
  }

  @override
  List<Hierarquia> retriveAll(int idObject) {
    // TODO: implement retriveAll
    throw UnimplementedError();
  }

  @override
  update(Hierarquia object) {
    // TODO: implement update
    throw UnimplementedError();
  }

  int retriveIdPelaSigla(String sigla) {
    return 1;
  }

}