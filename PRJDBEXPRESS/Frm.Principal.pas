unit Frm.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Frm.Pais, Frm.Estado;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Localizao1: TMenuItem;
    Pas1: TMenuItem;
    Estado1: TMenuItem;
    Cidade1: TMenuItem;
    Sair1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Pas1Click(Sender: TObject);
    procedure Estado1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.Estado1Click(Sender: TObject);
var
  VFrmEstado: TFrmEstado; // Variavel do tipo do formulario do pais
begin
   vFrmEstado:= TFrmEstado.Create(nil); // cria o formulario sem proprietario
try
  vFrmEstado.ShowModal; // mostra o formulario na tela
finally
FreeAndNil(vFrmEstado); // destroy nosso formulario

end;
end;



procedure TFrmPrincipal.Pas1Click(Sender: TObject);
var
  VFrmPais: TFrmPais; // Variavel do tipo do formulario do pais
begin
   vFrmPais:= TFrmPais.Create(nil); // cria o formulario sem proprietario
try
  vFrmPais.ShowModal; // mostra o formulario na tela
finally
FreeAndNil(vFrmPais); // destroy nosso formulario

end;
end;

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
Close;
end;

end.
