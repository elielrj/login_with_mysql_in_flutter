import 'package:login_with_mysql_in_flutter/model/bo/funcao.dart';
import 'package:login_with_mysql_in_flutter/model/bo/guarnicao_de_servico.dart';
import 'package:login_with_mysql_in_flutter/model/bo/hierarquia.dart';

class Usuario{
  String? nome;
  bool? status;
  DateTime? dataDeCriacao;
  DateTime? ultimoAcesso;
  Funcao? funcao;
  Hierarquia? hierarquia;
  List<GuarnicaoDeServico>? guarnicoesDeServico;
}