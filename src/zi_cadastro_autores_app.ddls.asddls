@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Database View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_CADASTRO_AUTORES_APP
  as select from z4l_t_autores as _Autores
{
  key autor_uuid         as AutorUuid,
      nome               as Nome,
      sobrenome          as Sobrenome,
      apelido            as Apelido,
      editora_uuid       as EditoraUuid,
      data_de_nascimento as DataDeNascimento,
      data_de_morte      as DataDeMorte,
      biografia          as Biografia,
      cidade_natal       as CidadeNatal,
      pais_de_origem     as PaisDeOrigem,
      @Semantics.user.createdBy: true
      created_by         as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at         as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by    as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at    as LastChangedAt
}
