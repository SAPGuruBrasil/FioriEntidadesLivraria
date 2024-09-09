@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Database View'
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_4L_FINAL_APP_EDITORAS
  as select from z4l_t_editora as _Editora
  composition [0..*] of ZI_4L_FINAL_APP_LIVROS as _Livros
  composition [0..*] of ZI_4L_FINAL_APP_AUTORES as _Autores
{
  key editora_uuid    as EditoraUuid,
      nome            as Nome,
      cnpj            as Cnpj,
      endereco_linha1 as EnderecoLinha1,
      endereco_linha2 as EnderecoLinha2,
      cidade          as Cidade,
      estado          as Estado,
      cep             as Cep,
      @Semantics.user.createdBy: true
      created_by      as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at      as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at as LastChangedAt,
      
      _Livros,
      _Autores
}
