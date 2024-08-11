@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Database View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_CADASTRO_LIVROS_APP
  as select from z4l_t_livros
{
  key livro_uuid      as LivroUuid,
      titulo          as Titulo,
      url_capa        as UrlCapa,
      autor_uuid      as AutorUuid,
      editora_uuid    as EditoraUuid,
      qtd_estoque     as QtdEstoque,
      @Semantics.user.createdBy: true
      created_by      as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at      as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at as LastChangedAt

}
