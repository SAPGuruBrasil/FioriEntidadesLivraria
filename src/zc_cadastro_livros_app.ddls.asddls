@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_CADASTRO_LIVROS_APP as projection on ZI_CADASTRO_LIVROS_APP
{
    key LivroUuid,
    @EndUserText.label: 'Título'
    Titulo,
    @EndUserText.label: 'URL Capa'
    UrlCapa,
    @EndUserText.label: 'ID Autor'
    AutorUuid,
    @EndUserText.label: 'ID Editora'
    EditoraUuid,
    @EndUserText.label: 'Quantidade em Estoque'
    QtdEstoque,
    @EndUserText.label: 'Criado por'
    CreatedBy,
    @EndUserText.label: 'Criado Em'
    CreatedAt,
    @EndUserText.label: 'Modificado por'
    LastChangedBy,
    @EndUserText.label: 'Modificado em'
    LastChangedAt
}
