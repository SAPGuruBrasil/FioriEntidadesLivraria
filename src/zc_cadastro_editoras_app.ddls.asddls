@EndUserText.label: 'Projection View'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true

@OData.publish: true

define root view entity ZC_CADASTRO_EDITORAS_APP as projection on ZI_CADASTRO_EDITORAS_APP
{
    key EditoraUuid,
    @EndUserText.label: 'Nome da Editora'
    Nome,
    @EndUserText.label: 'CNPJ'
    Cnpj,
    @EndUserText.label: 'Endereço'
    EnderecoLinha1,
    @EndUserText.label: 'Complemento'
    EnderecoLinha2,
    @EndUserText.label: 'Cidade'
    Cidade,
    @EndUserText.label: 'Estado'
    Estado,
    @EndUserText.label: 'CEP'
    Cep,
    @EndUserText.label: 'Criado por'
    CreatedBy,
    @EndUserText.label: 'Criado em'
    CreatedAt,
    @EndUserText.label: 'Alterado por'
    LastChangedBy,
    @EndUserText.label: 'Alterado em'
    LastChangedAt
}
