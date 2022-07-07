object FormEstoqueProduzido: TFormEstoqueProduzido
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Estoque de produ'#231#227'o'
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
        Top = 192
        Width = 40
        Height = 18
        Caption = 'Valor:'
      end
      object Label6: TLabel
        Left = 72
        Top = 256
        Width = 89
        Height = 18
        Caption = 'Observa'#231#227'o:'
      end
      object Label1: TLabel
        Left = 72
        Top = 128
        Width = 54
        Height = 18
        Caption = 'Estado:'
      end
      object Label3: TLabel
        Left = 304
        Top = 128
        Width = 56
        Height = 18
        Caption = 'Cidade:'
      end
      object Label14: TLabel
        Left = 288
        Top = 192
        Width = 66
        Height = 18
        Caption = 'Situa'#231#227'o:'
      end
      object Label10: TLabel
        Left = 72
        Top = 80
        Width = 91
        Height = 18
        Caption = 'Capacidade:'
      end
      object EditValor: TEdit
        Left = 120
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
        OnChange = EditValorChange
        OnClick = EditValorClick
        OnEnter = EditValorEnter
        OnKeyPress = EditValorKeyPress
      end
      object MemoObs: TMemo
        Left = 168
        Top = 256
        Width = 466
        Height = 89
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object ButtonCadastrar: TButton
        Left = 272
        Top = 360
        Width = 105
        Height = 49
        Caption = 'Cadastrar'
        TabOrder = 9
        Visible = False
        OnClick = ButtonCadastrarClick
      end
      object ButtonLimpar: TButton
        Left = 416
        Top = 360
        Width = 105
        Height = 49
        Caption = 'Limpar'
        TabOrder = 10
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
        TabOrder = 11
        object ImageEstoque: TImage
          Left = 2
          Top = 2
          Width = 128
          Height = 134
          Align = alClient
          Stretch = True
          OnClick = ImageEstoqueClick
          ExplicitLeft = 0
          ExplicitTop = 1
          ExplicitWidth = 115
          ExplicitHeight = 113
        end
      end
      object DBLookupComboBoxEstado: TDBLookupComboBox
        Left = 132
        Top = 128
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
        TabOrder = 2
        OnClick = DBLookupComboBoxEstadoClick
        OnKeyPress = DBLookupComboBoxEstadoKeyPress
      end
      object DBLookupComboBoxCidade: TDBLookupComboBox
        Left = 366
        Top = 128
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
        TabOrder = 3
        OnClick = DBLookupComboBoxCidadeClick
        OnKeyPress = DBLookupComboBoxCidadeKeyPress
      end
      object ComboBoxSituacao: TComboBox
        Left = 360
        Top = 192
        Width = 145
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ItemIndex = 1
        ParentFont = False
        TabOrder = 5
        Text = 'Ativo'
        OnKeyPress = ComboBoxSituacaoKeyPress
        Items.Strings = (
          'Inativo'
          'Ativo')
      end
      object EditCapacidade: TEdit
        Left = 168
        Top = 80
        Width = 121
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = EditCapacidadeKeyPress
      end
      object ComboBoxUnidade: TComboBox
        Left = 304
        Top = 80
        Width = 69
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
        OnKeyPress = ComboBoxUnidadeKeyPress
        Items.Strings = (
          'Kg')
      end
      object Panel4: TPanel
        Left = 272
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
      object Panel5: TPanel
        Left = 416
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
        Top = 128
        Width = 54
        Height = 18
        Caption = 'Estado:'
      end
      object Label5: TLabel
        Left = 304
        Top = 128
        Width = 56
        Height = 18
        Caption = 'Cidade:'
      end
      object Label7: TLabel
        Left = 72
        Top = 192
        Width = 40
        Height = 18
        Caption = 'Valor:'
      end
      object Label8: TLabel
        Left = 72
        Top = 248
        Width = 89
        Height = 18
        Caption = 'Observa'#231#227'o:'
      end
      object Label16: TLabel
        Left = 72
        Top = 80
        Width = 91
        Height = 18
        Caption = 'Capacidade:'
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
        TabOrder = 9
        object ImageEstoqueA: TImage
          Left = 2
          Top = 2
          Width = 128
          Height = 134
          Align = alClient
          Stretch = True
          OnClick = ImageEstoqueAClick
          ExplicitLeft = 0
          ExplicitTop = 1
          ExplicitWidth = 115
          ExplicitHeight = 113
        end
      end
      object DBLookupComboBoxEstadoA: TDBLookupComboBox
        Left = 132
        Top = 128
        Width = 145
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'CodigoEstado'
        ListField = 'SiglaEstado'
        ListSource = DataSourceEstado
        ParentFont = False
        TabOrder = 2
        OnClick = DBLookupComboBoxEstadoAClick
        OnKeyPress = DBLookupComboBoxEstadoAKeyPress
      end
      object DBLookupComboBoxCidadeA: TDBLookupComboBox
        Left = 366
        Top = 128
        Width = 145
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'CodigoCidade'
        ListField = 'NomeCidade'
        ListSource = DataSourceCidade
        ParentFont = False
        TabOrder = 3
        OnClick = DBLookupComboBoxCidadeAClick
        OnKeyPress = DBLookupComboBoxCidadeAKeyPress
      end
      object EditValorA: TEdit
        Left = 120
        Top = 192
        Width = 121
        Height = 27
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        TextHint = '0,00'
        OnChange = EditValorAChange
        OnClick = EditValorAClick
        OnEnter = EditValorAEnter
        OnKeyPress = EditValorAKeyPress
      end
      object MemoObsA: TMemo
        Left = 167
        Top = 248
        Width = 466
        Height = 89
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object ButtonAlterar: TButton
        Left = 272
        Top = 360
        Width = 105
        Height = 49
        Caption = 'Alterar'
        TabOrder = 8
        Visible = False
        OnClick = ButtonAlterarClick
      end
      object ButtonLimparA: TButton
        Left = 416
        Top = 360
        Width = 105
        Height = 49
        Caption = 'Limpar'
        TabOrder = 10
        Visible = False
        OnClick = ButtonLimparAClick
      end
      object EditCapacidadeA: TEdit
        Left = 168
        Top = 80
        Width = 121
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = EditCapacidadeAKeyPress
      end
      object ComboBoxUnidadeA: TComboBox
        Left = 304
        Top = 80
        Width = 69
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 1
        Text = 'Kg'
        OnKeyPress = ComboBoxUnidadeAKeyPress
        Items.Strings = (
          'Kg')
      end
      object Panel2: TPanel
        Left = 272
        Top = 352
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
        TabOrder = 6
        OnClick = Panel2Click
      end
      object Panel3: TPanel
        Left = 416
        Top = 352
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
        TabOrder = 7
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
      object SpeedButtonImagem: TSpeedButton
        Left = 166
        Top = 21
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
      object Label12: TLabel
        Left = 16
        Top = 97
        Width = 56
        Height = 18
        Caption = 'Cidade:'
      end
      object Label11: TLabel
        Left = 16
        Top = 44
        Width = 54
        Height = 18
        Caption = 'Estado:'
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
        TabOrder = 4
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
        TabOrder = 2
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
            FieldName = 'CODIGO_ESTOQUE'
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
            FieldName = 'CAPACIDADE_ESTOQUE'
            Title.Alignment = taCenter
            Title.Caption = 'Capacidade'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 120
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'UNIDADE_ESTOQUE'
            Title.Alignment = taCenter
            Title.Caption = 'Unidade'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
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
            Width = 200
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
            Width = 75
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VALOR_ESTOQUE'
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
            FieldName = 'FOTO_ESTOQUE'
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
            Width = 75
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'OBS_ESTOQUE'
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
            FieldName = 'CodigoEstado'
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
            FieldName = 'ESTADO_ESTOQUE'
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
            FieldName = 'CIDADE_ESTOQUE'
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
            FieldName = 'SITUACAO_ESTOQUE'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
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
            FieldName = 'Capital'
            Title.Alignment = taCenter
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
        TabOrder = 3
        object ImageEstoqueC: TImage
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
        TabOrder = 1
        OnClick = DBLookupComboBoxCidadeCoClick
      end
      object DBLookupComboBoxEstadoCo: TDBLookupComboBox
        Left = 75
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
        TabOrder = 0
        OnClick = DBLookupComboBoxEstadoCoClick
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
        Left = 46
        Top = 40
        Width = 132
        Height = 139
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000820000
          008208060000008A0310FD000000097048597300002710000027100194695119
          000014EA4944415478DAED9D09BC66631DC7FF933DEB8C21833214439A3059A2
          7065EC65CBDE622A2DB62CD9B2D414512AA155C8CD12A114C2A450838414A2D4
          C48D500973EDCCA0E77BFFCFFFF31E67CEFABEEF7D9FF7DEF7F97D3ECFE7BECB
          B9E73CEF39BFF37FFEFB19F3EAABAF4A44C49848840810891031844884882144
          22440C211241F151377EE8C6CBA127120ABD4E84F16E5CE2469F1B77BAB1831B
          FF0C3DA910E86522F4B971991B4BB9F1941B4BB8F1821B3BBB7175E8C9751ABD
          4A84CFBA71A27FFD94FFCBB230D6BFFE821BD3434FB293E83522BCDE8DF344EF
          FA57DC78C68DC5DC789D1B9C88D97E9B85DCB8C28DBDFC36A31EBD448477B971
          A11B6F74E369D18BBF68C6764808930E0FBBB1AB1BBF0B3DF9E146AF10E11037
          4EF1AFB9EB1711BDEBF380AE005996F1EF0F70E3DBA17FC47062B413614137FA
          DDD85354F473B72F2E2A0DCA805418145526D9FE076E7C2CF40F1A2E8C66224C
          76E3E76EACECC6B3A24458AC89FD2041E61325D0BD6EBCD78D0742FFB87663B4
          12E1136E9CE15F732117F6A3593C27BA5C8C13951448984B42FFC876623412E1
          5C373EE45F4302EEE4F9DAB0DF97449796F1FE3D3AC76742FFD876613411E1AD
          6E5CECC69AA24B01E6E1E2C3709C2745154DCCCC5FBBB1BB1B8F87FEF1AD62B4
          10E1C3A2B102D08EA5A00CF816E6889A981003D7F4CCD027A1158C06227C53D4
          BC0390008570FE0E1CF7455113D3960A9689539ADF5D588C6422ACEAC6456E4C
          71E37937E6CAF02C054560F919F4C7857C97BAF14151928C288C5422BC5F9404
          9C7C2EC402A26B76280CFABF4BBA314BD4857D77C8135417239108A7BA71907F
          CD52809B7881D09312954A98994BFBF71F1175668D088C24222C2F1A2BD84454
          F43296083DA914589E900E4686D3A541DAAEC64821C2F66E5C20AA0862CBB324
          845C0ACA30DBCF91F9DEE2C66E6E3C147A524518094438DE8D63FDEB4E5A05AD
          0213132714DE48960DF4866B424F2A0FDD4C04227F2884EF113DA1B878D1CEC7
          849E580D306F4C4C5B2AA68B26BD741DBA95089BBBF163D11358943B3012904E
          78F9991B1F10552CBB06DD488463DC38C1BFB613B860E849B501C9849707455D
          D3B7849E94A19B88C01D8F43666B51ED9B780156C1485A0ACAF082FF5DB654EC
          E7C677434F0A740B1136165D0A26C8C85F0ACA805440D28DF5BFF31CD1BA8AA0
          E806221CECC637FCEB2A6964A305F81B20020A70F09A8A9044403C2216490EE5
          2E7946AAA7918D16B04CE0181BE7FFEE2D2A193B8E5044C027FF5737969346BA
          78336964A30184B351244D6F58CF8DDB3B3D8950442064FB35517D008BA01796
          822270112C5196EAAB9D3B3D8150442089E3DDA2E2B0D7499006D94EE35BDE4B
          4D8422C2BFDC5821C4814700703475DC620A4504AB2F889817A63477149108DD
          07CECD929D3E682822A0299FE5C62F431CBC8BF136D1486BC7F5A65044E0A0E4
          185C11E2E05D8C55DCF8870470AB8724C227DDF87E888377313673E357D29E82
          9C5A8844E82E4422440C21122107148C90B07A5BC136581F640235534BF07637
          B6F5AF8902FE27C4C9482012A160BBA3DCF84ACEF7ECE37B6EFC54B4D6A12E0E
          75E3EBFEF54612BE334A24420ED0A06788267018283CA5CA8904562295A7B9B1
          BF1B5BB8F1979AF3200FE06CFF9A8AA93FB6F09B9675635369AD5C3E12210757
          BAF12651110E08C870C13F25BA1C2009C8667A54942C97D59C47BB8880B967A5
          6F5345C9DA0C22117260F98B9CE835443B9690DDFCBFC43678E1901C7432A99B
          03D82E22D05F6917D1DA0508B17993FB8944C8815D7C3C6DE8024887A9A96D90
          103F12AD849A53731EAD10614BD124124ADB506A69D845173614DB661D42A4EE
          5F2B910899C01AC01DBD9A680EC38CD4F7F44922FF6F9326E6D12C115802B030
          48AB236C4C55F464FF19BFAD4E52EA18FF3F00525304138990011A60D008E37A
          D13B26099605F21C9BD5F8EB1081923B0887B989A5B193A8281F70E309696418
          A1B7BCC38D9552FF4F2D03555B2BFAF7643443201273FEEDC676A215512C7391
          0819A015CE9FDDB84734289304278D8BB05E93F3A84A0496A36BFD6B14D76FB9
          F137373E2E7A41B99013FDF7F46FA28F932D0F34F8BCCE8DB78826E4401496B0
          95FC79B859B4E8656FFF1D3A4624420E38D1DCFD88622C06327ED716BDA308D4
          34DB98A22A11AE12BD5B2103221F651593959E4D6460EF238DB03AD28B9E8C98
          B7646171F1C9CF24FD2CCBBC653F108B9CCD37FB394422E4604751D390B46F44
          F01FDCB851546768055589708F3F1E73867488732AB0208729B4DCF148A8CF89
          4656C9CEBE5F543AEC9DB35F2C222C239C614883A823540089AEF80E96AEF13F
          65A84A04EE64C8475B1C5BAACC5FC09D8FA8C7FB8917142981A38B469F9027AB
          3F021DE0CE77631D51C25CEA3F8F5643056C257AB75003F0649BE65195087C3E
          20AA2082BB442503BA094B0259452C5F546ADDEE7F1F4BD797453D8E7474312B
          838B8D8581F4A0BC6F56E238D18F5011DC2D285FABB7691E55894026158EAC75
          FCFBE344EF74B28DD772E3F7A217BADF8D23451545EBE540BBDEE7FDBC2131CB
          08D2E3C28CE344225400CA2215512C11B4C0BDA80DF3A84A042E2E77B7590298
          7AF82FE6F7BF83F4322EDE84C4FFB08CA14BE0EDC404EE17B5308A10899003C4
          2EC530D8E02863285FE808D60F194FE324D1C290C744D7F2DF88969D57415522
          7041590ACE14EDF38C14F89368F12E560C16C179FEBB1B442D072C00F489EDFC
          7648074CCBF30BE6138990014E36CF569A50698FAF05EE685CBE6577601D87D2
          FBDCB85CD4FE7FD0FF066A17A941A016813E49ACFFF43DD846E66DAF77B41B5F
          72E370C9B776221152E04EC761438C018F216B2AEB30F1044EE414BF0F347934
          78AB1D240C6CDE47A407C19F818279D47531E3F8413F394274690028898FF8FF
          7F5C1A56CDBA7E7E4958FEC44E7E5F694422A48088E78473B277ACB96F943A24
          096E5E1C3F987179CF656A26D660555AF78986C0F92D93FD7758364421F7F1EF
          57F7DB257192A899C9763F497D178990C0BE6E7C47F42EAB5B1647CC8113CF9D
          890DCF739C20C5B639DB37430424158931987F5801C41F7013A3C70CF86D0890
          A1CC62654C13BDFB0713FBD8DD7F9F7E44502482CD471A091E285837D6DC2F0A
          2421691EB9839B17130E6B83E5E2FA8CEDEB128198C166FE354E21FC02908F0B
          3AC97F8F047BDA6F8349891F018944138C9B44250ABACBC9A2751DDB27F61F89
          E0611792757F72DD9D7A90A0C209E602A1C8E17BC092E8CBD8B60E112CE70045
          90D8004EA564F93A9FE31BE0F100900F2BC3BC9028999063AAFF0E9D06939225
          E295C43E22113C10E378DB5863CFAEBBD304BE28EAF4415F40948FF563766ABB
          AA446089413AE12F40F37F83A892882570526ADB41FFDD24FF9EDED148A82AB5
          9E91081E9861885BC4E9636D3806D2818BC8935FB97BD3398D5589402C012B64
          52E2B3C3DCF8AA687EC1C389CF97F7EF0F14951C00094540097F4791491B8920
          AA61632DE0925DA50DC7C02D4CE48FF5190220214E486D53850828AE28B059E4
          B4861F28B58F243E378597A8E5B3FEFB15A49CE09108A24A13E622D1BBDDDB70
          8C73FCBE903237883EE9E5D3A96DCA88409F47443DCBC1B139C721344EB20A2E
          6832972CB196EDC9489AE58FCF12727FC99C231144ED6A6A028AE2F7758014C0
          FDCB0526B1843B74FFD436654440CB5F5FCA9F07410E021287D803AEE7DF8A4A
          227408925CAF956A8844104D3E45BB9F29CD25A226C132839286E279907F8D02
          F9F9D4764544205A882B39CBF19307CCC83D447509AC06E20A34E17EBEE2FF47
          224823AE8FB70ED7F22B4DECD7402E21661A3E7D2E228A6256C4B28808B8B409
          1C75B2B1552482076295601311BBAB5AD83FA4C26EE784A2A523B2B9A0E9E733
          E611014B8062156215D775F0BC4422785822274522EBB7E13866E2E103D838E3
          FB3C22903FC8DADEE926A091081EF6D43612435118CF6DE118488047FD3EF3DC
          D55944E022B03C919F784187CF4B24420264F45A32E716FEC4D405AD7DB9F0AC
          F194A5ED91B35D92081636C60240C10BF17880488414A81538D8BF9E2E9A8F50
          9664023881288A0474ACEBF93AD228294B234904B64347C13D8C197B6080F3D2
          9344E0829D55B00D17FF08FF1A250FA50D870CA9E28481C95C7A581AEE5D3C77
          049A96F3EF5136490079A9E018D3441D4F609C9F174420B9E4D900E705B39928
          694F112199CF9F078A47F0C8ED5063DF10062F5F15270EFBB54C2196028A4DB0
          5A760B71524443DB442B3BFEA8825044C0ED4B0249D1832AE6F8EFB9C3F1E727
          8B4A2D9B19F19FBC7B7000DD2A2A397008953D1B9294384B51A729074A25F902
          7F97303A020AEE940AF36E3B4211C1124622E685B5EBEF284211811FDB6D8FF3
          ED16F45C2F66A281578638780264151DE65F63C5CC6A615FED8095C975FCF186
          2195C5BC94EE4E0257B69131CB05DD69600D9151157B317718ED6CAFD70EF4A4
          1F2112615E4422044224824724426788B08168C555590577244220B483087830
          714FE3DECEEBE50401B6F4DB152112A1094C172D5AA18AA9D96CA65689C08523
          5B9AE0169ECCBBFD5C88A15C9CD88EF43BBABC6C5F617F910835C189C5038709
          BA5393FB6895086437F789D64E50FB88394A9A1DA97114C4DA33AB70A0D18DED
          A892FD4522D404BD0A28199B269A024FB4901E8CC41FEA5CCC568940749428EA
          AAA9CF4994259D9DE011C420844EB1CD2F4AF6D7934420D5FC8C26FF9FBA43BC
          9394BE534482138648228E1802490F55DC4FAB44E81395486365DE9C07E6B791
          FF9CD4BB05A5BC57744F12C124021700458A0A20BAA852AFC88925F24882C8CB
          A9FFB56C670B639F285AD286189EE0B7B7882285277715CCA3552270C7CFF6FB
          4987D4FB4525C1A0FFAD5502493D4904D6542A9F4900290ABB52A6765CE23DD5
          4A24A4DAB311AD3086BE45885EDCC44806FA192171AC443E0BEDB01AE8AB444A
          DDC4D4E784B4FB45251495D44756D8574F12619AE83A4F061145A2E42AB2D693
          AB404108BE7FCAD0A916A28C8C9E8603A2271E0962F909D62719AD9D5C023296
          686C65657388E3D572E6D10E222CE2E79C269C25C182F43326F2D09344301DC1
          1A69E6652C4108C43EE21EA2A099F3F81EB3C92962B18216D02F9A010D192846
          A5F40C45F29E8C7DB7CBA1648DB89170778892F529FF3B4994D9A0E27E7A9208
          49AB01ED9B1C45D6FB6372FE07B18F54A0F6E17469745BE34E23CF6F57FF1E02
          908A4E1A3BFA02763DAD73AEC9D8673B3D8B583287FB792DECE70441EA747EE9
          7922002E1E1711D1CE9290F5902C2E3ACE197A10E03B40B96419992E9A82BE80
          7F8F7D4F9DE3327E7F5CA41919FB1B2E17F33B45BBC1D1957D8D1AFF1789E0C1
          DDD42FAA03B08D7543630DA66F021716330CCB8135198D9DC6D82C15A4BFEF25
          5A9462F17CEA1A4836C9BBC8C3458445FDDC37947ACF998A4448816CDE2DFC6B
          2E368D3310EF287D96E246822AE619CA1AEB3F773DCB0BD6832D1BD673C15AEA
          A7315C44A08916BAC23635FF2F122107887A1A54222108E8606A620570B76DEA
          B779C17F879D8EB28693C95ADCE0FBC7CC1C4EAB210D9460CCC5663291231132
          80E82778433773F21BE94C66ED692804E14EC73A4023C7C49C2EEA3B204D9E40
          14656E7439831877E41CA31522A0074C149548837E9EB8B8F16ADAA387306959
          1A28AABDB9C23E231152B0FA4794C65353DF91E0C905E3A4F78B16A4241B6B50
          4D7DA03F06C5314717CCA3192260D5D0F56D62CDDF4C63CD034AB68944480073
          8BD633780F8F487D675D4C00D147DCD033FD67D43B2231500EB1E1F11D9435E5
          AA43040A6D904AF620312C162C033C99780F29E3B7E580D802F59B38CBFAA441
          00F212F62C384624828795A065DD3DACFB986373FC7778252D11C49A6152066F
          8A2219410325F3A84A04AC94FBFCBE211F6E6E6A2BE726B6C17740830DFC16E9
          A659049FF02560CDE06A3E39E7389108D2E85292BC6BF01E22F6B7F6DB731158
          0AACAF314F614572E0718424480402417D525C0E6FA84A046BBD7BBB9F4F959E
          48CC23DD55D5BAAF58ABFF34221144B57E5CC9988EDCF5286168FC3884AC39B7
          9981D8E9B7FA6D51C47026599411898213074B816490FD0AE65185082499D087
          09F2D171B5EAA305E9B6021951168FF79FE186C6DB98D742301221012C01EE3A
          4E38DE40A4001728F9C00B824B10674D796D212D8A222E68EE46144EBC932C37
          97E7CCA30A112888E5E931F827CEABF93B2D328AF563F1106B039C5550138950
          003C8ADCFD760711D0416B4F277A985B37990944BB3E48853F626EC6BECB8860
          CF74FCAFA8346806D6C7D9BABA31379C6378424F4B6D1B8990036BD28DAB1865
          0CC712DA7856EF43F6996E7B6FCF6464C9D92A63FF6544E0795248214CD8435A
          F8BDCC0B82A22C9A429C35A748841C70171191246309BD800B9B362B7118D121
          9580D48A19FB200186C697590F122F23020E2914CE6696852490563788929981
          9E33DBFFAE2422110AC04941294419C484A3AB2AA4C07B488A1A819DDBFCDF97
          73F6C13A8F1F20DD2ABF8C08EC97265BADF65BC4F445415CCBBF7FC6FF06AC9D
          2712DB452254008A234B0327D1FA1F124BA00B5A5955B54521D13392F5066544
          60FF38A6EA4611D3E813F51F58100A3FC3CA32AFAF2312A122B870B89869E78F
          D255F5F98E8013DC27BABC24F75744043C9C783AD1536648F3C00186543353D6
          F234D30F13E949229475556B37ACE57E522A9411814C28E216E98770D5011795
          A828520B9DC3DCE4646D2F9BDAB64F34BFA2A78840A4F0CC0E1F97BB8D9880E5
          349411C1FC0024C76ED9E431510ED1332C5D8D30358EAEAC0A2D42EBA4B8F54C
          57350E9AF54495E106772049237DA23E060B75832C2220BED149EA16CE14C11E
          1798D531C69E36DB331D53582359E7D70D706C1C44CFF963E39832A994E75964
          49606D47644F6DF1D8566B91E7A022D792B079CF10C1A285217A195A989B635B
          2A1BC82302CB085204115F94655D06FC1837F9D77816AFCED8E6497FACD53B7D
          5242116129FFA34943DB37C0F169B30B11C922BAD37F56147D4C460E498E3DCC
          EFA32A508CCD42CA7AB614307D0497F8CC4E9F90504400163368B6037B2BA052
          996EAE442D2D858C00D6BD05FF83F420D2690F03E13561E901516981BF61BCDF
          07CB1ED1D329FEF76DE8F79197A584FE41F00C52AEDDE1733184904410693C21
          ED50514DBA4A07F676810BC9C9B72EF02870657D16A9A72050B44BCD630D884A
          91AC674359989B0B41FEC5ECEABB6D1F421301E70E15489BFBF7048848E6186E
          DD817CC7A5333E7FB1E0D89C287223887AAE28F54142EB44796D334D7B0D2159
          7E1E18E6DF9D8BD04430F0606D8243E418764A8144738774966DC4DDBE5085FF
          436AE10C9A5B615B030AE7B88CDF869E810919BA9754D7102122302211228610
          89103184488488214422440CE1FFF88DED57D92527930000000049454E44AE42
          6082}
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
  object ADOQueryConsulta: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *, case SITUACAO_ESTOQUE'
      'when '#39'0'#39' then '#39'Inativo'#39
      'when '#39'1'#39' then '#39'Ativo'#39' end [Situa'#231#227'o]'
      'from TB_ESTOQUE, TB_ESTADO, TB_CIDADE'
      'where'
      
        'CIDADE_ESTOQUE = CodigoCidade and ESTADO_ESTOQUE = CodigoEstado ' +
        'and '
      'EstadoCidade = CodigoEstado '
      '')
    Left = 176
    Top = 16
    object ADOQueryConsultaCODIGO_ESTOQUE: TAutoIncField
      FieldName = 'CODIGO_ESTOQUE'
      ReadOnly = True
    end
    object ADOQueryConsultaCAPACIDADE_ESTOQUE: TBCDField
      FieldName = 'CAPACIDADE_ESTOQUE'
      Precision = 10
      Size = 3
    end
    object ADOQueryConsultaUNIDADE_ESTOQUE: TStringField
      FieldName = 'UNIDADE_ESTOQUE'
      FixedChar = True
      Size = 5
    end
    object ADOQueryConsultaCIDADE_ESTOQUE: TIntegerField
      FieldName = 'CIDADE_ESTOQUE'
    end
    object ADOQueryConsultaESTADO_ESTOQUE: TIntegerField
      FieldName = 'ESTADO_ESTOQUE'
    end
    object ADOQueryConsultaVALOR_ESTOQUE: TBCDField
      FieldName = 'VALOR_ESTOQUE'
      currency = True
      Precision = 19
    end
    object ADOQueryConsultaFOTO_ESTOQUE: TStringField
      FieldName = 'FOTO_ESTOQUE'
      Size = 200
    end
    object ADOQueryConsultaSITUACAO_ESTOQUE: TBooleanField
      FieldName = 'SITUACAO_ESTOQUE'
    end
    object ADOQueryConsultaOBS_ESTOQUE: TStringField
      FieldName = 'OBS_ESTOQUE'
      Size = 200
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
    object ADOQueryConsultaSituação: TStringField
      FieldName = 'Situa'#231#227'o'
      ReadOnly = True
      Size = 7
    end
  end
  object ADOStoredProcCadastro: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_cadastro_estoque;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@CAPACIDADE'
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
        Size = 16
        Value = '0'
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
        Size = 200
        Value = '0'
      end>
    Left = 17
    Top = 25
  end
  object ADOStoredProcAlteracao: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_alteracao_estoque;1'
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
        Name = '@CAPACIDADE'
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
        Size = 200
        Value = '0'
      end>
    Left = 17
    Top = 89
  end
  object DataSource1: TDataSource
    DataSet = ADOQueryConsulta
    Left = 177
    Top = 73
  end
  object ADOStoredProcAtivarInativar: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_ativacao_inativacao_estoque;1'
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
    ProcedureName = 'sp_exclusao_estoque;1'
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
  object ADOQueryEstadoC: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from TB_ESTADO')
    Left = 791
    Top = 211
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
  object OpenPictureDialogEstoque: TOpenPictureDialog
    Options = [ofHideReadOnly, ofExtensionDifferent, ofEnableSizing]
    Left = 703
    Top = 99
  end
  object OpenPictureDialogEstoqueA: TOpenPictureDialog
    Left = 591
    Top = 107
  end
  object OpenPictureDialogEstoqueC: TOpenPictureDialog
    Left = 479
    Top = 59
  end
  object PopupMenuImagem: TPopupMenu
    Left = 807
    Top = 99
    object popAmpliar: TMenuItem
      Caption = 'Ampliar imagem'
      OnClick = popAmpliarClick
    end
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
