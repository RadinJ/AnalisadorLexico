object Form1: TForm1
  Left = 368
  Top = 233
  Width = 1134
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
  object edtPalavra: TEdit
    Left = 8
    Top = 29
    Width = 162
    Height = 23
    CharCase = ecUpperCase
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
    Left = 8
    Top = 59
    Width = 243
    Height = 375
    DataSource = srcPalavras
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object dbgEstados: TDBGrid
    Left = 257
    Top = 58
    Width = 857
    Height = 375
    DataSource = srcEstado
    FixedColor = clHighlight
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDrawDataCell = dbgEstadosDrawDataCell
    Columns = <
      item
        Alignment = taCenter
        Color = clMedGray
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Title.Color = clHotLight
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'A'
        Title.Alignment = taCenter
        Title.Color = clMedGray
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'B'
        Title.Alignment = taCenter
        Title.Color = clMedGray
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'C'
        Title.Alignment = taCenter
        Title.Color = clMedGray
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'D'
        Title.Alignment = taCenter
        Title.Color = clMedGray
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'E'
        Title.Alignment = taCenter
        Title.Color = clMedGray
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'F'
        Title.Alignment = taCenter
        Title.Color = clMedGray
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'G'
        Title.Alignment = taCenter
        Title.Color = clMedGray
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'H'
        Title.Alignment = taCenter
        Title.Color = clMedGray
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'I'
        Title.Alignment = taCenter
        Title.Color = clMedGray
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'J'
        Title.Alignment = taCenter
        Title.Color = clMedGray
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'K'
        Title.Alignment = taCenter
        Title.Color = clMedGray
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'L'
        Title.Alignment = taCenter
        Title.Color = clMedGray
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'M'
        Title.Alignment = taCenter
        Title.Color = clMedGray
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'N'
        Title.Alignment = taCenter
        Title.Color = clMedGray
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'O'
        Title.Alignment = taCenter
        Title.Color = clMedGray
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'P'
        Title.Alignment = taCenter
        Title.Color = clMedGray
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Q'
        Title.Alignment = taCenter
        Title.Color = clMedGray
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'R'
        Title.Alignment = taCenter
        Title.Color = clMedGray
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'S'
        Title.Alignment = taCenter
        Title.Color = clMedGray
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'T'
        Title.Alignment = taCenter
        Title.Color = clMedGray
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'U'
        Title.Alignment = taCenter
        Title.Color = clMedGray
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'V'
        Title.Alignment = taCenter
        Title.Color = clMedGray
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'W'
        Title.Alignment = taCenter
        Title.Color = clMedGray
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'X'
        Title.Alignment = taCenter
        Title.Color = clMedGray
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Y'
        Title.Alignment = taCenter
        Title.Color = clMedGray
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Z'
        Title.Alignment = taCenter
        Title.Color = clMedGray
        Width = 30
        Visible = True
      end>
  end
  object edtVerifica: TEdit
    Left = 257
    Top = 29
    Width = 296
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 4
    OnChange = edtVerificaChange
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
  object cdsEstado: TClientDataSet
    PersistDataPacket.Data = {
      560200009619E0BD01000000180000001A000000000003000000560201410100
      490000000100055749445448020002000A000142010049000000010005574944
      5448020002000A0001430100490000000100055749445448020002000A000144
      0100490000000100055749445448020002000A00014501004900000001000557
      49445448020002000A0001460100490000000100055749445448020002000A00
      01470100490000000100055749445448020002000A0001480100490000000100
      055749445448020002000A000149010049000000010005574944544802000200
      0A00014A0100490000000100055749445448020002000A00014B010049000000
      0100055749445448020002000A00014C01004900000001000557494454480200
      02000A00014D0100490000000100055749445448020002000A00014E01004900
      00000100055749445448020002000A00014F0100490000000100055749445448
      020002000A0001500100490000000100055749445448020002000A0001510100
      490000000100055749445448020002000A000152010049000000010005574944
      5448020002000A0001530100490000000100055749445448020002000A000154
      0100490000000100055749445448020002000A00015501004900000001000557
      49445448020002000A0001560100490000000100055749445448020002000A00
      01570100490000000100055749445448020002000A0001580100490000000100
      055749445448020002000A000159010049000000010005574944544802000200
      0A00015A0100490000000100055749445448020002000A000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'A'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'B'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'C'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'D'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'E'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'F'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'G'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'H'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'I'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'J'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'K'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'L'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'M'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'N'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'O'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'P'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Q'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'R'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'S'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'T'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'U'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'V'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'W'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'X'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Y'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Z'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ID'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 400
    Top = 232
    object cdsEstadoID: TStringField
      DisplayLabel = ' '
      FieldKind = fkInternalCalc
      FieldName = 'ID'
    end
    object cdsEstadoA: TStringField
      FieldName = 'A'
      Size = 10
    end
    object cdsEstadoB: TStringField
      FieldName = 'B'
      Size = 10
    end
    object cdsEstadoC: TStringField
      FieldName = 'C'
      Size = 10
    end
    object cdsEstadoD: TStringField
      FieldName = 'D'
      Size = 10
    end
    object cdsEstadoE: TStringField
      FieldName = 'E'
      Size = 10
    end
    object cdsEstadoF: TStringField
      FieldName = 'F'
      Size = 10
    end
    object cdsEstadoG: TStringField
      FieldName = 'G'
      Size = 10
    end
    object cdsEstadoH: TStringField
      FieldName = 'H'
      Size = 10
    end
    object cdsEstadoI: TStringField
      FieldName = 'I'
      Size = 10
    end
    object cdsEstadoJ: TStringField
      FieldName = 'J'
      Size = 10
    end
    object cdsEstadoK: TStringField
      FieldName = 'K'
      Size = 10
    end
    object cdsEstadoL: TStringField
      FieldName = 'L'
      Size = 10
    end
    object cdsEstadoM: TStringField
      FieldName = 'M'
      Size = 10
    end
    object cdsEstadoN: TStringField
      FieldName = 'N'
      Size = 10
    end
    object cdsEstadoO: TStringField
      FieldName = 'O'
      Size = 10
    end
    object cdsEstadoP: TStringField
      FieldName = 'P'
      Size = 10
    end
    object cdsEstadoQ: TStringField
      FieldName = 'Q'
      Size = 10
    end
    object cdsEstadoR: TStringField
      FieldName = 'R'
      Size = 10
    end
    object cdsEstadoS: TStringField
      FieldName = 'S'
      Size = 10
    end
    object cdsEstadoT: TStringField
      FieldName = 'T'
      Size = 10
    end
    object cdsEstadoU: TStringField
      FieldName = 'U'
      Size = 10
    end
    object cdsEstadoV: TStringField
      FieldName = 'V'
      Size = 10
    end
    object cdsEstadoW: TStringField
      FieldName = 'W'
      Size = 10
    end
    object cdsEstadoX: TStringField
      FieldName = 'X'
      Size = 10
    end
    object cdsEstadoY: TStringField
      FieldName = 'Y'
      Size = 10
    end
    object cdsEstadoZ: TStringField
      FieldName = 'Z'
      Size = 10
    end
  end
  object srcEstado: TDataSource
    DataSet = cdsEstado
    OnDataChange = srcEstadoDataChange
    Left = 472
    Top = 232
  end
end
