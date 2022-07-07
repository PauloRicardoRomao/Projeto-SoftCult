object FormCadastroProduto: TFormCadastroProduto
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Cadastro de produto'
  ClientHeight = 392
  ClientWidth = 564
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
    Width = 564
    Height = 392
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
    object Label1: TLabel
      Left = 48
      Top = 240
      Width = 59
      Height = 18
      Caption = 'Entrada:'
    end
    object Label2: TLabel
      Left = 312
      Top = 240
      Width = 66
      Height = 18
      Caption = 'Validade:'
    end
    object Label3: TLabel
      Left = 264
      Top = 176
      Width = 46
      Height = 18
      Caption = 'Pre'#231'o:'
    end
    object Label4: TLabel
      Left = 48
      Top = 176
      Width = 62
      Height = 18
      Caption = 'Estoque:'
    end
    object Label5: TLabel
      Left = 48
      Top = 128
      Width = 85
      Height = 18
      Caption = 'Quantidade:'
    end
    object Label6: TLabel
      Left = 48
      Top = 64
      Width = 76
      Height = 18
      Caption = 'Descri'#231#227'o:'
    end
    object EditPreco: TEdit
      Left = 312
      Top = 176
      Width = 121
      Height = 26
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TextHint = '0,00'
      OnChange = EditPrecoChange
      OnClick = EditPrecoClick
      OnEnter = EditPrecoEnter
      OnKeyPress = EditPrecoKeyPress
    end
    object ButtonCadastro: TButton
      Left = 232
      Top = 320
      Width = 100
      Height = 49
      Caption = 'Cadastrar'
      TabOrder = 6
      Visible = False
      OnClick = ButtonCadastroClick
    end
    object DatePickerEntrada: TDatePicker
      Left = 112
      Top = 240
      Date = 44428.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      TabOrder = 3
    end
    object DatePickerValidade: TDatePicker
      Left = 384
      Top = 240
      Date = 44428.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      TabOrder = 4
    end
    object EditQuantidade: TEdit
      Left = 144
      Top = 128
      Width = 142
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object ComboBoxUnidade: TComboBox
      Left = 288
      Top = 128
      Width = 84
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = 'Kg'
      OnKeyPress = ComboBoxUnidadeKeyPress
      Items.Strings = (
        'Kg')
    end
    object DBLookupComboBoxEstoque: TDBLookupComboBox
      Left = 120
      Top = 176
      Width = 108
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'CODIGO_ESTOQUE'
      ListField = 'CODIGO_ESTOQUE'
      ListSource = DataSourceEstoque
      ParentFont = False
      TabOrder = 1
      OnKeyPress = DBLookupComboBoxEstoqueKeyPress
    end
    object EditDescricao: TEdit
      Left = 128
      Top = 64
      Width = 121
      Height = 26
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object ButtonCadastro2: TButton
      Left = 232
      Top = 320
      Width = 100
      Height = 49
      Caption = 'Cadastrar'
      TabOrder = 9
      Visible = False
      OnClick = ButtonCadastro2Click
    end
    object Panel4: TPanel
      Left = 222
      Top = 320
      Width = 120
      Height = 48
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Cadastrar'
      Color = 16443110
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 10
      Visible = False
      OnClick = Panel4Click
    end
    object Panel2: TPanel
      Left = 222
      Top = 319
      Width = 120
      Height = 48
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Cadastrar'
      Color = 16443110
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 5
      Visible = False
      OnClick = Panel2Click
    end
  end
  object ADOStoredProcCadastroProduto: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_cadastro_produto_estoque;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
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
        Name = '@COLHEITA'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@ESTOQUE'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@DATAENTRADA'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = '@DATAVALIDADE'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = '@PRECO'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = 0c
      end>
    Left = 177
    Top = 273
  end
  object ADOQueryEstoque: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select*from TB_ESTOQUE'
      'where SITUACAO_ESTOQUE = 1')
    Left = 80
    Top = 200
    object ADOQueryEstoqueCODIGO_ESTOQUE: TAutoIncField
      FieldName = 'CODIGO_ESTOQUE'
      ReadOnly = True
    end
    object ADOQueryEstoqueCAPACIDADE_ESTOQUE: TBCDField
      FieldName = 'CAPACIDADE_ESTOQUE'
      Precision = 10
      Size = 3
    end
    object ADOQueryEstoqueUNIDADE_ESTOQUE: TStringField
      FieldName = 'UNIDADE_ESTOQUE'
      FixedChar = True
      Size = 5
    end
    object ADOQueryEstoqueCIDADE_ESTOQUE: TIntegerField
      FieldName = 'CIDADE_ESTOQUE'
    end
    object ADOQueryEstoqueESTADO_ESTOQUE: TIntegerField
      FieldName = 'ESTADO_ESTOQUE'
    end
    object ADOQueryEstoqueVALOR_ESTOQUE: TBCDField
      FieldName = 'VALOR_ESTOQUE'
      Precision = 19
    end
    object ADOQueryEstoqueFOTO_ESTOQUE: TStringField
      FieldName = 'FOTO_ESTOQUE'
      Size = 200
    end
    object ADOQueryEstoqueSITUACAO_ESTOQUE: TBooleanField
      FieldName = 'SITUACAO_ESTOQUE'
    end
    object ADOQueryEstoqueOBS_ESTOQUE: TStringField
      FieldName = 'OBS_ESTOQUE'
      Size = 200
    end
  end
  object DataSourceEstoque: TDataSource
    DataSet = ADOQueryEstoque
    Left = 80
    Top = 248
  end
  object ADOStoredProcAtivacaoInativacao: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_ativacao_inativacao_plantio;1'
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
        Name = '@SITUACAO'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = False
      end>
    Left = 249
    Top = 201
  end
  object ADOStoredProcColheita: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_cadastro_colheita;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
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
        Name = '@DATA'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
      end>
    Left = 81
    Top = 313
  end
  object ADOStoredProcInativ: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_ativacao_inativacao_plantio_estufa;1'
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
        Name = '@SITUACAO'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = False
      end>
    Left = 417
    Top = 329
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=AGRICULTURA;Data Source=LAPTOP-FCR3HP98' +
      '\SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 384
    Top = 8
  end
end
