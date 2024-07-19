@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Database View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_CADASTRO_AUTORES_APP 
  as select from z4l_t_autores as _Autores
  association [1..1] to z4l_t_editora as _Editora on _Autores.editora_uuid = _Editora.editora_uuid
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
      created_by         as CreatedBy,
      created_at         as CreatedAt,
      last_changed_by    as LastChangedBy,
      last_changed_at    as LastChangedAt,
      
      _Editora
}
