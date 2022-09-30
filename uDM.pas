unit uDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBCustomDataSet, IBUpdateSQL,
  IBQuery, IBDatabase, Data.DBXFirebird, Data.SqlExpr;

type
  TDM = class(TDataModule)
    Conexao: TIBDatabase;
    Transa: TIBTransaction;
    qCliente: TIBQuery;
    upCliente: TIBUpdateSQL;
    dsCliente: TDataSource;
    qFuncionarios: TIBQuery;
    upFuncionarios: TIBUpdateSQL;
    dsFuncionarios: TDataSource;
    qFornecedor: TIBQuery;
    upFornecedor: TIBUpdateSQL;
    dsFornecedor: TDataSource;
    dsUsuario: TDataSource;
    qUsuario: TIBQuery;
    upUsuario: TIBUpdateSQL;
    dsEntrada: TDataSource;
    qEntrada: TIBQuery;
    upEntrada: TIBUpdateSQL;
    dsSaida: TDataSource;
    qSaida: TIBQuery;
    upSaida: TIBUpdateSQL;
    dsEstoque: TDataSource;
    qEstoque: TIBQuery;
    uEstoque: TIBUpdateSQL;
    dsProduto: TDataSource;
    qProduto: TIBQuery;
    upProduto: TIBUpdateSQL;
    qClienteID_CLI: TIntegerField;
    qClienteNOME: TIBStringField;
    qClienteDT_NASC: TDateField;
    qClienteCPF: TIBStringField;
    qClienteTELEFONE: TIBStringField;
    qClienteCELULAR: TIBStringField;
    qClienteENDERECO: TIBStringField;
    qProdutoID_PRO: TIntegerField;
    qProdutoNOME: TIBStringField;
    qProdutoINFORMACAO: TIBStringField;
    qProdutoVALOR_VENDA: TFloatField;
    qProdutoID_FOR: TIntegerField;
    qEstoqueID_PRO: TIntegerField;
    qEstoqueQTD: TIntegerField;
    qFuncionariosID_FUN: TIntegerField;
    qFuncionariosNOME: TIBStringField;
    qFuncionariosDT_NASC: TDateField;
    qFuncionariosCPF: TIBStringField;
    qFuncionariosTELEFONE: TIBStringField;
    qFuncionariosCELULAR: TIBStringField;
    qFuncionariosENDERECO: TIBStringField;
    qFornecedorID_FOR: TIntegerField;
    qFornecedorNOME: TIBStringField;
    qFornecedorTIPO_PESSOA: TIBStringField;
    qFornecedorCPF_CNPJ: TIBStringField;
    qFornecedorTELEFONE: TIBStringField;
    qFornecedorRESPONSAVEL: TIBStringField;
    qFornecedorENDERECO: TIBStringField;
    qUsuarioID_USU: TIntegerField;
    qUsuarioID_FUN: TIntegerField;
    qUsuarioLOGIN: TIBStringField;
    qUsuarioSENHA: TIBStringField;
    qEntradaID_ENT: TIntegerField;
    qEntradaDATA: TDateField;
    qEntradaID_PRO: TIntegerField;
    qEntradaQTD: TIntegerField;
    qEntradaVALOR_COMPRA: TFloatField;
    qEntradaTOTAL: TFloatField;
    qSaidaID_SAI: TIntegerField;
    qSaidaDATA: TDateField;
    qSaidaID_PRO: TIntegerField;
    qSaidaQTD: TIntegerField;
    qSaidaVALOR: TFloatField;
    qSaidaTOTAL: TFloatField;
    qSaidaID_CLI: TIntegerField;
    qProdutoID_USU_CADASTRO: TIntegerField;
    qProdutoDATA_CADASTRO: TDateField;
    qClienteID_USU_CADASTRO: TIntegerField;
    qClienteDATA_CADASTRO: TDateField;
    qClienteID_USU_ALTERACAO: TIntegerField;
    qClienteDATA_ALTERACAO: TDateField;
    qClienteHORA_ALTERACAO: TTimeField;
    qEntradaID_USU_CADASTRO: TIntegerField;
    qEntradaDATA_CADASTRO: TDateField;
    qSaidaID_USU_CADASTRO: TIntegerField;
    qSaidaDATA_CADASTRO: TDateField;
    qUsuarioID_USU_CADASTRO: TIntegerField;
    qUsuarioDATA_CADASTRO: TDateField;
    qFornecedorID_USU_CADASTRO: TIntegerField;
    qFornecedorDATA_CADASTRO: TDateField;
    qFuncionariosID_USU_CADASTRO: TIntegerField;
    qFuncionariosDATA_CADASTRO: TDateField;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;
  var usuario_conectado :integer;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}



end.
