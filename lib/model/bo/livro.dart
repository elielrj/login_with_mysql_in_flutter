import 'package:login_with_mysql_in_flutter/model/bo/alteracao_do_servico.dart';
import 'package:login_with_mysql_in_flutter/model/bo/hidrometro.dart';
import 'package:login_with_mysql_in_flutter/model/bo/relogio_energia.dart';

class Livro{
  String? escritor;
  DateTime? ultimoAcesso;
  List<Hidrometro>? hidrometros;
  List<RelogioEnergia>? relogiosDeEnergia;
  List<AlteracaoDoServico>? alteracoesDoServico;
}