import 'package:flutter_app_dddarquitetura/data/dataapi/data_providers.dart';

/// Visualizará sua dataAPI, e será a única conexão com o domain.
///
/// Aqui será tratado os erros, dados necessários para o domain.

class Repository {
  /// final DataAPI dataAPI; dependência de DataAPi
  /// DataAPI outraDataApi se houver necessidade.
  ///
  /// Methods aqui que iram pegar dados de DataAPI

  /// exemplo de um method
  ///
  /// Future<Model> getModelaqui(String tipo) async{
  /// final tipoModeloDataApi = dataAPI.oquetivernodataProvider(tipo);
  /// final tipoModeloDataApi2 = dataAPI.oquetivernodataProvider2(tipo);
  /// final modelTipo = Model.fromJson(tipoModeloDataAPi);
  ///
  /// return modelTipo;
  /// }
  ///
  /// Também aqui se poderá fazer tratamento de Erros com Try catch.
  /// Tudo isso será visualizado no domiain proxima camada!

}
