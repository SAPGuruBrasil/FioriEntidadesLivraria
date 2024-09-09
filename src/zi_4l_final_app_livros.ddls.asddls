@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Database View'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_4L_FINAL_APP_LIVROS
  as select from z4l_t_livros
  association to parent ZI_4L_FINAL_APP_EDITORAS as _Editora on $projection.EditoraUuid = _Editora.EditoraUuid
  association [0..1] to z4l_t_autores as _AutorData on $projection.AutorUuid = _AutorData.autor_uuid
  association [0..1] to z4l_t_editora as _EditoraData on $projection.EditoraUuid = _EditoraData.editora_uuid
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
      last_changed_at as LastChangedAt,
      
      _Editora,
      
      _AutorData,
      _EditoraData

}
