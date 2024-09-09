@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Ajuda de pesquisa para Editoras'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
@Search.searchable: true
define view entity ZI_VH_EDITORAS as select from z4l_t_editora
{
    key editora_uuid as EditoraUuid,
    @Search.defaultSearchElement: true
    @EndUserText.label: 'Nome'
    nome as Nome,
    @EndUserText.label: 'CNPJ'
    cnpj as Cnpj,
    @EndUserText.label: 'Endereço Linha 1'
    endereco_linha1 as EnderecoLinha1,
    @EndUserText.label: 'Endereço Linha 2'
    endereco_linha2 as EnderecoLinha2,
    @EndUserText.label: 'Cidade'
    cidade as Cidade,
    @EndUserText.label: 'Estado'
    estado as Estado,
    @EndUserText.label: 'CEP'
    cep as Cep
}
