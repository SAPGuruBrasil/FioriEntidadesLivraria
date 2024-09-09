@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_4L_FINAL_APP_AUTORES as projection on ZI_4L_FINAL_APP_AUTORES
{
    key AutorUuid,
    Nome,
    Sobrenome,
    Apelido,
    EditoraUuid,
    DataDeNascimento,
    DataDeMorte,
    Biografia,
    CidadeNatal,
    PaisDeOrigem,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    /* Associations */
    _Editora: redirected to parent ZC_4L_FINAL_APP_EDITORAS
}
