object FormAplicacaoPlantio: TFormAplicacaoPlantio
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Aplica'#231#245'es'
  ClientHeight = 372
  ClientWidth = 702
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 702
    Height = 372
    Align = alClient
    BevelOuter = bvNone
    Color = 7516988
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clCream
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object PanelCampos: TPanel
      Left = 409
      Top = 0
      Width = 293
      Height = 372
      Align = alRight
      TabOrder = 0
      object Label1: TLabel
        Left = 0
        Top = 112
        Width = 85
        Height = 18
        Caption = 'Quantidade:'
      end
      object Label2: TLabel
        Left = 8
        Top = 56
        Width = 53
        Height = 18
        Caption = 'Insumo:'
      end
      object Label3: TLabel
        Left = 8
        Top = 184
        Width = 38
        Height = 18
        Caption = 'Data:'
      end
      object EditQuantidade: TEdit
        Left = 96
        Top = 112
        Width = 97
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DatePickerAplicacao: TDatePicker
        Left = 56
        Top = 184
        Date = 44405.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        TabOrder = 2
      end
      object EditInsumo: TEdit
        Left = 72
        Top = 56
        Width = 167
        Height = 26
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object ButtonCadastrar: TButton
        Left = 98
        Top = 264
        Width = 97
        Height = 49
        Caption = 'Aplicar'
        TabOrder = 5
        Visible = False
        OnClick = ButtonCadastrarClick
      end
      object ComboBoxUnidade: TComboBox
        Left = 200
        Top = 112
        Width = 82
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 1
        Text = 'Kg'
        Items.Strings = (
          'Kg')
      end
      object ButtonCadastrar2: TButton
        Left = 98
        Top = 264
        Width = 97
        Height = 49
        Caption = 'Aplicar'
        TabOrder = 6
        Visible = False
        OnClick = ButtonCadastrar2Click
      end
      object Panel4: TPanel
        Left = 86
        Top = 264
        Width = 120
        Height = 48
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Aplicar'
        Color = 16443110
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -19
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 7
        Visible = False
        OnClick = Panel4Click
      end
      object Panel2: TPanel
        Left = 86
        Top = 264
        Width = 120
        Height = 48
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Aplicar'
        Color = 16443110
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -19
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        Visible = False
        OnClick = Panel2Click
      end
    end
    object PanelDB: TPanel
      Left = 0
      Top = 0
      Width = 352
      Height = 372
      Align = alLeft
      TabOrder = 1
      object Label4: TLabel
        Left = 1
        Top = 1
        Width = 350
        Height = 22
        Align = alTop
        Alignment = taCenter
        Caption = 'Insumos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 80
      end
      object DBGrid1: TDBGrid
        Left = 1
        Top = 37
        Width = 350
        Height = 334
        Align = alBottom
        DataSource = DataSourceConsultaAplicacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid1CellClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODIGO_INS_ESTOQUE'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DESCRICAO_INS_ESTOQUE'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Width = 200
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QUANTIDADE_INS_ESTOQUE'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'UNIDADE_INS_ESTOQUE'
            Title.Alignment = taCenter
            Title.Caption = 'Unidade'
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ESTOQUE_INS_ESTOQUE'
            Title.Alignment = taCenter
            Title.Caption = 'Estoque'
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATA_ENTRADA_INS_ESTOQUE'
            Title.Alignment = taCenter
            Title.Caption = 'Entrada'
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATA_VALIDADE_INS_ESTOQUE'
            Title.Alignment = taCenter
            Title.Caption = 'Validade'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PRECO_INSUMO'
            Title.Alignment = taCenter
            Title.Caption = 'Pre'#231'o'
            Visible = False
          end>
      end
    end
  end
  object ADOStoredProcCadastroAplicacao: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_cadastro_aplicacao;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@INSUMO'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@DESCRICAO'
        Attributes = [paNullable]
        DataType = ftString
        Size = 70
        Value = '0'
      end
      item
        Name = '@QUANTIDADE'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 3
        Precision = 10
        Value = '0'
      end
      item
        Name = '@UNIDADE'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = '0'
      end
      item
        Name = '@PLANTIO'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@PLANTIOESTUFA'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@DATA'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
      end>
    Left = 385
    Top = 49
  end
  object ADOQueryConsultaAplicacao: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select*from TB_INSUMO_ESTOQUE'
      'where QUANTIDADE_INS_ESTOQUE > 0')
    Left = 384
    Top = 128
    object ADOQueryConsultaAplicacaoCODIGO_INS_ESTOQUE: TAutoIncField
      FieldName = 'CODIGO_INS_ESTOQUE'
      ReadOnly = True
    end
    object ADOQueryConsultaAplicacaoDESCRICAO_INS_ESTOQUE: TStringField
      FieldName = 'DESCRICAO_INS_ESTOQUE'
      Size = 70
    end
    object ADOQueryConsultaAplicacaoQUANTIDADE_INS_ESTOQUE: TBCDField
      FieldName = 'QUANTIDADE_INS_ESTOQUE'
      Precision = 10
      Size = 3
    end
    object ADOQueryConsultaAplicacaoUNIDADE_INS_ESTOQUE: TStringField
      FieldName = 'UNIDADE_INS_ESTOQUE'
      FixedChar = True
      Size = 5
    end
    object ADOQueryConsultaAplicacaoESTOQUE_INS_ESTOQUE: TIntegerField
      FieldName = 'ESTOQUE_INS_ESTOQUE'
    end
    object ADOQueryConsultaAplicacaoDATA_ENTRADA_INS_ESTOQUE: TWideStringField
      FieldName = 'DATA_ENTRADA_INS_ESTOQUE'
      Size = 10
    end
    object ADOQueryConsultaAplicacaoDATA_VALIDADE_INS_ESTOQUE: TWideStringField
      FieldName = 'DATA_VALIDADE_INS_ESTOQUE'
      Size = 10
    end
    object ADOQueryConsultaAplicacaoPRECO_INSUMO: TBCDField
      FieldName = 'PRECO_INSUMO'
      Precision = 19
    end
  end
  object DataSourceConsultaAplicacao: TDataSource
    DataSet = ADOQueryConsultaAplicacao
    Left = 384
    Top = 200
  end
  object ADOStoredProcAtualizacaoInsumo: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_atualizacao_insumo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@CODIGO'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@QUANTIDADE'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 3
        Precision = 10
        Value = '0'
      end>
    Left = 384
    Top = 264
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=AGRICULTURA;Data Source=LAPTOP-FCR3HP98' +
      '\SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 224
    Top = 48
  end
end
