object FormEstoqueInsumos: TFormEstoqueInsumos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Estoque de insumos'
  ClientHeight = 491
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
    Height = 491
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
    object PanelCadastroCampos: TPanel
      Left = 234
      Top = 30
      Width = 716
      Height = 430
      TabOrder = 2
      Visible = False
      object Label2: TLabel
        Left = 72
        Top = 168
        Width = 40
        Height = 18
        Caption = 'Valor:'
      end
      object Label6: TLabel
        Left = 72
        Top = 240
        Width = 89
        Height = 18
        Caption = 'Observa'#231#227'o:'
      end
      object Label1: TLabel
        Left = 72
        Top = 112
        Width = 54
        Height = 18
        Caption = 'Estado:'
      end
      object Label3: TLabel
        Left = 304
        Top = 112
        Width = 56
        Height = 18
        Caption = 'Cidade:'
      end
      object Label14: TLabel
        Left = 280
        Top = 168
        Width = 66
        Height = 18
        Caption = 'Situa'#231#227'o:'
      end
      object EditValor: TEdit
        Left = 120
        Top = 168
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
        OnChange = EditValorChange
        OnClick = EditValorClick
        OnEnter = EditValorEnter
        OnKeyPress = EditValorKeyPress
      end
      object MemoObs: TMemo
        Left = 168
        Top = 232
        Width = 466
        Height = 89
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object ButtonCadastrar: TButton
        Left = 272
        Top = 336
        Width = 105
        Height = 49
        Caption = 'Cadastrar'
        TabOrder = 4
        Visible = False
        OnClick = ButtonCadastrarClick
      end
      object ButtonLimpar: TButton
        Left = 416
        Top = 336
        Width = 105
        Height = 49
        Caption = 'Limpar'
        TabOrder = 7
        Visible = False
        OnClick = ButtonLimparClick
      end
      object PanelImagem: TPanel
        Left = 521
        Top = 11
        Width = 136
        Height = 142
        BorderWidth = 1
        BorderStyle = bsSingle
        Caption = 'Selecionar imagem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        object ImageEstoqueInsumo: TImage
          Left = 2
          Top = 2
          Width = 128
          Height = 134
          Align = alClient
          Stretch = True
          OnClick = ImageEstoqueInsumoClick
          ExplicitLeft = 0
          ExplicitTop = 1
          ExplicitWidth = 115
          ExplicitHeight = 113
        end
      end
      object DBLookupComboBoxEstado: TDBLookupComboBox
        Left = 132
        Top = 112
        Width = 145
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'CodigoEstado'
        ListField = 'SiglaEstado'
        ListSource = DataSourceEstado
        ParentFont = False
        TabOrder = 0
        OnClick = DBLookupComboBoxEstadoClick
        OnKeyPress = DBLookupComboBoxEstadoKeyPress
      end
      object DBLookupComboBoxCidade: TDBLookupComboBox
        Left = 366
        Top = 112
        Width = 145
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'CodigoCidade'
        ListField = 'NomeCidade'
        ListSource = DataSourceCidade
        ParentFont = False
        TabOrder = 1
        OnClick = DBLookupComboBoxCidadeClick
        OnKeyPress = DBLookupComboBoxCidadeKeyPress
      end
      object ComboBoxSituacao: TComboBox
        Left = 352
        Top = 168
        Width = 145
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ItemIndex = 1
        ParentFont = False
        TabOrder = 9
        Text = 'Ativo'
        Items.Strings = (
          'Inativo'
          'Ativo')
      end
      object Panel4: TPanel
        Left = 264
        Top = 344
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
        OnClick = Panel4Click
      end
      object Panel5: TPanel
        Left = 408
        Top = 344
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
        TabOrder = 6
        OnClick = Panel5Click
      end
    end
    object PanelAlteracaoCampos: TPanel
      Left = 234
      Top = 30
      Width = 716
      Height = 430
      TabOrder = 3
      Visible = False
      object Label4: TLabel
        Left = 72
        Top = 112
        Width = 54
        Height = 18
        Caption = 'Estado:'
      end
      object Label5: TLabel
        Left = 304
        Top = 112
        Width = 56
        Height = 18
        Caption = 'Cidade:'
      end
      object Label7: TLabel
        Left = 72
        Top = 168
        Width = 40
        Height = 18
        Caption = 'Valor:'
      end
      object Label8: TLabel
        Left = 72
        Top = 232
        Width = 89
        Height = 18
        Caption = 'Observa'#231#227'o:'
      end
      object PanelImagemA: TPanel
        Left = 521
        Top = 11
        Width = 136
        Height = 142
        BorderWidth = 1
        BorderStyle = bsSingle
        Caption = 'Sem imagem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        object ImageEstoqueInsumoA: TImage
          Left = 2
          Top = 2
          Width = 128
          Height = 134
          Align = alClient
          Stretch = True
          OnClick = ImageEstoqueInsumoAClick
          ExplicitLeft = 0
          ExplicitTop = 1
          ExplicitWidth = 115
          ExplicitHeight = 113
        end
      end
      object DBLookupComboBoxEstadoA: TDBLookupComboBox
        Left = 132
        Top = 112
        Width = 145
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'CodigoEstado'
        ListField = 'SiglaEstado'
        ListSource = DataSourceEstado
        ParentFont = False
        TabOrder = 0
        OnClick = DBLookupComboBoxEstadoAClick
        OnKeyPress = DBLookupComboBoxEstadoAKeyPress
      end
      object DBLookupComboBoxCidadeA: TDBLookupComboBox
        Left = 366
        Top = 112
        Width = 145
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'CodigoCidade'
        ListField = 'NomeCidade'
        ListSource = DataSourceCidade
        ParentFont = False
        TabOrder = 1
        OnKeyPress = DBLookupComboBoxCidadeAKeyPress
      end
      object EditValorA: TEdit
        Left = 120
        Top = 168
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
        OnChange = EditValorAChange
        OnClick = EditValorAClick
        OnEnter = EditValorAEnter
        OnKeyPress = EditValorAKeyPress
      end
      object MemoObsA: TMemo
        Left = 168
        Top = 232
        Width = 466
        Height = 89
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object ButtonAlterar: TButton
        Left = 272
        Top = 336
        Width = 105
        Height = 49
        Caption = 'Alterar'
        TabOrder = 6
        Visible = False
        OnClick = ButtonAlterarClick
      end
      object ButtonLimparA: TButton
        Left = 416
        Top = 336
        Width = 105
        Height = 49
        Caption = 'Limpar'
        TabOrder = 8
        Visible = False
        OnClick = ButtonLimparAClick
      end
      object Panel2: TPanel
        Left = 272
        Top = 346
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
        TabOrder = 4
        OnClick = Panel2Click
      end
      object Panel3: TPanel
        Left = 416
        Top = 346
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
        TabOrder = 5
        OnClick = Panel3Click
      end
    end
    object PanelConsultaDBGrid: TPanel
      Left = 234
      Top = 30
      Width = 716
      Height = 440
      TabOrder = 0
      Visible = False
      object Label12: TLabel
        Left = 17
        Top = 97
        Width = 56
        Height = 18
        Caption = 'Cidade:'
      end
      object Label11: TLabel
        Left = 17
        Top = 44
        Width = 54
        Height = 18
        Caption = 'Estado:'
      end
      object SpeedButtonImagem: TSpeedButton
        Left = 178
        Top = 134
        Width = 97
        Height = 41
        Cursor = crHandPoint
        Caption = 'Fechar Imagem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
        OnClick = SpeedButtonImagemClick
      end
      object DBLookupComboBoxEstadoCo: TDBLookupComboBox
        Left = 76
        Top = 44
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
        TabOrder = 4
        OnClick = DBLookupComboBoxEstadoCoClick
      end
      object DBLookupComboBoxCidadeCo: TDBLookupComboBox
        Left = 76
        Top = 97
        Width = 224
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
        TabOrder = 3
        OnClick = DBLookupComboBoxCidadeCoClick
      end
      object RadioGroupFiltro: TRadioGroup
        Left = 449
        Top = 11
        Width = 256
        Height = 105
        Caption = 'Filtro:'
        Color = clCream
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Ativos'
          'Inativos'
          'Todos')
        ParentBackground = False
        ParentColor = False
        TabOrder = 2
        OnClick = RadioGroupFiltroClick
      end
      object DBGrid1: TDBGrid
        Left = 1
        Top = 189
        Width = 714
        Height = 250
        Align = alBottom
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        PopupMenu = PopupMenuDB
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
            Width = 70
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
            Width = 150
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
            Width = 60
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
            Width = 220
            Visible = True
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
            Width = 400
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Situa'#231#227'o'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'OBS_ESTOQUE_INSUMO'
            Title.Alignment = taCenter
            Title.Caption = 'Observa'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 500
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CodigoEstado'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ESTADO_ESTOQUE_INSUMO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CIDADE_ESTOQUE_INSUMO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CodigoCidade'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'EstadoCidade'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Capital'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = False
          end>
      end
      object PanelImagemC: TPanel
        Left = 305
        Top = 11
        Width = 136
        Height = 142
        BorderWidth = 1
        BorderStyle = bsSingle
        Caption = 'Sem imagem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object ImageEstoqueInsumoC: TImage
          Left = 2
          Top = 2
          Width = 128
          Height = 134
          Align = alClient
          Stretch = True
          ExplicitLeft = 0
          ExplicitTop = 1
          ExplicitWidth = 115
          ExplicitHeight = 113
        end
      end
    end
    object PanelMenu: TPanel
      Left = 0
      Top = 0
      Width = 224
      Height = 491
      Align = alLeft
      TabOrder = 1
      object ImageMaquinario: TImage
        Left = 49
        Top = 43
        Width = 125
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
      object PanelCadastro: TPanel
        Left = 0
        Top = 328
        Width = 224
        Height = 41
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Cadastro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = PanelCadastroClick
        OnMouseEnter = PanelCadastroMouseEnter
        OnMouseLeave = PanelCadastroMouseLeave
      end
      object PanelAlteracao: TPanel
        Left = 0
        Top = 400
        Width = 224
        Height = 41
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'Altera'#231#227'o'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = PanelAlteracaoClick
        OnMouseEnter = PanelAlteracaoMouseEnter
        OnMouseLeave = PanelAlteracaoMouseLeave
      end
    end
  end
  object ADOStoredProcCadastro: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_cadastro_estoque_insumo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@CIDADE'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@ESTADO'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@VALOR'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = 0c
      end
      item
        Name = '@FOTO'
        Attributes = [paNullable]
        DataType = ftString
        Size = 200
        Value = '0'
      end
      item
        Name = '@SITUACAO'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = False
      end
      item
        Name = '@OBS'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = '0'
      end>
    Left = 17
    Top = 25
  end
  object ADOStoredProcAlteracao: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_alteracao_estoque_insumo;1'
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
        Name = '@CIDADE'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@ESTADO'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@VALOR'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = 0c
      end
      item
        Name = '@FOTO'
        Attributes = [paNullable]
        DataType = ftString
        Size = 200
        Value = '0'
      end
      item
        Name = '@SITUACAO'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = False
      end
      item
        Name = '@OBS'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = '0'
      end>
    Left = 17
    Top = 89
  end
  object ADOQueryConsulta: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *, case SITUACAO_ESTOQUE_INSUMO'
      'when '#39'0'#39' then '#39'Inativo'#39
      'when '#39'1'#39' then '#39'Ativo'#39' end [Situa'#231#227'o]'
      'from TB_ESTOQUE_INSUMO, TB_ESTADO, TB_CIDADE'
      'where'
      
        'CIDADE_ESTOQUE_INSUMO = CodigoCidade and ESTADO_ESTOQUE_INSUMO =' +
        ' CodigoEstado and '
      'EstadoCidade = CodigoEstado '
      '')
    Left = 176
    Top = 16
    object ADOQueryConsultaCODIGO_ESTOQUE_INSUMO: TAutoIncField
      FieldName = 'CODIGO_ESTOQUE_INSUMO'
      ReadOnly = True
    end
    object ADOQueryConsultaCIDADE_ESTOQUE_INSUMO: TIntegerField
      FieldName = 'CIDADE_ESTOQUE_INSUMO'
    end
    object ADOQueryConsultaESTADO_ESTOQUE_INSUMO: TIntegerField
      FieldName = 'ESTADO_ESTOQUE_INSUMO'
    end
    object ADOQueryConsultaVALOR_ESTOQUE_INSUMO: TBCDField
      FieldName = 'VALOR_ESTOQUE_INSUMO'
      currency = True
      Precision = 19
    end
    object ADOQueryConsultaFOTO_ESTOQUE_INSUMO: TStringField
      FieldName = 'FOTO_ESTOQUE_INSUMO'
      Size = 200
    end
    object ADOQueryConsultaOBS_ESTOQUE_INSUMO: TStringField
      FieldName = 'OBS_ESTOQUE_INSUMO'
      Size = 100
    end
    object ADOQueryConsultaCodigoEstado: TIntegerField
      FieldName = 'CodigoEstado'
    end
    object ADOQueryConsultaSiglaEstado: TStringField
      FieldName = 'SiglaEstado'
      Size = 100
    end
    object ADOQueryConsultaCodigoCidade: TIntegerField
      FieldName = 'CodigoCidade'
    end
    object ADOQueryConsultaNomeCidade: TStringField
      FieldName = 'NomeCidade'
      Size = 100
    end
    object ADOQueryConsultaEstadoCidade: TIntegerField
      FieldName = 'EstadoCidade'
    end
    object ADOQueryConsultaCapital: TBooleanField
      FieldName = 'Capital'
    end
    object ADOQueryConsultaSITUACAO_ESTOQUE_INSUMO: TBooleanField
      FieldName = 'SITUACAO_ESTOQUE_INSUMO'
    end
    object ADOQueryConsultaSituação: TStringField
      FieldName = 'Situa'#231#227'o'
      ReadOnly = True
      Size = 7
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQueryConsulta
    Left = 177
    Top = 73
  end
  object ADOStoredProcAtivarInativar: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_ativacao_inativacao_estoque_insumo;1'
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
        Name = '@SITUACAO'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = False
      end>
    Left = 177
    Top = 137
  end
  object ADOStoredProcExclusao: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_exclusao_estoque_insumo;1'
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
      end>
    Left = 177
    Top = 193
  end
  object OpenPictureDialogEstoqueInsumos: TOpenPictureDialog
    Options = [ofHideReadOnly, ofExtensionDifferent, ofEnableSizing]
    Left = 703
    Top = 99
  end
  object PopupMenuImagem: TPopupMenu
    Left = 807
    Top = 99
    object popAmpliar: TMenuItem
      Caption = 'Ampliar imagem'
      OnClick = popAmpliarClick
    end
  end
  object OpenPictureDialogEstoqueInsumosC: TOpenPictureDialog
    Left = 447
    Top = 107
  end
  object PopupMenuDB: TPopupMenu
    Left = 311
    Top = 11
    object popAtivar: TMenuItem
      Caption = 'Ativar'
      Enabled = False
      Visible = False
      OnClick = popAtivarClick
    end
    object popInativar: TMenuItem
      Caption = 'Inativar'
      Enabled = False
      Visible = False
      OnClick = popInativarClick
    end
    object popExcluir: TMenuItem
      Caption = 'Excluir'
      Enabled = False
      Visible = False
      OnClick = popExcluirClick
    end
  end
  object ADOQueryEstado: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from TB_ESTADO')
    Left = 399
    Top = 299
    object ADOQueryEstadoCodigoEstado: TIntegerField
      FieldName = 'CodigoEstado'
    end
    object ADOQueryEstadoSiglaEstado: TStringField
      FieldName = 'SiglaEstado'
      Size = 100
    end
  end
  object DataSourceEstado: TDataSource
    DataSet = ADOQueryEstado
    Left = 487
    Top = 299
  end
  object ADOQueryCidade: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from TB_CIDADE, TB_ESTADO'
      'where TB_CIDADE.EstadoCidade=TB_ESTADO.CodigoEstado')
    Left = 655
    Top = 299
    object ADOQueryCidadeCodigoCidade: TIntegerField
      FieldName = 'CodigoCidade'
    end
    object ADOQueryCidadeNomeCidade: TStringField
      FieldName = 'NomeCidade'
      Size = 100
    end
    object ADOQueryCidadeEstadoCidade: TIntegerField
      FieldName = 'EstadoCidade'
    end
    object ADOQueryCidadeCapital: TBooleanField
      FieldName = 'Capital'
    end
    object ADOQueryCidadeCodigoEstado: TIntegerField
      FieldName = 'CodigoEstado'
    end
    object ADOQueryCidadeSiglaEstado: TStringField
      FieldName = 'SiglaEstado'
      Size = 100
    end
  end
  object DataSourceCidade: TDataSource
    DataSet = ADOQueryCidade
    Left = 743
    Top = 299
  end
  object OpenPictureDialogEstoqueInsumosA: TOpenPictureDialog
    Left = 591
    Top = 107
  end
  object ADOQueryEstadoC: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from TB_ESTADO')
    Left = 791
    Top = 187
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
    Left = 863
    Top = 179
  end
  object ADOQueryCidadeC: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from TB_CIDADE, TB_ESTADO'
      'where TB_CIDADE.EstadoCidade=TB_ESTADO.CodigoEstado')
    Left = 863
    Top = 219
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
    Left = 879
    Top = 251
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
