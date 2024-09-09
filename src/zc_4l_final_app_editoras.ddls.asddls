@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_4L_FINAL_APP_EDITORAS as projection on ZI_4L_FINAL_APP_EDITORAS
{
    key EditoraUuid,
    Nome,
    Cnpj,
    EnderecoLinha1,
    EnderecoLinha2,
    Cidade,
    Estado,
    Cep,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    /* Associations */
    _Autores: redirected to composition child ZC_4L_FINAL_APP_AUTORES,
    _Livros: redirected to composition child ZC_4L_FINAL_APP_LIVROS
}
