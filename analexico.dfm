object Form1: TForm1
  Left = 368
  Top = 233
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 38
    Height = 15
    Caption = 'Palavra'
  end
  object edtPalavra: TEdit
    Left = 8
    Top = 29
    Width = 162
    Height = 23
    TabOrder = 0
  end
  object btnAddPalavra: TButton
    Left = 176
    Top = 28
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 1
    OnClick = btnAddPalavraClick
  end
  object DBGrid1: TDBGrid
    Left = 136
    Top = 168
    Width = 320
    Height = 120
    DataSource = srcPalavras
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object cdsPalavras: TClientDataSet
    PersistDataPacket.Data = {
      360000009619E0BD01000000180000000100000000000300000036000750414C
      4156524101004900000001000557494454480200020014000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'PALAVRA'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 296
    Top = 96
    object cdsPalavrasPALAVRA: TStringField
      FieldName = 'PALAVRA'
    end
  end
  object srcPalavras: TDataSource
    DataSet = cdsPalavras
    Left = 368
    Top = 96
  end
end
