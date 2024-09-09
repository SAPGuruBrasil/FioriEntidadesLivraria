@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_CADASTRO_LIVROS_APP
  as projection on ZI_CADASTRO_LIVROS_APP
{
  key LivroUuid,
      @EndUserText.label: 'Título'
      Titulo,
      @EndUserText.label: 'URL Capa'
      UrlCapa,
      @EndUserText.label: 'Autor'
      @ObjectModel.text.element:  [ 'AutorNome' ]
      @UI.textArrangement: #TEXT_ONLY
      AutorUuid,
      @EndUserText.label: 'Nome do Autor'
      _AutorData.nome           as AutorNome,
      @EndUserText.label: 'Sobrenome'
      _AutorData.sobrenome      as AutorSobrenome,
      @EndUserText.label: 'País de Origem'
      _AutorData.pais_de_origem as AutorPaisOrigem,
      @EndUserText.label: 'Editora'
      @ObjectModel.text.element:  [ 'EditoraNome' ]
      EditoraUuid,
      @EndUserText.label: 'Nome da Editora'
      _EditoraData.nome         as EditoraNome,
      @EndUserText.label: 'Cidade'
      _EditoraData.cidade       as EditoraCidade,
      @EndUserText.label: 'Estado'
      _EditoraData.estado       as EditoraEstado,
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
