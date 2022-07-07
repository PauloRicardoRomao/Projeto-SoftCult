object FormEstufa: TFormEstufa
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Estufas'
  ClientHeight = 491
  ClientWidth = 964
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 23
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
    object PanelConsultaDBGrid: TPanel
      Left = 234
      Top = 30
      Width = 716
      Height = 430
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
      object Label11: TLabel
        Left = 15
        Top = 45
        Width = 54
        Height = 18
        Caption = 'Estado:'
      end
      object Label12: TLabel
        Left = 15
        Top = 97
        Width = 56
        Height = 18
        Caption = 'Cidade:'
      end
      object DBGrid1: TDBGrid
        Left = 1
        Top = 179
        Width = 714
        Height = 250
        Align = alBottom
        DataSource = DataSourceConsulta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        PopupMenu = PopupMenuConsulta
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
            FieldName = 'CODIGO_ESTUFA'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
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
            FieldName = 'DESCRICAO_ESTUFA'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
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
            FieldName = 'TAMANHO_ESTUFA'
            Title.Alignment = taCenter
            Title.Caption = 'Tamanho'
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
            FieldName = 'UNIDADE_ESTUFA'
            Title.Alignment = taCenter
            Title.Caption = 'Unidade'
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
            FieldName = 'NomeCidade'
            Title.Alignment = taCenter
            Title.Caption = 'Cidade'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 225
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
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'OBS_ESTUFA'
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
            FieldName = 'Situa'#231#227'o'
            Title.Alignment = taCenter
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
            FieldName = 'CIDADE_ESTUFA'
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
            FieldName = 'ESTADO_ESTUFA'
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
            FieldName = 'SITUACAO_ESTUFA'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = False
          end>
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
      object RadioGroupFiltro: TRadioGroup
        Left = 449
        Top = 11
        Width = 256
        Height = 105
        Caption = 'Filtro:'
        Color = clCream
        Columns = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clCream
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'Ativos'
          'Inativos'
          'Todos')
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 3
        OnClick = RadioGroupFiltroClick
      end
    end
    object PanelCadastroCampos: TPanel
      Left = 234
      Top = 30
      Width = 716
      Height = 430
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
      object Label1: TLabel
        Left = 72
        Top = 64
        Width = 76
        Height = 18
        Caption = 'Descri'#231#227'o:'
      end
      object Label6: TLabel
        Left = 72
        Top = 253
        Width = 89
        Height = 18
        Caption = 'Observa'#231#227'o:'
      end
      object Label2: TLabel
        Left = 72
        Top = 192
        Width = 54
        Height = 18
        Caption = 'Estado:'
      end
      object Label3: TLabel
        Left = 368
        Top = 192
        Width = 56
        Height = 18
        Caption = 'Cidade:'
      end
      object Label8: TLabel
        Left = 72
        Top = 128
        Width = 67
        Height = 18
        Caption = 'Tamanho:'
      end
      object Label14: TLabel
        Left = 376
        Top = 128
        Width = 66
        Height = 18
        Caption = 'Situa'#231#227'o:'
      end
      object EditDescricao: TEdit
        Left = 152
        Top = 64
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
      object MemoObs: TMemo
        Left = 167
        Top = 250
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
        Left = 264
        Top = 360
        Width = 105
        Height = 49
        Caption = 'Cadastrar'
        TabOrder = 7
        OnClick = ButtonCadastrarClick
      end
      object ButtonLimpar: TButton
        Left = 408
        Top = 360
        Width = 105
        Height = 49
        Caption = 'Limpar'
        TabOrder = 8
        OnClick = ButtonLimparClick
      end
      object DBLookupComboBoxEstado: TDBLookupComboBox
        Left = 132
        Top = 192
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
        TabOrder = 4
        OnClick = DBLookupComboBoxEstadoClick
        OnKeyPress = DBLookupComboBoxEstadoKeyPress
      end
      object DBLookupComboBoxCidade: TDBLookupComboBox
        Left = 430
        Top = 192
        Width = 224
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
        TabOrder = 5
        OnClick = DBLookupComboBoxCidadeClick
        OnKeyPress = DBLookupComboBoxCidadeKeyPress
      end
      object EditArea: TEdit
        Left = 145
        Top = 128
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
        OnKeyPress = EditAreaKeyPress
      end
      object ComboBoxSituacao: TComboBox
        Left = 448
        Top = 128
        Width = 145
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ItemIndex = 1
        ParentFont = False
        TabOrder = 3
        Text = 'Ativo'
        OnKeyPress = ComboBoxSituacaoKeyPress
        Items.Strings = (
          'Inativo'
          'Ativo')
      end
      object ComboBoxUnidade: TComboBox
        Left = 281
        Top = 128
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
        Text = 'm'#178
        OnKeyPress = ComboBoxUnidadeKeyPress
        Items.Strings = (
          'm'#178)
      end
      object Panel4: TPanel
        Left = 264
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
        TabOrder = 9
        OnClick = Panel4Click
      end
      object Panel5: TPanel
        Left = 408
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
        TabOrder = 10
        OnClick = Panel5Click
      end
    end
    object PanelAlteracaoCampos: TPanel
      Left = 234
      Top = 30
      Width = 716
      Height = 430
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clCream
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
      object Label4: TLabel
        Left = 72
        Top = 64
        Width = 76
        Height = 18
        Caption = 'Descri'#231#227'o:'
      end
      object Label5: TLabel
        Left = 72
        Top = 128
        Width = 67
        Height = 18
        Caption = 'Tamanho:'
      end
      object Label7: TLabel
        Left = 72
        Top = 192
        Width = 54
        Height = 18
        Caption = 'Estado:'
      end
      object Label9: TLabel
        Left = 368
        Top = 192
        Width = 56
        Height = 18
        Caption = 'Cidade:'
      end
      object Label10: TLabel
        Left = 72
        Top = 247
        Width = 89
        Height = 18
        Caption = 'Observa'#231#227'o:'
      end
      object ButtonAlterar: TButton
        Left = 264
        Top = 360
        Width = 105
        Height = 49
        Caption = 'Alterar'
        TabOrder = 6
        OnClick = ButtonAlterarClick
      end
      object ButtonLimparA: TButton
        Left = 408
        Top = 360
        Width = 105
        Height = 49
        Caption = 'Limpar'
        TabOrder = 7
        OnClick = ButtonLimparAClick
      end
      object EditDescricaoA: TEdit
        Left = 152
        Top = 64
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
      object EditAreaA: TEdit
        Left = 144
        Top = 128
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
        OnKeyPress = EditAreaAKeyPress
      end
      object DBLookupComboBoxEstadoA: TDBLookupComboBox
        Left = 132
        Top = 192
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
        TabOrder = 3
        OnClick = DBLookupComboBoxEstadoAClick
        OnKeyPress = DBLookupComboBoxEstadoAKeyPress
      end
      object DBLookupComboBoxCidadeA: TDBLookupComboBox
        Left = 430
        Top = 192
        Width = 224
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
        TabOrder = 4
        OnClick = DBLookupComboBoxCidadeAClick
        OnKeyPress = DBLookupComboBoxCidadeAKeyPress
      end
      object MemoObsA: TMemo
        Left = 167
        Top = 247
        Width = 466
        Height = 89
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object ComboBoxUnidadeA: TComboBox
        Left = 280
        Top = 128
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
        Text = 'm'#178
        OnKeyPress = ComboBoxUnidadeAKeyPress
        Items.Strings = (
          'm'#178)
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
        TabOrder = 8
        OnClick = Panel2Click
      end
      object Panel3: TPanel
        Left = 408
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
        TabOrder = 9
        OnClick = Panel3Click
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
        Left = 45
        Top = 43
        Width = 134
        Height = 121
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000820000
          008208060000008A0310FD000000097048597300000F6100000F6101A83FA769
          00000F414944415478DAED9D09B81C4511C72B0144545488A89CBE88827820E2
          2D20F14401F1001483C1A0A88810C48F4334C843895C2A97A868540C04510EC1
          2897411E20207E683844F10819358044888A04258258BFE95EDF3A99D99DD99D
          9ED97D53FFEFAB2F2FBBB3DD3D33FFA9AEAAAEAE99F4E8A38F8AC130C9886000
          4604430C2382218611C110C3886088614430C43022186218110C318C08861846
          04430C2382218611C110C3886088614430C43022186218110C319A40844D555E
          A0F25C95E7AB3C4B654395F554D6C8F8CD3F54EE56F983CAED2A37ABDCA6F26B
          95BFD77D422130D188B0BACA0B55B653D951E50D19C7FD47E53E9507541E5479
          846BA1F21895B5DB240D91CAC52A97AA2C52595AF74997818942849D5466A8BC
          2BF1F9629531951B547E29EE2642809539DB850C1BAB6CA6B2A53882BD566572
          DB316889792AE7F8F68712C34C848D543EA472988CABF8BFA97C5B6581CAF5FE
          FF21C034F37A95DD55B66DFB7C4CE5F32A3FA8FBE214C53012611B95D92A6FF2
          FF5FA672A2B89B7F5B0DE35957E5552AFBA8BCD57F861D718CCA492A0FD579B1
          F2629888B085CA17649C0063E22EF6E5750FAC0D4F17A7A546DB3E3B40E58B75
          0FAC1B8681084F53F9ACCAFBFCFFCF1077617F5EF7C03A604D95BD543EE3C78F
          4179A8B8696B2031E84498A9F24DFFF7152AB3547E55F7A00A028D708AFFFB12
          953D54EEAF7B50490C2A119EA4F2659577ABDCA572A0CA79750FAA0F4C519923
          6EDAE08263649E5FF7A0DA3188447899CA4FC4790218811FAB7B4025024377A1
          CA6355BEA2F2E1BA07D4C2A011614F95B3FCDFC404BE5BF78002E0F12AF3C579
          1857A9EC2C2EB0552B0689081884878B0BE9BE46E5CF750F2830F65739555CAC
          632B71E1ECDA3028443841E560951FA9BCB1EEC15408B4C285FEEFA952636472
          108840D00563F074957DEB1E4C0DD85A9C2BCCFAC788CA9FEA1844DD44C01024
          247BA638BFBBA96075F416716EE55354FE5DF500EA24022E14C6E0452A6FAB6B
          1003043C0ABC2596BCB7AABAF3BA88F00C71F32106D2481D031850106C22FA78
          B6380FAA32D4450408B089CA5355FE52C7000618ACA71CA4F25E71CBDB95A00E
          227C5DDCBAC1EB547E5C75E7430272279E272E22B9BC8A0EAB2602D94337890B
          1ACDA8B2E321030B55C451B019B6ABA2C3AA89C0C9311D4CEEB7A106E0A3E242
          EC18D21785EEAC4A224C17175A6521E99CAA3A1D72E04E924BB976BF0D754395
          44204F108DB049551D4E006047B14815FCE1A98A086414FF505C56F1C22A3A9C
          40F8ABFF779D909D5445843BC4ED2308AEE2262076533957E52512302BAB0A22
          B42C6052B54E08DDD9040537E96A95ED43755005118E159772CE3AFC83A13B9B
          A0F8BECA5B545613B738553AAA20C20A716BEE1B86EE68028374F96BC5D95A97
          84E82034119E282EC79F7CBDD9213B9AE0C0854413040BC4852602E966B83D44
          146F09D9510370ABCAE6E2F667968ED044203246848C3CFFBCFB0D0DE9685DCB
          49211A0F4D04B4C0FAE25C47437F68E56F0C2511D86E7E8DCAB4909D3404188C
          B890AB87683C341168BCE969686501FB80D5C820DAB50A2210443A3464270D01
          1B6CD1089B8568BC0A227C52DC9E05437F78B2B8449EAD43346E44181E109361
          23F04B43345E0511D8BD746CC84E1A026C833171296CA5A30A22D86253391811
          672C6E14A2F12A887088CAE74276D2103C53DC7AC3FA211AAF8208540DF954C8
          4EFA44FB53C65E826BEB1E5006A6FAB10659BCAB820868834302F6C1122D891B
          67F6F8FB7F8AAB570028D377718FED5077F14E95F7073ACFA127C2712A1F0FD4
          3E1B68A9AC4A1A17DEC9553DB41189DB7905289977450F6D1C2F4E65E3E2B1A3
          FB941EDAE80623420666F876B1A209BFB27186A29845379046D21F11D8C67F9A
          CAB3C5258ED01E492437957CBE4684143C4EDC93B79FB84DA360AEB85D4145A3
          9891F44704823CC7F8F100B6F6937DBC7BC9E78CE68308436B2C124338BCE476
          A954F622192FB9079E20CE5EC0E0BBBB405B91F44E046C0AD65192A57F4920A1
          1ACA0D259E33A58009314F2DB1CDFF6158D71A4E1697D13B2FE573F60D7EAD40
          5B91F44E0432AFC8C03A3EF1F9512A0F8BF398CA0249C0578A2BFF5B3AAA2002
          F3E7FE25B7FB25714FDD7589CFD945CC3CDD1EB760EE66332973F6BF52DA8AA4
          772260973035CC4F7CCEF440A5D803FDFFD9E2B7A5EF871AD1CB7A3867169DC6
          549E53F2B58C510511A8927A400FBF4505627DF364DD2BCE35235D8BFA84C425
          783AAE49FC06D76D1D7F2C05B950A710832A24CCE187A5F413496722F0DB3354
          D652B9475C6A3E55DF29048A5BFC5B59B5A2EA7BC415BBB8515CC9E00DFCE7EB
          FADF26A7923C682C1148CBA2F4DC89FE22703137F7FF7273D9F891ACADF06971
          5A81629D5468FD8D38F260D9339FA7F9F8917426C22EE26EF827C4A967824FDC
          0C4846B40FEFE5C6C46FA8108B5682C818B34C57646BA115B097DED9C3F5682C
          113004B9D847253E7F8738AD808BD65E0E1F922CF47D5D98F8CDDEE2DCCC8353
          FA89A433115E2E8E74C9A0183715E3EDC4C418591C425BB1E27A76E237BB8A7B
          DFC3477AB81E8D2502EF41C03D9C9EF21D6A977919370D55CD1CCC4DA19AE959
          29C7E3C2621F1C99F25D249D89803AC7CEA10CFF8AC4774C43CCF95437697908
          DF1367BBA42DB4513C0CAD92364575436389406E1EF59731BCD28A6F526286DD
          53D4374615731377C9680B0DC1B4F18B94EF22E96E2C5EA0F2557161E424981A
          B0097610670F10339996310E888A8BDB4B18BBB14400A3E2D601D20252187168
          056E00D63B37E9DC94E3B0DCB1E0B36A3846D29D087BF9EFB2722FD97DF46671
          9B78D88892968843C18B3DBCF48246126144DC134C34EDC52A9789AB578CE185
          11D6DAFF47D006A2104CC20E68B9874C29AF10B7FB9A1B40CC01C3911B947CCB
          4B24D94458C7F7475897A98A9549B6EF61F9A391EEF5C7114FC088648A3A42C6
          2BA8A22D3054D15C6C575BEAC78266B8B2E035692411381E6391F803F332C535
          30065F29EEA6311570533E28AE622BEA9672B6B89C0499200DAE25379D0A6EB8
          7E187BDC843989BE22C92602AA1EBB82B99DEA25100272420A8C4FC87A811F17
          76016E2B84405BE1524EF6E358E4FB614F025E0D9B7D3E50F09A3492083CCD58
          EA69563E76005301F5027897C34ADF3E7EFD1295A3257DF56FB6FF3E19FC8924
          9B08237E0C6901317207998EF6F4FF72AEDF11A7FA2120EF984A9BD2704327FB
          711641238980A1F80D714FF13D29DFEFE0DBC44267B1896A2C680354FFFC8C36
          D983890FBF24F179249D6D049E7896BBAF4E69132D45381B4F05CD849642FBB0
          23E9B88C71E0529E26C513601A4904408D6642B159179475059E3EE66C72FD21
          4E5652082B81AFCE1847249D898026E1266485C979F906D307C12D88C1CBC676
          CE38167B673FE92D79A5B1442082C84D219CCC2B7A990230F8EEF4DF73F358D4
          617EE635BF049F30C650BBFBFA0B8611B9DCF7CF53DD4B8819FC4C9CFB483899
          797EB18CBF0116437054DCCDA7CF69329E20430C849807AF2682B0D83D0BE4FF
          574DF3A2B14420C48C4B862770976F8B3C04B2802000861F53035E01215C2A9C
          A3215A390A10E011DFD64AFF3D419FA4FD10496722E08DE0364200C2D6108DD7
          0C1168C26B61D109ADC50A2B15612006F60BC4E32DB1CBFC385AAF1DC6F085CC
          4714BC1E8D25028617B90C8BDA3EE309E769E7A2E38E7153B8B9780C680DE673
          8CCCB4A71A2B1DAB7F34F179249D8970BE97F67031846CBDCE8F8823F603C423
          41E5743F26A694B929E3404B505D6EEF82D7A3B14460DEA5B45C9A0740FC9FF8
          3E4F16513D023AC41398AF9764B4C78DE4C9BD39F179249D8980D7806A4F7B82
          71254FF56DE0CA2EF0C762B4669511FC963877B7E85BDE1A4B049E1A9EFE5D33
          BE6799998B89DA277EDF0AF8A401979350F44E29DF45D29908AD9BBD6346DB78
          2BD7F973258D6C963F3E0D24959C2CD96FB1EF84C6120110939F2FD92E211795
          0B8FA5BE43C631B87324A5106A4E5B2B88A4BBB148900A43758EA4A3658CFE51
          3AA7928DF973299241D542A389C013848AE5695E90F27DAB44ED4C712A370996
          8A2FF363C8BA899174270285C4D1364767F4435E029E44D67B2AA97B4484F1F7
          D2FB0B391A4D0440997A8241188FE406265722C9602276CF8D260C8C41893A7F
          BBB829812495933AB41F49BE54354845E08A4AE9A332BECED002C62AEB07782E
          780F24CF8C88732B312C499099D9C775683C1100B1FB5171717C5CB0966B88D7
          80B148F60FAA1B126033E0B3E37262B5777B6B5A24F97316D99A8E2138226E87
          14514F6E3A4F3C4F3AC62DD3D05AFEDC59F3B84F9C37537491290923421B50D1
          DC2C9E782AB5A101F00470D508DB4EF19F15793D5024C59357095EF1A43325AC
          E1FB64A7159E090130B29420C8EF541E2AE9DC8D0839FA18955553DAF22292FE
          B7BC01340453C76E81CED38890A30F34C29C1E7F1F49794420312654E1302342
          02848A89CAB10C4C848F9A42EC6C8AC4E51E105B38AF407BFCAE172210C02288
          C4DBEDB11D88516033FC549C7D82B7B220675B79604468038198CB731CC70698
          BC99C291142702C62B377CD32EC761AC164D40C98211C183C5265CB6D5721ECF
          D2731ECD10497122B01A99B7A81544989BF3D84E302278600714D94BC8CA5F9E
          7D829114230211CC4B253FCA7ADFB311C183AC9F225BCD09F07003BA15038FA4
          1811700F8B7A286451DFDEE7F91B113C48062D920ACE2E6502500F74392E9262
          441895F48D329DC016FE7E0B6718113CC80B2C12A727FA48E0A7DBEB83222946
          84A25314203C7D6B9FE76F44F0302218116218118C08318C0846841846042342
          0C327BA617389E256188B0A2CB71911811868A08BDC411B878656B046208454B
          0AB31EB2A8E06F9230227890E7B74F81E3C949E0E2757B736A24C588C0DEC5A2
          2B9DE42D2C29F89B248C081E6C8CBDBEC0F16412CFCA715C24C588C0EA679177
          58E60D75778311A10DEC789E99E338B401D9C4DDEC031049F145A722866B3F39
          0EED30222470A46F6F4AC6F7AC3852836069CEF622E92D1F8115C54E9B59C99B
          24857E5EBEE6BAC28890022AA1F09AE1357D1F93FCBF24A62C2ED85624BD6728
          B1E36A5B3F9ED63800FB1BA8DBB4BCC4733622044624E5A4AA85861121302219
          1E229012BF4588C68D08C345843119628DC02EA3834276D227F0EF47FCDF9D36
          D2D60D36FA52EA77E3108D574184ACFD8083823B647CE3EA36B26AC5F7410144
          203AB941BF0DA5A10A2200B69D4D0ED9518F63C3CA6F7F350E594DF70FE858F1
          90D69371CFA454842602BE7C907710950836A63CECFF5EBBEEC174011B8087F2
          553E86218111C110C3886088614430C43022186218110C318C0886184604430C
          2382218611C110C3886088614430C43022186218110C318C0886184604430C23
          8221C67F01073A2E48F03C7E260000000049454E44AE426082}
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
  object ADOQueryCidadeC: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from TB_CIDADE, TB_ESTADO'
      'where TB_CIDADE.EstadoCidade=TB_ESTADO.CodigoEstado')
    Left = 567
    Top = 203
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
  object ADOQueryConsulta: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select*, case SITUACAO_ESTUFA'
      '         when '#39'0'#39' then '#39'Inativo'#39
      '         when '#39'1'#39' then '#39'Ativo'#39' end [Situa'#231#227'o]'
      'from TB_ESTUFA, TB_CIDADE, TB_ESTADO'
      
        'where CIDADE_ESTUFA = CodigoCidade and ESTADO_ESTUFA = CodigoEst' +
        'ado and '
      'EstadoCidade = CodigoEstado ')
    Left = 169
    Top = 41
    object ADOQueryConsultaCODIGO_ESTUFA: TAutoIncField
      FieldName = 'CODIGO_ESTUFA'
      ReadOnly = True
    end
    object ADOQueryConsultaDESCRICAO_ESTUFA: TStringField
      FieldName = 'DESCRICAO_ESTUFA'
      Size = 70
    end
    object ADOQueryConsultaTAMANHO_ESTUFA: TFMTBCDField
      FieldName = 'TAMANHO_ESTUFA'
      Precision = 20
      Size = 3
    end
    object ADOQueryConsultaUNIDADE_ESTUFA: TStringField
      FieldName = 'UNIDADE_ESTUFA'
      FixedChar = True
      Size = 5
    end
    object ADOQueryConsultaCIDADE_ESTUFA: TIntegerField
      FieldName = 'CIDADE_ESTUFA'
    end
    object ADOQueryConsultaESTADO_ESTUFA: TIntegerField
      FieldName = 'ESTADO_ESTUFA'
    end
    object ADOQueryConsultaOBS_ESTUFA: TStringField
      FieldName = 'OBS_ESTUFA'
      Size = 100
    end
    object ADOQueryConsultaSITUACAO_ESTUFA: TBooleanField
      FieldName = 'SITUACAO_ESTUFA'
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
    object ADOQueryConsultaCodigoEstado: TIntegerField
      FieldName = 'CodigoEstado'
    end
    object ADOQueryConsultaSiglaEstado: TStringField
      FieldName = 'SiglaEstado'
      Size = 100
    end
    object ADOQueryConsultaSituação: TStringField
      FieldName = 'Situa'#231#227'o'
      ReadOnly = True
      Size = 7
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
  object ADOStoredProcAlteracao: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_alteracao_estufa;1'
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
        Name = '@DESCRICAO'
        Attributes = [paNullable]
        DataType = ftString
        Size = 70
        Value = '0'
      end
      item
        Name = '@TAMANHO'
        Attributes = [paNullable]
        DataType = ftFMTBcd
        NumericScale = 3
        Precision = 20
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
        Name = '@OBS'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = '0'
      end
      item
        Name = '@SITUACAO'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = False
      end>
    Left = 17
    Top = 105
  end
  object ADOStoredProcAtivarInativar: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_ativacao_inativacao_estufa;1'
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
    Left = 17
    Top = 241
  end
  object ADOStoredProcCadastro: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_cadastro_estufa;1'
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
        Name = '@TAMANHO'
        Attributes = [paNullable]
        DataType = ftFMTBcd
        NumericScale = 3
        Precision = 20
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
        Name = '@OBS'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = '0'
      end
      item
        Name = '@SITUACAO'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = False
      end>
    Left = 17
    Top = 41
  end
  object ADOStoredProcExclusao: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_exclusao_estufa;1'
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
      end>
    Left = 17
    Top = 177
  end
  object DataSourceEstadoC: TDataSource
    DataSet = ADOQueryEstadoC
    Left = 399
    Top = 203
  end
  object DataSourceEstado: TDataSource
    DataSet = ADOQueryEstado
    Left = 487
    Top = 299
  end
  object DataSourceCidade: TDataSource
    DataSet = ADOQueryCidade
    Left = 743
    Top = 299
  end
  object DataSourceCidadeC: TDataSource
    DataSet = ADOQueryCidadeC
    Left = 631
    Top = 243
  end
  object DataSourceConsulta: TDataSource
    DataSet = ADOQueryConsulta
    Left = 169
    Top = 121
  end
  object PopupMenuConsulta: TPopupMenu
    Left = 224
    Top = 16
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
