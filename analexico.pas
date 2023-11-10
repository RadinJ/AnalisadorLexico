unit analexico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtPalavra: TEdit;
    btnAddPalavra: TButton;
    cdsPalavras: TClientDataSet;
    cdsPalavrasPALAVRA: TStringField;
    srcPalavras: TDataSource;
    DBGrid1: TDBGrid;
    procedure btnAddPalavraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnAddPalavraClick(Sender: TObject);
begin
  if Trim(edtPalavra.Text) = '' then
  begin
    ShowMessage('Informe uma palavra!');
    Exit;
  end;
  cdsPalavras.Append;
  cdsPalavrasPALAVRA.AsString := edtPalavra.Text;
  cdsPalavras.Post;

  edtPalavra.Text := '';
end;

end.
