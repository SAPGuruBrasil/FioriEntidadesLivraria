@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_4L_FINAL_APP_LIVROS as projection on ZI_4L_FINAL_APP_LIVROS
{
    key LivroUuid,
    Titulo,
    UrlCapa,
    AutorUuid,
    EditoraUuid,
    QtdEstoque,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    /* Associations */
    _Editora: redirected to parent ZC_4L_FINAL_APP_EDITORAS,
    _AutorData,
    _EditoraData
}
