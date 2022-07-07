object FormProdutosInsumos: TFormProdutosInsumos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Insumos'
  ClientHeight = 551
  ClientWidth = 964
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
    Width = 964
    Height = 551
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
    object PanelAlteracaoCampos: TPanel
      Left = 234
      Top = 30
      Width = 716
      Height = 430
      TabOrder = 2
      Visible = False
      object Label4: TLabel
        Left = 104
        Top = 80
        Width = 76
        Height = 18
        Caption = 'Descri'#231#227'o:'
      end
      object Label5: TLabel
        Left = 104
        Top = 136
        Width = 85
        Height = 18
        Caption = 'Quantidade:'
      end
      object Label6: TLabel
        Left = 104
        Top = 256
        Width = 59
        Height = 18
        Caption = 'Entrada:'
      end
      object Label9: TLabel
        Left = 360
        Top = 256
        Width = 66
        Height = 18
        Caption = 'Validade:'
      end
      object Label7: TLabel
        Left = 104
        Top = 192
        Width = 62
        Height = 18
        Caption = 'Estoque:'
      end
      object Label15: TLabel
        Left = 312
        Top = 192
        Width = 40
        Height = 18
        Caption = 'Valor:'
      end
      object ButtonAlterar: TButton
        Left = 264
        Top = 360
        Width = 105
        Height = 49
        Caption = 'Alterar'
        TabOrder = 9
        Visible = False
        OnClick = ButtonAlterarClick
      end
      object ButtonLimparA: TButton
        Left = 399
        Top = 360
        Width = 105
        Height = 49
        Caption = 'Limpar'
        TabOrder = 10
        Visible = False
        OnClick = ButtonLimparAClick
      end
      object EditDescricaoA: TEdit
        Left = 184
        Top = 80
        Width = 281
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = EditDescricaoAKeyPress
      end
      object EditQuantidadeA: TEdit
        Left = 195
        Top = 136
        Width = 121
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 1
        OnKeyPress = EditQuantidadeAKeyPress
      end
      object DatePickerEntradaA: TDatePicker
        Left = 168
        Top = 256
        Date = 44418.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        TabOrder = 5
      end
      object DatePickerValidadeA: TDatePicker
        Left = 432
        Top = 256
        Date = 44418.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        TabOrder = 6
      end
      object DBLookupComboBoxEstoqueA: TDBLookupComboBox
        Left = 176
        Top = 192
        Width = 84
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'CODIGO_ESTOQUE_INSUMO'
        ListField = 'CODIGO_ESTOQUE_INSUMO'
        ListSource = DataSourceEstoqueCA
        ParentFont = False
        TabOrder = 3
        OnKeyPress = DBLookupComboBoxEstoqueAKeyPress
      end
      object EditValorA: TEdit
        Left = 360
        Top = 192
        Width = 121
        Height = 26
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        TextHint = '0,00'
        OnChange = EditValorAChange
        OnClick = EditValorAClick
        OnEnter = EditValorAEnter
        OnKeyPress = EditValorAKeyPress
      end
      object ComboBoxUnidadeA: TComboBox
        Left = 328
        Top = 136
        Width = 69
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 2
        Text = 'Kg'
        OnKeyPress = ComboBoxUnidadeAKeyPress
        Items.Strings = (
          'Kg')
      end
      object Panel2: TPanel
        Left = 264
        Top = 360
        Width = 105
        Height = 48
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Alterar'
        Color = 16443110
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -19
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 7
        OnClick = Panel2Click
      end
      object Panel3: TPanel
        Left = 400
        Top = 360
        Width = 105
        Height = 48
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Limpar'
        Color = 16443110
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -19
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 8
        OnClick = Panel3Click
      end
    end
    object PanelConsultaDBGrid: TPanel
      Left = 234
      Top = 30
      Width = 716
      Height = 490
      TabOrder = 0
      Visible = False
      object Label10: TLabel
        Left = 16
        Top = 37
        Width = 54
        Height = 18
        Caption = 'Estado:'
      end
      object Label14: TLabel
        Left = 194
        Top = 37
        Width = 56
        Height = 18
        Caption = 'Cidade:'
      end
      object DBLookupComboBoxEstadoCo: TDBLookupComboBox
        Left = 75
        Top = 37
        Width = 85
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'CodigoEstado'
        ListField = 'SiglaEstado'
        ListSource = DataSourceEstadoC
        ParentFont = False
        TabOrder = 0
        OnClick = DBLookupComboBoxEstadoCoClick
      end
      object DBLookupComboBoxCidadeCo: TDBLookupComboBox
        Left = 254
        Top = 37
        Width = 244
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'CodigoCidade'
        ListField = 'NomeCidade'
        ListSource = DataSourceCidadeC
        ParentFont = False
        TabOrder = 1
        OnClick = DBLookupComboBoxCidadeCoClick
      end
      object ButtonCadastrarInsumo: TButton
        Left = 328
        Top = 419
        Width = 153
        Height = 57
        Caption = 'Cadastrar insumo'
        TabOrder = 4
        Visible = False
        OnClick = ButtonCadastrarInsumoClick
      end
      object ButtonAlterarInsumo: TButton
        Left = 551
        Top = 419
        Width = 153
        Height = 57
        Caption = 'Alterar insumo'
        Enabled = False
        TabOrder = 5
        Visible = False
        OnClick = ButtonAlterarInsumoClick
      end
      object PanelDBEstoque: TPanel
        Left = 0
        Top = 93
        Width = 344
        Height = 320
        TabOrder = 6
        object Label17: TLabel
          Left = 1
          Top = 1
          Width = 342
          Height = 22
          Align = alTop
          Alignment = taCenter
          Caption = 'Estoque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCream
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 77
        end
        object DBGrid1: TDBGrid
          Left = 1
          Top = 35
          Width = 342
          Height = 284
          Align = alBottom
          DataSource = DataSourceConsultaEstoque
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clCream
          TitleFont.Height = -16
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = DBGrid1CellClick
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CODIGO_ESTOQUE_INSUMO'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 75
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NomeCidade'
              Title.Alignment = taCenter
              Title.Caption = 'Cidade'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 170
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'SiglaEstado'
              Title.Alignment = taCenter
              Title.Caption = 'Estado'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 50
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'OBS_ESTOQUE_INSUMO'
              Title.Alignment = taCenter
              Title.Caption = 'Observa'#231#245'es'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 500
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'VALOR_ESTOQUE_INSUMO'
              Title.Alignment = taCenter
              Title.Caption = 'Valor'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = False
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'FOTO_ESTOQUE_INSUMO'
              Title.Alignment = taCenter
              Title.Caption = 'Foto'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = False
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'SITUACAO_ESTOQUE_INSUMO'
              Title.Alignment = taCenter
              Title.Caption = 'Situacao'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = False
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CodigoCidade'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = False
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Capital'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = False
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CIDADE_ESTOQUE_INSUMO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = False
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'EstadoCidade'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = False
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ESTADO_ESTOQUE_INSUMO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = False
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CodigoEstado'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = False
            end>
        end
      end
      object PanelDBProdutos: TPanel
        Left = 372
        Top = 93
        Width = 344
        Height = 320
        TabOrder = 7
        object Label18: TLabel
          Left = 1
          Top = 1
          Width = 342
          Height = 22
          Align = alTop
          Alignment = taCenter
          Caption = 'Produtos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clCream
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 86
        end
        object DBGrid2: TDBGrid
          Left = 1
          Top = 35
          Width = 342
          Height = 284
          Align = alBottom
          DataSource = DataSourceConsultaProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clCream
          TitleFont.Height = -16
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = DBGrid2CellClick
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CODIGO_INS_ESTOQUE'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 75
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DESCRICAO_INS_ESTOQUE'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 170
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'QUANTIDADE_INS_ESTOQUE'
              Title.Alignment = taCenter
              Title.Caption = 'Quantidade'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 150
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'UNIDADE_INS_ESTOQUE'
              Title.Alignment = taCenter
              Title.Caption = 'Unidade'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 100
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DATA_ENTRADA_INS_ESTOQUE'
              Title.Alignment = taCenter
              Title.Caption = 'Entrada'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 100
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DATA_VALIDADE_INS_ESTOQUE'
              Title.Alignment = taCenter
              Title.Caption = 'Validade'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 100
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'PRECO_INSUMO'
              Title.Alignment = taCenter
              Title.Caption = 'Pre'#231'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 200
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ESTOQUE_INS_ESTOQUE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = False
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CODIGO_ESTOQUE_INSUMO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = False
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CIDADE_ESTOQUE_INSUMO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = False
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ESTADO_ESTOQUE_INSUMO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = False
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'VALOR_ESTOQUE_INSUMO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = False
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'FOTO_ESTOQUE_INSUMO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = False
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'SITUACAO_ESTOQUE_INSUMO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = False
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'OBS_ESTOQUE_INSUMO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = False
            end>
        end
      end
      object Panel6: TPanel
        Left = 312
        Top = 426
        Width = 196
        Height = 54
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Cadastrar insumo'
        Color = 16443110
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -19
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        OnClick = Panel6Click
      end
      object Panel7: TPanel
        Left = 528
        Top = 426
        Width = 180
        Height = 54
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Alterar insumo'
        Color = 16443110
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -19
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        OnClick = Panel7Click
      end
    end
    object PanelCadastroCampos: TPanel
      Left = 234
      Top = 30
      Width = 716
      Height = 430
      TabOrder = 3
      Visible = False
      object Label1: TLabel
        Left = 104
        Top = 80
        Width = 76
        Height = 18
        Caption = 'Descri'#231#227'o:'
      end
      object Label2: TLabel
        Left = 104
        Top = 136
        Width = 85
        Height = 18
        Caption = 'Quantidade:'
      end
      object Label3: TLabel
        Left = 104
        Top = 256
        Width = 59
        Height = 18
        Caption = 'Entrada:'
      end
      object Label8: TLabel
        Left = 360
        Top = 256
        Width = 66
        Height = 18
        Caption = 'Validade:'
      end
      object Label13: TLabel
        Left = 104
        Top = 192
        Width = 62
        Height = 18
        Caption = 'Estoque:'
      end
      object Label16: TLabel
        Left = 320
        Top = 192
        Width = 40
        Height = 18
        Caption = 'Valor:'
      end
      object ButtonCadastro: TButton
        Left = 250
        Top = 360
        Width = 105
        Height = 49
        Caption = 'Cadastrar'
        TabOrder = 9
        Visible = False
        OnClick = ButtonCadastroClick
      end
      object ButtonLimpar: TButton
        Left = 399
        Top = 360
        Width = 105
        Height = 49
        Caption = 'Limpar'
        TabOrder = 10
        Visible = False
        OnClick = ButtonLimparClick
      end
      object EditDescricao: TEdit
        Left = 184
        Top = 80
        Width = 281
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = EditDescricaoKeyPress
      end
      object EditQuantidade: TEdit
        Left = 195
        Top = 136
        Width = 121
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 1
        OnKeyPress = EditQuantidadeKeyPress
      end
      object DBLookupComboBoxEstoque: TDBLookupComboBox
        Left = 176
        Top = 192
        Width = 100
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'CODIGO_ESTOQUE_INSUMO'
        ListField = 'CODIGO_ESTOQUE_INSUMO'
        ListSource = DataSourceEstoqueCA
        ParentFont = False
        TabOrder = 3
        OnKeyPress = DBLookupComboBoxEstoqueKeyPress
      end
      object EditValor: TEdit
        Left = 365
        Top = 191
        Width = 121
        Height = 26
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        TextHint = '0,00'
        OnChange = EditValorChange
        OnClick = EditValorClick
        OnEnter = EditValorEnter
        OnKeyPress = EditValorKeyPress
      end
      object DatePickerEntrada: TDatePicker
        Left = 168
        Top = 256
        Date = 44418.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        TabOrder = 5
      end
      object DatePickerValidade: TDatePicker
        Left = 432
        Top = 256
        Date = 44418.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        TabOrder = 6
      end
      object ComboBoxUnidade: TComboBox
        Left = 328
        Top = 136
        Width = 69
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 2
        Text = 'Kg'
        OnKeyPress = ComboBoxUnidadeKeyPress
        Items.Strings = (
          'Kg')
      end
      object Panel5: TPanel
        Left = 400
        Top = 360
        Width = 105
        Height = 48
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Limpar'
        Color = 16443110
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -19
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 8
        OnClick = Panel5Click
      end
      object Panel4: TPanel
        Left = 248
        Top = 360
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
        TabOrder = 7
        OnClick = Panel4Click
      end
    end
    object PanelMenu: TPanel
      Left = 0
      Top = 0
      Width = 224
      Height = 551
      Align = alLeft
      TabOrder = 1
      object ImageMaquinario: TImage
        Left = 49
        Top = 43
        Width = 126
        Height = 125
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000820000
          008208060000008A0310FD000000097048597300000F6100000F6101A83FA769
          000009054944415478DAED9D0BD0156318C79F5C22244CC6AD4C0A43944449BA
          18290DB9342E49CC30110AB9556E43837167DCC6B51932B92426469311B944B9
          E79230B9F4C944E416138AE4F9EFB3DFF469F69CDDF3F6EEBBE71CFFDFCC7F7C
          BEB367F73DEDEF7BCFEEFBEE3EDB6CF5EAD54248338A40004520111481445004
          1241114804452011148144500412411148443D8B70A8E6314D4BCFEBFD4DD357
          F35ED11FD027F52CC2999ABB34E769566AD65FC7F5FDADD95E73996680E6F9A2
          3FA04FEA5984D19A5BF1193DAF17FF608769A617FD017D52CF228CD2DCA969AE
          F9CBD33A77D27CA919A879AEE80FE8138A5019ED355F0845A829284205FC1F44
          584FB3B96690E661CDF19A97346D34DB69A6694E103BC3181A2F73B8E663CDD6
          9AC59A5D34DF6ABE163B6BA0083544A30838586CAD19A1B946334EF3A86657B1
          BFF0FB34176BAED75C142F7386E67531593ED7ECAD69D0BC23D6BB50841AA2A9
          085B698669EED08CD43C2D26C18E623DC05962A79AA3E2654ED2BC2BD6633468
          F614EB0DE66BFE148A505350840AA008142182225084088A40112228024588A8
          6711CED6DC2E6BE61A8ED63CA939524C044C2075D0BCAA19AC99DA64990335AF
          69DA6A166AF6121B5AC61802FEC128420D819DFA84E65ACD269ACE9AD99A9E9A
          4FC47A895662D3C9F8DD9B9A1E62E3075D34DF884D61FFACD946B34CF3BD664C
          FCFA07457F409FD4920857683A695A6458F61FB16E7D9F9CDA02A120C87A19DA
          01A1F0B553D5E2D482081DC5BAF24562DDF15762DD73B9E965BCF6ABD8F77A1E
          D3D038BE6811FF5C8A55623D0E2E62E9A3B957AC77AA4AAA5D048CF5E32FE91E
          CD954537661DC05CC5479A73C484A83AAA5D04FCA3A1FB3DADE8867800731B38
          66E95C744392A876119ED19CAAF9AEE8867802935AD715DD8824AA5D84C99A21
          4537C223FD34338B6E4412D52E02A68B8716DD088F1CAC79A1E846244111C272
          8854E9401445080B45708422048222848522384211024111C242111CA10881A0
          0861A1088E5084405084B050044728422028425828822314211014212C14C111
          8A10088A60E0C616DC0A3F5CF3568EDBA1088E8410617FB11A093F89D5483A40
          ECEAE73CA0088E841061AE66B9A697E615B19B588ECB695B14C191BC45C0A563
          28C1B747FCFFB8210577411D1BFFD73714C191BC45C08D338D37A134825E01F5
          9346E6B03D8AE0489E22E078608A587DA4A6B7AEE14EAA1F34DDC57A089F5004
          47F214E112B1BB9A7B27BCF686E636B14A6B3EA1088EE429027636EE8BEC9EF0
          1ABE1E504F71B8E76D520447F21201B7B5DFAFD9B7C4EB0D9A25626712AB3C6E
          972238929708376ABAC97F0F12D706853230C834DFE3762982237989809B5177
          16AB84528A5962F7293EEB71BB14C1913C44C0ADF6183B384AAC924A2966C5CB
          4DF5B86D8AE0481E22A0640E76306A336F596639888072BC3E771C4570240F11
          70A680D3421C28B62FB31C44B840ACFEB22F288223791D234C142B99D7B5C4EB
          28A187F27AC7889D3DF8822238929708A8BF08114A9D352C102BD9E37BF28922
          38929708382D3C516CCA3989B7C5E61B4EF6BC5D8AE0485E22E06C01751531E1
          D436E1F597C57A84733D6F97223892E710F355623BA65BC26BB8460115D0667B
          DE26457024EF69E806B147F4F468F2BB399A8D255BB1CE4E71B688DFF77ECAF2
          14C191341136D45C2E56D0120FE844914D5C508253BF19923E8D8CB98417C5AA
          B6B5897F8703C50BC52ABA2581790A5CB8829E04F59C57883DDE07657AF1B8A0
          720F06A5088EA489800771DE22B6232002EA25E389AFF8EE8704A8AB8CEB11E7
          9659072E5CC5C0118A6E4324F406FB252C8711494C54EDA6F951EC1A06F4069B
          C6AF63C6F243B1AF9452500447D244C05F272AB0275D53304FF38BD8C120FE4A
          4794590FCE20F0802F5CBB8853CA3FD67A1D5F13D8D128E08D9DDF2A611DA8F2
          0E299F2AB31D8AE0489663041CFD6F24A5279070B5D1D2F8E78E65D6B38158AF
          B236989CC2D70DAE5FE855E2BD28D08DAF14D4515C5E661B14C1912C22DC2436
          5CDC376539DCAF80638AAE5219B8B41D5F1B7DCA2C83DE607186B6520447B288
          8011C249527E4AB9110C12E13A83D3336E1F079D38E6E899B2DC9CB80D77A72C
          47111CC97AFA886E1BF30369BD020E2071DC8027C94F4A59163B6D82AC399B28
          4583D8412A0E3057645827457020AB081807C0D941A70CCBA25C3E8E07702F43
          B9D34B0C3343AE5E29EB43AF81F183D119B64D111CA9644009D3C538DA4FDB71
          003D081EE2F54889D73BC4DBEE96B21E8884B3134C4E2DC8B05D8AE04825220C
          D03C28F6089F34702AD820A52795701DC21152FE0011A037C003BF06656C2345
          70A4D22166EC603C20035D7ABB32CBE1FE463C251E0F0449FA7A9810AFA777CA
          3A9A8B4990754E822238E232D780E7269D2276EEDF4E9285C0452738B03B4892
          0FF0302884E38D525730E1FD189318AFB9A182B65104475C279DB09320049EA5
          F4BB66A5D860118685F1578CEB1631FB38B1C4FB714D63BFF87D3B880D3B63F8
          7949FC3B0C328DD53C5461BB288223EB3AFBD85AEC7B7E77CD66623BF133B109
          A56529EFBD59ECC215DCE002899AC73FE30CE1D20CEF4F822238520DA573D023
          E042168C3F2C5DC775510447AA41049F50044728422028425828822314211014
          212C14C1118A10088A10168AE00845080445080B457084220482228485223842
          11024111C242111CA10881A00861A1088E5084405084B0500447284220284258
          28822314211014212C14C1118A10088A10168AE048BD89D05FCA575D2B0C8A10
          1614FF4AABC55808F524026E6B1BAFC10742297EDC118D6737362D6E855BDD87
          C5CB14010A730E2C68DB65A9271150527FCA5ABFDB56AC9866230F88FF42DB95
          D2ACE0ED2737AA8E44403D837162F50E70D7337A84316277433782BF465437F1
          F9E4B6ACA04DB80B7B7001DB4EA59E44A8055073615ED18D4882228405E57D66
          14DD8824284258388EE00845080445080BCAF1CC2CBA114954BB089335438A6E
          8447D82338325D73BEE6D3A21BE20954601B5B742392A87611AE16AB71DCBFE8
          86786050FC79BA14DD9024AA5D048CC2A1A6E142B16385954537C8110C62E1E9
          B318D0E2E9A323A871382DFEF971CD22B1D1C3AA1CAA6D02FE615B6A0E162BEC
          894707FA7CF2BC576A410412008A4022280289A00824822290088A4022280289
          A00824822290887F01FC00BA2AA3B0FDEB0000000049454E44AE426082}
      end
      object PanelConsulta: TPanel
        Left = 0
        Top = 256
        Width = 224
        Height = 41
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Consulta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = PanelConsultaClick
        OnMouseEnter = PanelConsultaMouseEnter
        OnMouseLeave = PanelConsultaMouseLeave
      end
    end
  end
  object ADOStoredProcCadastroProduto: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_cadastro_insumo_estoque;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
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
        Value = 0c
      end
      item
        Name = '@UNIDADE'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = '0'
      end
      item
        Name = '@ESTOQUEINSUMO'
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
        Value = Null
      end
      item
        Name = '@DATAVALIDADE'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@PRECO'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = 0c
      end>
    Left = 177
    Top = 41
  end
  object ADOStoredProcAlteracaoProduto: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_alteracao_insumo_estoque;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@CODIGO'
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
        Value = 0c
      end
      item
        Name = '@UNIDADE'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = '0'
      end
      item
        Name = '@ESTOQUEINSUMO'
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
        Value = Null
      end
      item
        Name = '@DATAVALIDADE'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@PRECO'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = 0c
      end>
    Left = 177
    Top = 105
  end
  object ADOStoredProcAtivacaoInativacao: TADOStoredProc
    Connection = ADOConnection1
    Parameters = <>
    Left = 177
    Top = 161
  end
  object ADOQueryConsultaEstoque: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select*from TB_ESTOQUE_INSUMO, TB_CIDADE, TB_ESTADO'
      
        'where CIDADE_ESTOQUE_INSUMO = CodigoCidade and ESTADO_ESTOQUE_IN' +
        'SUMO = CodigoEstado and '
      'EstadoCidade = CodigoEstado and SITUACAO_ESTOQUE_INSUMO = 1')
    Left = 271
    Top = 139
    object ADOQueryConsultaEstoqueCODIGO_ESTOQUE_INSUMO: TAutoIncField
      FieldName = 'CODIGO_ESTOQUE_INSUMO'
      ReadOnly = True
    end
    object ADOQueryConsultaEstoqueCIDADE_ESTOQUE_INSUMO: TIntegerField
      FieldName = 'CIDADE_ESTOQUE_INSUMO'
    end
    object ADOQueryConsultaEstoqueESTADO_ESTOQUE_INSUMO: TIntegerField
      FieldName = 'ESTADO_ESTOQUE_INSUMO'
    end
    object ADOQueryConsultaEstoqueVALOR_ESTOQUE_INSUMO: TBCDField
      FieldName = 'VALOR_ESTOQUE_INSUMO'
      Precision = 19
    end
    object ADOQueryConsultaEstoqueFOTO_ESTOQUE_INSUMO: TStringField
      FieldName = 'FOTO_ESTOQUE_INSUMO'
      Size = 200
    end
    object ADOQueryConsultaEstoqueSITUACAO_ESTOQUE_INSUMO: TBooleanField
      FieldName = 'SITUACAO_ESTOQUE_INSUMO'
    end
    object ADOQueryConsultaEstoqueOBS_ESTOQUE_INSUMO: TStringField
      FieldName = 'OBS_ESTOQUE_INSUMO'
      Size = 100
    end
    object ADOQueryConsultaEstoqueCodigoCidade: TIntegerField
      FieldName = 'CodigoCidade'
    end
    object ADOQueryConsultaEstoqueNomeCidade: TStringField
      FieldName = 'NomeCidade'
      Size = 100
    end
    object ADOQueryConsultaEstoqueEstadoCidade: TIntegerField
      FieldName = 'EstadoCidade'
    end
    object ADOQueryConsultaEstoqueCapital: TBooleanField
      FieldName = 'Capital'
    end
    object ADOQueryConsultaEstoqueCodigoEstado: TIntegerField
      FieldName = 'CodigoEstado'
    end
    object ADOQueryConsultaEstoqueSiglaEstado: TStringField
      FieldName = 'SiglaEstado'
      Size = 100
    end
  end
  object DataSourceConsultaEstoque: TDataSource
    DataSet = ADOQueryConsultaEstoque
    Left = 263
    Top = 187
  end
  object ADOQueryEstadoC: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from TB_ESTADO')
    Left = 311
    Top = 203
    object ADOQueryEstadoCCodigoEstado: TIntegerField
      FieldName = 'CodigoEstado'
    end
    object ADOQueryEstadoCSiglaEstado: TStringField
      FieldName = 'SiglaEstado'
      Size = 100
    end
  end
  object DataSourceEstadoC: TDataSource
    DataSet = ADOQueryEstadoC
    Left = 399
    Top = 203
  end
  object ADOQueryCidadeC: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from TB_CIDADE, TB_ESTADO'
      'where TB_CIDADE.EstadoCidade=TB_ESTADO.CodigoEstado')
    Left = 567
    Top = 171
    object ADOQueryCidadeCCodigoCidade: TIntegerField
      FieldName = 'CodigoCidade'
    end
    object ADOQueryCidadeCNomeCidade: TStringField
      FieldName = 'NomeCidade'
      Size = 100
    end
    object ADOQueryCidadeCEstadoCidade: TIntegerField
      FieldName = 'EstadoCidade'
    end
    object ADOQueryCidadeCCapital: TBooleanField
      FieldName = 'Capital'
    end
    object ADOQueryCidadeCCodigoEstado: TIntegerField
      FieldName = 'CodigoEstado'
    end
    object ADOQueryCidadeCSiglaEstado: TStringField
      FieldName = 'SiglaEstado'
      Size = 100
    end
  end
  object DataSourceCidadeC: TDataSource
    DataSet = ADOQueryCidadeC
    Left = 655
    Top = 203
  end
  object ADOQueryConsultaProdutos: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CodigoEstoque'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'Select*from TB_INSUMO_ESTOQUE, TB_ESTOQUE_INSUMO'
      
        'where ESTOQUE_INS_ESTOQUE = CODIGO_ESTOQUE_INSUMO and CODIGO_EST' +
        'OQUE_INSUMO = :'#39'CodigoEstoque'#39
      '')
    Left = 639
    Top = 131
    object ADOQueryConsultaProdutosCODIGO_INS_ESTOQUE: TAutoIncField
      FieldName = 'CODIGO_INS_ESTOQUE'
      ReadOnly = True
    end
    object ADOQueryConsultaProdutosDESCRICAO_INS_ESTOQUE: TStringField
      FieldName = 'DESCRICAO_INS_ESTOQUE'
      Size = 70
    end
    object ADOQueryConsultaProdutosQUANTIDADE_INS_ESTOQUE: TBCDField
      FieldName = 'QUANTIDADE_INS_ESTOQUE'
      Precision = 10
      Size = 3
    end
    object ADOQueryConsultaProdutosUNIDADE_INS_ESTOQUE: TStringField
      FieldName = 'UNIDADE_INS_ESTOQUE'
      FixedChar = True
      Size = 5
    end
    object ADOQueryConsultaProdutosESTOQUE_INS_ESTOQUE: TIntegerField
      FieldName = 'ESTOQUE_INS_ESTOQUE'
    end
    object ADOQueryConsultaProdutosDATA_ENTRADA_INS_ESTOQUE: TWideStringField
      FieldName = 'DATA_ENTRADA_INS_ESTOQUE'
      Size = 10
    end
    object ADOQueryConsultaProdutosDATA_VALIDADE_INS_ESTOQUE: TWideStringField
      FieldName = 'DATA_VALIDADE_INS_ESTOQUE'
      Size = 10
    end
    object ADOQueryConsultaProdutosPRECO_INSUMO: TBCDField
      FieldName = 'PRECO_INSUMO'
      currency = True
      Precision = 19
    end
    object ADOQueryConsultaProdutosCODIGO_ESTOQUE_INSUMO: TAutoIncField
      FieldName = 'CODIGO_ESTOQUE_INSUMO'
      ReadOnly = True
    end
    object ADOQueryConsultaProdutosCIDADE_ESTOQUE_INSUMO: TIntegerField
      FieldName = 'CIDADE_ESTOQUE_INSUMO'
    end
    object ADOQueryConsultaProdutosESTADO_ESTOQUE_INSUMO: TIntegerField
      FieldName = 'ESTADO_ESTOQUE_INSUMO'
    end
    object ADOQueryConsultaProdutosVALOR_ESTOQUE_INSUMO: TBCDField
      FieldName = 'VALOR_ESTOQUE_INSUMO'
      Precision = 19
    end
    object ADOQueryConsultaProdutosFOTO_ESTOQUE_INSUMO: TStringField
      FieldName = 'FOTO_ESTOQUE_INSUMO'
      Size = 200
    end
    object ADOQueryConsultaProdutosSITUACAO_ESTOQUE_INSUMO: TBooleanField
      FieldName = 'SITUACAO_ESTOQUE_INSUMO'
    end
    object ADOQueryConsultaProdutosOBS_ESTOQUE_INSUMO: TStringField
      FieldName = 'OBS_ESTOQUE_INSUMO'
      Size = 100
    end
  end
  object DataSourceConsultaProduto: TDataSource
    DataSet = ADOQueryConsultaProdutos
    Left = 727
    Top = 155
  end
  object ADOQueryEstoqueCA: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from TB_ESTOQUE_INSUMO'
      'where SITUACAO_ESTOQUE_INSUMO = 1')
    Left = 367
    Top = 303
    object ADOQueryEstoqueCACODIGO_ESTOQUE_INSUMO: TAutoIncField
      FieldName = 'CODIGO_ESTOQUE_INSUMO'
      ReadOnly = True
    end
    object ADOQueryEstoqueCACIDADE_ESTOQUE_INSUMO: TIntegerField
      FieldName = 'CIDADE_ESTOQUE_INSUMO'
    end
    object ADOQueryEstoqueCAESTADO_ESTOQUE_INSUMO: TIntegerField
      FieldName = 'ESTADO_ESTOQUE_INSUMO'
    end
    object ADOQueryEstoqueCAVALOR_ESTOQUE_INSUMO: TBCDField
      FieldName = 'VALOR_ESTOQUE_INSUMO'
      Precision = 19
    end
    object ADOQueryEstoqueCAFOTO_ESTOQUE_INSUMO: TStringField
      FieldName = 'FOTO_ESTOQUE_INSUMO'
      Size = 200
    end
    object ADOQueryEstoqueCASITUACAO_ESTOQUE_INSUMO: TBooleanField
      FieldName = 'SITUACAO_ESTOQUE_INSUMO'
    end
    object ADOQueryEstoqueCAOBS_ESTOQUE_INSUMO: TStringField
      FieldName = 'OBS_ESTOQUE_INSUMO'
      Size = 100
    end
  end
  object DataSourceEstoqueCA: TDataSource
    DataSet = ADOQueryEstoqueCA
    Left = 367
    Top = 367
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=AGRICULTURA;Data Source=LAPTOP-FCR3HP98' +
      '\SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 320
    Top = 8
  end
end
