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
    cdsEstado: TClientDataSet;
    srcEstado: TDataSource;
    dbgEstados: TDBGrid;
    cdsEstadoA: TStringField;
    cdsEstadoB: TStringField;
    cdsEstadoC: TStringField;
    cdsEstadoD: TStringField;
    cdsEstadoE: TStringField;
    cdsEstadoF: TStringField;
    cdsEstadoG: TStringField;
    cdsEstadoH: TStringField;
    cdsEstadoI: TStringField;
    cdsEstadoJ: TStringField;
    cdsEstadoK: TStringField;
    cdsEstadoL: TStringField;
    cdsEstadoM: TStringField;
    cdsEstadoN: TStringField;
    cdsEstadoO: TStringField;
    cdsEstadoP: TStringField;
    cdsEstadoQ: TStringField;
    cdsEstadoR: TStringField;
    cdsEstadoS: TStringField;
    cdsEstadoT: TStringField;
    cdsEstadoU: TStringField;
    cdsEstadoV: TStringField;
    cdsEstadoW: TStringField;
    cdsEstadoX: TStringField;
    cdsEstadoY: TStringField;
    cdsEstadoZ: TStringField;
    cdsEstadoID: TStringField;
    edtVerifica: TEdit;
    Label2: TLabel;
    procedure btnAddPalavraClick(Sender: TObject);
    procedure edtVerificaChange(Sender: TObject);
    procedure dbgEstadosDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure srcEstadoDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    procedure MontaEstados;
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

  MontaEstados;
end;

procedure TForm1.dbgEstadosDrawDataCell(Sender: TObject; const Rect: TRect;
  Field: TField; State: TGridDrawState);
begin
  ShowMEssage('teste');
end;

procedure TForm1.edtVerificaChange(Sender: TObject);
var
  iCont : Integer;
begin
  iCont := Length(edtVerifica.Text);
  if iCont = 1 then
    cdsEstado.First
  else
  begin
    cdsEstado.Next;
    dbgEstados.Refresh;
//    dbgEstados.Col :=
    if cdsEstado.FieldByName(edtVerifica.Text[iCont]).AsString <> '' then

  end;
end;

procedure TForm1.MontaEstados;
var
  bm: TBookmark;
  lgtMaior: Integer;
  i: Integer;

  procedure AdicionaPalavra(palavra: String);
  var
    i: Integer;
  begin
    if not cdsEstado.IsEmpty then
      cdsEstado.First;
    for i := 1 to Length(palavra) do
    begin
      if not cdsEstado.Eof then
      begin
        cdsEstado.Edit;
        if cdsEstado.FieldByName(UpperCase(palavra[i])).AsString = '' then
          cdsEstado.FieldByName(UpperCase(palavra[i])).AsString := 'q' + IntToStr(i);
        if i = Length(palavra) then
          cdsEstado.FieldByName(UpperCase(palavra[i])).AsString := 'q' + IntToStr(i) + '(*)';
      end
      else
      begin
        cdsEstado.Append;
        if i = Length(palavra) then
          cdsEstado.FieldByName(UpperCase(palavra[i])).AsString := 'q' + IntToStr(i) + '(*)'
        else
          cdsEstado.FieldByName(UpperCase(palavra[i])).AsString := 'q' + IntToStr(i);
      end;
      cdsEstado.Next;
    end;
  end;

begin
  bm := cdsPalavras.GetBookmark;
  try
    cdsPalavras.DisableControls;
    lgtMaior := 0;
    cdsEstado.EmptyDataSet;
    // definir o tamanho total da maq
    cdsPalavras.First;
    while not cdsPalavras.Eof do
    begin
      if Length(cdsPalavrasPALAVRA.AsString) > lgtMaior then
        lgtMaior := Length(cdsPalavrasPALAVRA.AsString);

      cdsPalavras.Next;
    end;
    cdsEstado.First;
    for i := 1 to lgtMaior do
    begin
      if cdsEstado.Eof then
        cdsEstado.Append
      else
        cdsEstado.Edit;
      cdsEstadoID.AsString := IntToStr(i);
      cdsEstado.Post;
      cdsEstado.Next;
    end;
    // construção dos estados
    cdsPalavras.First;
    while not cdsPalavras.Eof do
    begin
      AdicionaPalavra(cdsPalavrasPALAVRA.AsString);

      cdsPalavras.Next;
    end;
  finally
    cdsPalavras.GotoBookmark(bm);
    cdsPalavras.EnableControls;
    cdsPalavras.FreeBookmark(bm);
  end;
end;

procedure TForm1.srcEstadoDataChange(Sender: TObject; Field: TField);
begin
  dbgEstados.Refresh;
end;

end.
