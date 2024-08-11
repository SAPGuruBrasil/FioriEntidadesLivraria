@EndUserText.label: 'Projection View'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true

define root view entity ZC_CADASTRO_AUTORES_APP as projection on ZI_CADASTRO_AUTORES_APP
{
    key AutorUuid,
    @EndUserText.label: 'Nome do Autor'
    Nome,
    @EndUserText.label: 'Sobrenome do Autor'
    Sobrenome,
    @EndUserText.label: 'Apelido'
    Apelido,
    EditoraUuid,
    @EndUserText.label: 'Data Nascimento'
    DataDeNascimento,
    @EndUserText.label: 'Data de Morte'
    DataDeMorte,
    @EndUserText.label: 'Biografia'
    Biografia,
    @EndUserText.label: 'Cidade Natal'
    CidadeNatal,
    @EndUserText.label: 'Pais de Origrm'
    PaisDeOrigem,
    @EndUserText.label: 'Criado por'
    CreatedBy,
    @EndUserText.label: 'Criado Em'
    CreatedAt,
    @EndUserText.label: 'Modificado por'
    LastChangedBy,
    @EndUserText.label: 'Modificado em'
    LastChangedAt
}
