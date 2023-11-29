object Form1: TForm1
  Left = 368
  Top = 233
  Width = 1416
  Height = 487
  AutoScroll = True
  Caption = 'Analisador L'#233'xico'
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
  object Label2: TLabel
    Left = 257
    Top = 8
    Width = 42
    Height = 15
    Caption = 'Verificar'
  end
  object Verificados: TLabel
    Left = 8
    Top = 315
    Width = 57
    Height = 15
    Caption = 'Verificados'
  end
  object Label3: TLabel
    Left = 592
    Top = 8
    Width = 35
    Height = 15
    Caption = 'Estado'
  end
  object edtPalavra: TEdit
    Left = 8
    Top = 29
    Width = 162
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 0
    OnKeyPress = edtPalavraKeyPress
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
    Left = 8
    Top = 58
    Width = 243
    Height = 215
    DataSource = srcPalavras
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object edtVerifica: TEdit
    Left = 257
    Top = 29
    Width = 296
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 3
    OnChange = edtVerificaChange
    OnKeyPress = edtVerificaKeyPress
  end
  object sgdEstados: TStringGrid
    Left = 257
    Top = 58
    Width = 1139
    Height = 383
    ColCount = 27
    DefaultColWidth = 40
    RowCount = 1
    FixedRows = 0
    TabOrder = 4
    OnDrawCell = sgdEstadosDrawCell
  end
  object dbgVerif: TDBGrid
    Left = 8
    Top = 336
    Width = 243
    Height = 105
    DataSource = srcVerifs
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDrawColumnCell = dbgVerifDrawColumnCell
  end
  object edtEstado: TEdit
    Left = 592
    Top = 29
    Width = 121
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
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
    Left = 72
    Top = 88
    object cdsPalavrasPALAVRA: TStringField
      DisplayLabel = 'Palavras'
      FieldName = 'PALAVRA'
    end
  end
  object srcPalavras: TDataSource
    DataSet = cdsPalavras
    Left = 144
    Top = 88
  end
  object cdsVerifs: TClientDataSet
    PersistDataPacket.Data = {
      410000009619E0BD01000000180000000200000000000300000041000750414C
      415652410100490000000100055749445448020002001400024F4B0200030000
      0000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'PALAVRA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'OK'
        DataType = ftBoolean
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 696
    Top = 232
    object cdsVerifsPALAVRA: TStringField
      DisplayLabel = 'Entrada'
      FieldName = 'PALAVRA'
    end
    object cdsVerifsOK: TBooleanField
      FieldName = 'OK'
      Visible = False
    end
  end
  object srcVerifs: TDataSource
    DataSet = cdsVerifs
    Left = 752
    Top = 232
  end
end
