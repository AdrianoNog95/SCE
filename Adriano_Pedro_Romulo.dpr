program Adriano_Pedro_Romulo;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {fprincipal},
  uPesquisa in 'Modelos\uPesquisa.pas' {fPesquisa},
  uDM in 'uDM.pas' {DM: TDataModule},
  uPesquisaCliente in 'Pesquisas\uPesquisaCliente.pas' {fPesquisaCliente},
  uCadastroEntrada in 'Pesquisas\uCadastroEntrada.pas' {fCadastroEntrada},
  uCadastroFornecedor in 'Pesquisas\uCadastroFornecedor.pas' {fCadastroFornecedor},
  uCadastroProduto in 'Pesquisas\uCadastroProduto.pas' {fCadastroProduto},
  uCadastroSaida in 'Pesquisas\uCadastroSaida.pas' {fCadastroSaida},
  uCadastroUsuario in 'Pesquisas\uCadastroUsuario.pas' {fCadastroUsuario},
  uPesquisaEntrada in 'Pesquisas\uPesquisaEntrada.pas' {fPesquisaEntrada},
  uPesquisaEstoque in 'Pesquisas\uPesquisaEstoque.pas' {fPesquisaEstoque},
  uPesquisaFornecedor in 'Pesquisas\uPesquisaFornecedor.pas' {fPesquisaFornecedor},
  uPesquisaFuncionario in 'Pesquisas\uPesquisaFuncionario.pas' {fPesquisaFuncionario},
  uPesquisaProduto in 'Pesquisas\uPesquisaProduto.pas' {fPesquisaProduto},
  uCadastroCliente in 'Pesquisas\uCadastroCliente.pas' {fCadastroCliente},
  uPesquisaSaida in 'Pesquisas\uPesquisaSaida.pas' {fPesquisaSaida},
  uCadastroFuncionario in 'Pesquisas\uCadastroFuncionario.pas' {fCadastroFuncionario},
  uPesquisaUsuario in 'Pesquisas\uPesquisaUsuario.pas' {fPesquisaUsuario},
  uCadastro in 'Modelos\uCadastro.pas' {fCadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfCadastro, fCadastro);
  Application.CreateForm(TfPesquisa, fPesquisa);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfPesquisaCliente, fPesquisaCliente);
  Application.CreateForm(TfCadastroEntrada, fCadastroEntrada);
  Application.CreateForm(TfCadastroFornecedor, fCadastroFornecedor);
  Application.CreateForm(TfCadastroProduto, fCadastroProduto);
  Application.CreateForm(TfCadastroSaida, fCadastroSaida);
  Application.CreateForm(TfCadastroUsuario, fCadastroUsuario);
  Application.CreateForm(TfPesquisaEntrada, fPesquisaEntrada);
  Application.CreateForm(TfPesquisaEstoque, fPesquisaEstoque);
  Application.CreateForm(TfPesquisaFornecedor, fPesquisaFornecedor);
  Application.CreateForm(TfPesquisaFuncionario, fPesquisaFuncionario);
  Application.CreateForm(TfPesquisaProduto, fPesquisaProduto);
  Application.CreateForm(TfCadastroCliente, fCadastroCliente);
  Application.CreateForm(TfCadastroFuncionario, fCadastroFuncionario);
  Application.CreateForm(TfCadastroFuncionario, fCadastroFuncionario);
  Application.CreateForm(TfPesquisaSaida, fPesquisaSaida);
  Application.CreateForm(TfCadastroFuncionario, fCadastroFuncionario);
  Application.CreateForm(TfPesquisaUsuario, fPesquisaUsuario);
  Application.CreateForm(Tfprincipal, fprincipal);
  Application.Run;
end.
