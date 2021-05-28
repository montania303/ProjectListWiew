unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  UCliente;

type
  TFrmPrincipal = class(TForm)
    Panel1: TPanel;
    edtNombre: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtEmail: TEdit;
    btnMostrar: TButton;
    btnRemover: TButton;
    btnAgregar: TButton;
    ListaCosas: TListView;
    procedure btnAgregarClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure btnMostrarClick(Sender: TObject);
    procedure ListaCosasDeletion(Sender: TObject; Item: TListItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.btnAgregarClick(Sender: TObject);
var tempItem : TListItem;
    tempCliente : TCliente;
begin
  tempCliente        := TCliente.Create;
  tempCliente.Nombre := edtNombre.Text;
  tempCliente.Email  := edtEmail.Text;

  tempItem           := ListaCosas.Items.Add;
  tempItem.Caption   := tempCliente.Nombre;
  tempItem.SubItems.Add(tempCliente.Email);

  tempItem.Data      := tempCliente;

end;

procedure TFrmPrincipal.btnMostrarClick(Sender: TObject);
var tempCliente: TCliente;
begin
  if ListaCosas.ItemIndex > -1 then
    tempCliente := ListaCosas.Selected.Data;
    ShowMessage('Nombre: ' + tempCliente.Nombre +#13 +
                'Email: '  + tempCliente.Email);
end;

procedure TFrmPrincipal.btnRemoverClick(Sender: TObject);
begin
  if ListaCosas.ItemIndex > -1 then
    ListaCosas.Selected.Free;
end;

procedure TFrmPrincipal.ListaCosasDeletion(Sender: TObject; Item: TListItem);
begin
 if Item.Data <> nil then
   begin
     TObject(Item.Data).Destroy;
     Item.Data := nil;
   end;


end;

end.
