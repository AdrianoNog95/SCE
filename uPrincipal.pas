unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ImgList, Vcl.Menus, Vcl.StdCtrls;

type
  Tfprincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cliente1: TMenuItem;
    Funcionrio1: TMenuItem;
    Fornecedor1: TMenuItem;
    Fornecedor2: TMenuItem;
    Produto1: TMenuItem;
    Entrada1: TMenuItem;
    Sada1: TMenuItem;
    Estoque1: TMenuItem;
    rocadeusurio1: TMenuItem;
    Sobre1: TMenuItem;
    Luco1: TMenuItem;
    ImageList1: TImageList;
    Cliente2: TMenuItem;
    Funcionrio2: TMenuItem;
    Usurio1: TMenuItem;
    Fornecedor3: TMenuItem;
    Produto2: TMenuItem;
    Entrada2: TMenuItem;
    Sada2: TMenuItem;
    Estoque2: TMenuItem;
    rocadeUsurio2: TMenuItem;
    BTN_ATALHO_CLIENTE: TButton;
    BTN_ATALHO_FUNC: TButton;
    BTN_ATALHO_USU: TButton;
    BTN_ATALHO_FORNECEDOR: TButton;
    BTN_ATALHO_PRODUTO: TButton;
    BTN_ATALHO_ENTRADA: TButton;
    BTN_ATALHO_SAIDA: TButton;
    BTN_ATALHO_ESTOQUE: TButton;
    procedure Cliente2Click(Sender: TObject);
    procedure Funcionrio2Click(Sender: TObject);
    procedure Usurio1Click(Sender: TObject);
    procedure Fornecedor3Click(Sender: TObject);
    procedure Produto2Click(Sender: TObject);
    procedure Entrada2Click(Sender: TObject);
    procedure Sada2Click(Sender: TObject);
    procedure Estoque2Click(Sender: TObject);
    procedure Fornecedor2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fprincipal: Tfprincipal;

implementation

{$R *.dfm}

uses uPesquisaCliente, uPesquisaFuncionario, uPesquisaUsuario,
  uPesquisaFornecedor, uPesquisaProduto, uPesquisaEntrada, uPesquisaSaida,
  uPesquisaEstoque;



procedure Tfprincipal.Cliente2Click(Sender: TObject);
begin
fPesquisaCliente.ShowModal;
end;



procedure Tfprincipal.Entrada2Click(Sender: TObject);
begin
fPesquisaEntrada.ShowModal;
end;

procedure Tfprincipal.Estoque2Click(Sender: TObject);
begin
fPesquisaEstoque.ShowModal;
end;

procedure Tfprincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure Tfprincipal.Fornecedor2Click(Sender: TObject);
begin
application.Terminate;
end;

procedure Tfprincipal.Fornecedor3Click(Sender: TObject);
begin
   fPesquisaFornecedor.ShowModal;
end;

procedure Tfprincipal.Funcionrio2Click(Sender: TObject);
begin
fPesquisaFuncionario.ShowModal;
end;

procedure Tfprincipal.Produto2Click(Sender: TObject);
begin
  fPesquisaProduto.ShowModal;
end;

procedure Tfprincipal.Sada2Click(Sender: TObject);
begin
 fPesquisaSaida.ShowModal;
end;

procedure Tfprincipal.Usurio1Click(Sender: TObject);
begin
fPesquisaUsuario.ShowModal;
end;

end.
