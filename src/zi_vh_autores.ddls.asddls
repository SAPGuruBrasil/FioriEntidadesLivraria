@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Ajuda de pesquisa para Autores'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
@Search.searchable: true
define view entity ZI_VH_AUTORES
  as select from z4l_t_autores
{
  key autor_uuid         as AutorUuid,
      @Search.defaultSearchElement: true
      @EndUserText.label: 'Nome do Autor'
      nome               as Nome,
      @EndUserText.label: 'Sobrenome do Autor'
      sobrenome          as Sobrenome,
      @EndUserText.label: 'Apelido do Autor'
      apelido            as Apelido,
      @EndUserText.label: 'Data de Nascimento'
      data_de_nascimento as DataDeNascimento,
      @EndUserText.label: 'Data de Morte'
      data_de_morte      as DataDeMorte,
      @EndUserText.label: 'Pais de Origem'
      pais_de_origem     as PaisDeOrigem
}
