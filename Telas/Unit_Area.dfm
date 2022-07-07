object FormArea: TFormArea
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Terras'
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
            FieldName = 'CODIGO_AREA'
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
            FieldName = 'DESCRICAO_AREA'
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
            FieldName = 'TAMANHO_AREA'
            Title.Alignment = taCenter
            Title.Caption = #193'rea'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -16
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 105
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'UNIDADE_AREA'
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
            Width = 210
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
            Width = 62
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
            FieldName = 'OBS_AREA'
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'CIDADE_AREA'
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
            FieldName = 'ESTADO_AREA'
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
            Expanded = False
            FieldName = 'SITUACAO_AREA'
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
        ItemIndex = 0
        Items.Strings = (
          'Ativos'
          'Inativos'
          'Todos')
        ParentBackground = False
        ParentColor = False
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
        Top = 264
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
        Top = 129
        Width = 38
        Height = 18
        Caption = #193'rea:'
      end
      object Label14: TLabel
        Left = 376
        Top = 131
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
        Left = 168
        Top = 264
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
        Left = 117
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
        Left = 248
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
        Top = 136
        Width = 38
        Height = 18
        Caption = #193'rea:'
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
        Top = 264
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
        Left = 120
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
        Top = 265
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
        Left = 248
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
        Left = 43
        Top = 43
        Width = 138
        Height = 121
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000820000
          008208060000008A0310FD000000097048597300000F6100000F6101A83FA769
          000014F54944415478DAEDDD0BBC6D455D07F001D308D4B846F982BA65DA4332
          8D324CB1AB616A914AF942B190324AC9CC82124CC908935432150D14AF954985
          A295641979532BD3E825DA43859B658052F82240409AEF9E19EF72DFFD588FBD
          CF3EDB33BFCFE7FF39E7ACBDD6DA6BCDFCE63FFFD7CCD9E7965B6E091515FB54
          2254402542C508950815235422548C50895031422542C508950815235422548C
          50895031422542C508950815235422548C50895031422542C508950815235422
          24BC24CAD3A35C10E531AB7E9855A012218417443939CAF3A33C2BCA2BA3FCE4
          AA1F6AA3B1D589F0CC282F8AF283512E8C726494B785448C5F5BF5C36D24B632
          111E17E5FC283F11E5371BC77F2CCAB9519E18E57757FD901B85AD4A843B46B9
          32CACBA2FCD484CF7F3DCA4F473924CA7FADFA6137025B9508FF19E59A28F79A
          71CE7BA27C7D943BACFA6137025B9108E6FE9F8B72AB289F9B73AEC6D919E5C9
          AB7EE86563AB11E14BA35C1FE579519EDBE2FC1F8EF2DA28DF1CE55F56FDF0CB
          C45623C2D921B986FB74B8E6C3516E1DE5AB57FDF0CBC45623421F557F7894BF
          89F24D51FE75D52FB02C6C252230FC3E18E5DE51FEA9E3B59F0DC9933879D52F
          B12C6C252270135F18929DD0156F8F72DB28DFB1EA975816B612117646D91165
          7B8F6B7F35CAF151BE6AD52FB12C6C2522BC25CA5746B96F8F6B9F135280E92B
          E69C77609483A3DC39A4A0D5D746B936CA79513EB1EA0698857522C27E515E11
          E551513E13E5AA28FF1D52E48F6BC790FB40948F4EB9FEAFF375DFDBE3BB5F1A
          E5D12175708140D383A23C3CCAB747B967942F19BBEE53516E1F92B1F95DAB6E
          C0595827223C36CAEF45796348238F9ABE539483C6CEBB39CABBA3BC39CA3951
          3E998F4B26DD2E242FA02BDC0B111F9A9FE3E7A37C5BFEECBA28EF8BF2772119
          A1FF1EE52321119536D819E54742379775C3B14E44787C94DF097B8F3AD0C1D4
          F0B746794094234272F7E0F5519E16E5D9511E12668795A7E1E290C8279EF02D
          512E89F25B51FE30CAEE39D75E1492B6F89A5537E02CAC1311EE17E5AF427203
          2F6B71FEFE216516CF08C95370CDC7433F8DE03A9AE7AD514E0C29C8D416EF8F
          F2E99EDFBB61582722980AA85BF3F2AE8ED7B2FAA973B9855B75BC9691F97D51
          1E199206E80A21ED3785A4D1362DD6890870439493A2FC468F6BBF27CA9F87D4
          998F6C79CD9F85349DD046EFEEF19DB7C9CFAC0CEEA51BDD585DB06E44903E36
          3DF41D5D0F8CF29721B9733F3AE7DC1747F99928F789F28F3DBF8FADF28E2877
          8FF2A18D6EAC2E58372218D18CB53B0EB8C713A2BC2ECA5121A9FD49281DF8A4
          900CD4BE784D94E3C226F71860DD8850D2C20744F9BF01F77955481A615A4D02
          17F45D51BE7BE0F36ADCDFCECFBDA9B16E44D837A44E3A3324E36F08BCF8A429
          C27CAEBC9D4BFA9901F797EE96F6168DFCDF55345617AC1B116067584C80A6D4
          258EDF471088CBD727145DE09E344D1B5B6453601D89005744F9D390E6DFBEF8
          B290A6171D75DED83161E8B70DB8370F43ECE23EAB6EA8B658172230DE58DEA2
          7BDCB1E3428AEF9F15E53FA25C1D528E41D0E8231DEEEB1AC9A07BE6BF55358B
          4276D1362286825CF210925A7221BC933F88F2CE9022A1C2DCB4CCDFAEBA21A7
          611D8860ED81350854ED8D592E0FC956B847487683C666F8E940011C499E3784
          348D5C3BE3DEA60653C48E7CBD50324FE2A819D7B01D681149286434F235E24D
          F9BB3D977C8364D321F9D96E9D9F73D3AEA25A07222080C210099F9BA69C2370
          63347E6394FB87342A8B5AFEC528A74FB9EE6E616FFFFEA921653927A1544083
          D1FDC721C535643E69A51BA75C876434C2B630CCF55D1AD6810846A891D7B501
          35FAA9517E36A440D4FDF3CF2674900E3CB0714C5AF9AD63E7295C7D6F4861EE
          E767F974C7E791A594A83A61C26748C53679D0D25B730AD68108124746A834F0
          0D3DAE377F8BF5B303E40CFE64EC7323BA592B305ED35896C659F07274483510
          5D415B7D2CCA23A2FCD1D8676A28D453984A90A16DF87BA1580722F0C38DDABE
          499F029E81EA6573FB1B1AC7AD6F3CA6F177937046AF79DD5AC81F1FF0DD42E2
          D2E1A6B0E6F4A1CE41FABCA4C611E1D561F232BCA5621D8800D4AA1CC1C306DE
          47A1CA53424A09170BDE52F833F2EF6C105A0311BE2EA410B165F3BF30F07B85
          C6D92F07378E5989AD9876DFC6B1B2269316FAFDA5B5E604AC0B114A1A791131
          7BAA9957C08864233C382477AF09C4135390317CFA02BE53233F23A48825289A
          31254C2AAD17C31023319D5CBDE0769C8A7521825272C619F57CEE02EEA7A3CB
          1450DC3F246307D82BC168A435BAD62E4C022F83B7B16FFE1EA08D64344F9872
          8DFC04223E7AF14D3919EB42042805228BD00AC500742F01A1CBF3EF620A52CF
          1A65DC96E80BF762AC1E9DFF66BC9A2ABE214C377E91D4621C5EC486A4AFD789
          0802330C2D69E1272DE07E5E5C91CB0BC39E916AE40A0289592C6239BC69481D
          6573DDA429890733AFA682612C6ABA2186E33A1101B687347AD50DBEBC711C49
          6EEA782F194C3186324F97A941B2697C179571EC08892C2A9959FD65BD03AB5F
          3859E85ACDA442DA73F3B3EA54E16CDE8B517E46980D9A89067CC84634ECBA10
          81DB25A7AF939E928F69549D671E4704A15D1A4398D75A07717EA36AD7947B0A
          22D92C438C826B7A977C5C470A468D370C5BC2421723549859A70B505D9E9FC5
          F9E6F52F0FA9CC1E39C41C14BDF21614C00A44F11E18836F9CF3CE3F1492A13A
          A926C2D4B13DCA5D430A7221F2078634F0BA10812FCFB09243E04696CE52CCFA
          3F2111403C5F0751EDAA98849875086258BC3AA9667057480D7D653E177686BD
          574B1F1B9201074AD890A7EDDCEDB9741837D49A08718B73F27BCC82BD9C6804
          C6ABCE16EB383CDF0BD90C02063442F242783E6DAABB27625D88A0E1AD3DECBA
          8055038913B029A86661E6E64A287985978F5D639FC50B1A7FD32A3F10928A77
          7ED729A840049386500287C0F3E204888038FF16928BABB8C5A8B7A682065052
          5FDC4B1E88B8C45FF46DE0CD4004AA5DF0E68333CE297E37C3EB9F7B7C074B9D
          97705848A3FB75F938CB7D7CCF035E845436352F8B48ADDB76EFE201EF580A55
          76E79FA6B7799D56229E34912D00A72DE5A71D24E54C2597F77EC04D4004C6D3
          8E903286B33AF9E6DC2043F628289B6B9AEB7F391FD378DBF3EF54EBDDF2EFA5
          BC4C9D419F1C4713B6EAE3ED0864B10D84961F3BE37C696E7595CD08E8347C67
          4886ED61B98D7A61D544D819524750934629324C2B2C79737ED9835BDD793A4A
          2DA1EF664F58EF50024A37E7EFE1EEC97816237428108C41C9CBE096B26B8AEB
          3A0ED3C0C5F9FB2F69716FC6ABCAECFB0D79C05512C1BCCD102A81162A5B2DE2
          3477E9D090169B9A467AABC00C8D67910CF5BC2BCA692145FE8C3ED3088B7F51
          5BE594E766C05E9A8F7159FF212403EF9D8D734550ADA0660FED6C797F6B2B79
          2F27B43C7F225645040D4D555299CD0A5FD63463EE97A65CC74AFEFB30BCCC1C
          7432C34DD8BA3482F2322351E39EB8A077D549ECA0BB8C1D3F25A4CE6B2E8E65
          17884BB41DDD5C5346B0EC6597F5987B615544304F4BAA9C3476FCF6B9311853
          574CB8AE848617B17288FAD788EA14790AA5F0853B76C082DEB3D45234B54113
          0C60535571253D8FD0F67B5BDE5FE492E730781FC855118171C32678C784CF2C
          5F1710DA39E5DA5D21698445E41C4A5ADAFA85DBE663DCB6572FE0DE228F2A9D
          2615A314B05544208F0B29664013CEDBA7893743A322990A2C7B408AABF42998
          F93C5641040DCE7A3F25ECD9C4A209868FD179D6D871EA952AE483F3E5B95387
          0D7C96523954C0A013BCB9B1DFED3E0F7513A5124A678B0508688D37F6E1F93C
          24A0E918AA93D2DEC7E773EE1AF66444D91E259670607E669A76579F075E1611
          D4FD2941E776A922660730F0DE9E3F97E5939E9D149C794CBE4E9084E1686E35
          6518394683B22E2359A7B117C4F3AF1BF0AC65C53358CBD0676B9D26B8B8823B
          8C5141A827E4B6E0EFD384E3012CDAA84C45CE7B57E333D384516F7B3F7910DB
          FFB06D84AB4543C5249059A0CD946A703CADCF432F8B087CE04BF3030B051B65
          D82C04AC23B1FAD953AE95957B4E7E69EACE68BA2CBF388220111F9C7AFC706E
          609EC79B7A3E2B97F5C2FC3B523CB4E77D1E9FDF5BA7EAFCD78F7D2E3A794E7E
          9F1D8DE3F20E857CCAF34B604D2089574543B499AABCC3CE90B44A672C8B08A7
          E617198F09508508A0B18DF071152C99C250E2523124C7D7248821200903ABF8
          F7BEE7D87C8DD1F0BE8ECF2A255C0C398DF8A80ED7223602F030EE95AFE716CF
          AA7036A269B0526E5F96DFDF90DF1FCA3F11D91E52CC611E68CDF373BBF6D28E
          CB22829CFBA561CF481B87BCBF4E3D66ECB8750234C1B414AD5165AE1C5F2422
          28642E36A22C37A382E508DA2C3EDDD6388FEBCACAE7F27D2C1F2FABAE11B764
          12CDCFF2160C359DC783F9FE9042D26D609AB4F9D669210D9AD20EBE9BE6E43E
          4A82CDDB3DBEE059B95D8E6879FE5E58161118820234A7CF3887CF4E1597D233
          235DC3CE2AD890C6BD76C67DCDF52CEFE2879B4E84AD75946946C71A792286A6
          14F32BD7AE14C5CA546AFCFDE7BC9F298FE652DCCACE61EF3CA0631BDD929F89
          9BCCE83500D83CB40B7276D997D17462209CD5E19A2FC0B288203EFF2B2159BB
          D32090C2702ACBCB680FC19D8FCFB8C648B74CEDFA39DFCF2661B09A7BC5E279
          216A1AA4849B6E2715AE23910271CB7237C6291B645BFE5D2389F821D25513BE
          9F2610847A468736521463AA54218DA82FC9CFE33BBB04B34C450A7B0FED70CD
          5E580611184B8A2F184E54E059B9F126A94D9B5E20CC75B9612635242D61E48A
          CB7F2C379C7BF54904315211E2967CBD9F22798C4E04514BD8B722882BCCB757
          E7C876A0754C2BD3EC05DF67E5132DC04EF8686E27B6C13563E70A45EF0869F0
          68DFCF853D24961AE7A1988E3FD5F3D9174E04A34811C915F9212575AECE8D72
          9B7CFCB4B0674409311F9F3F97857C6D3EEE3A06D4B67C1F46A5640DE393CFCC
          5D3A21CCD70C6D201154923B923D4776BC9E5D62549E989F4DBE424795D433D0
          24DC421E4F93C027E7EBBCDB0161EF45B222A95CD17D73DB954D3CFDCD953EA8
          71BF43F3FD5FD5A711164D040F267072CC84CFC4F0959B99BF7904BBF2CB975D
          49A86F239E2BC8B3603FF08DC7BD008DF68ADCF89F5DC0332B7F2BA9DE3E4440
          5E5A44A719C9FBE59F08CCD628994C59C543F2B397B9BC90D0B90643330AC9AD
          3C349F4B63CC331C456A4D7147851E58C6D4C06861FD5F34E5730D2DBECF3FD6
          D9586E4E378210C87CC71DBC74CAF5B488306C97F97816861241889A37F38816
          E73E2CBFBB69A024CEFCCEFD2BEEE3FEF9180DA2D8A42DD9118846794BCBF3BF
          00CB20828EBC4398BDC79114AF20892090290009B87DEC01C6DD3533AED590A2
          8EBD54E0040C250215CD153412DBA6C77932ECA213731B20026D5842CD9EE7D8
          0ECF60600856F5DEA1651944E0679F995F64963AD3082270E63C5E86E821465F
          34E31AE7711D17B92FD1502280D0B4FD0FBA6829EEA78E635C8A94B27F4C2325
          F7D00534303BA4F7EE6DCB721F157E088FB2F01976A28018DFAC4B947CA2E605
          62A8565E41332DEDB868DDB6FCB711C440A43914B07C322C068B20C28E900A5E
          0FEA700D830F094C8F8C3C1DB93BA4A05097025971101AA6D858BDB00C2288B8
          8907A8F4314AAECF2FCD87470A39F833F3B927357E1748B20D3F35F7BCFC5265
          27120FB95FBE9E07213E70FC90176F60114400012153C3133B5C53F21CD7E7F7
          6B6EECD516DAC6807BC1904658061174AEC291F1FD04D80147E4E3468EBC3F43
          91314463B09A65DBB854AF9CD320FC6F81A559B6445B94FD17A0CB3ECDE360F0
          8A47F87F922FEE701DCD2668259076E7D0BE46D2F731A865741F37B411964184
          ED2159D2A7CE380709A8FEF3B318D9DC244431D2AF9A712DE3921BF6CC81CFC9
          96619CCA5394CA68053154BCD0B439FBFD59DA764E29BB7F4D981D556D422088
          0694347B60CB6BD8573429D775219B732DCB46102E95869DB5A3B9D12FAAA8D1
          C5E98D0CA5E4F346B951AB14BD6D395713A61D239EFAE7DBB759F68E1C16A7C8
          2CB2F0E765F7248B4C3134E029617E7ABCC412B4D5AC5A45C12AD3E793F3EF12
          4DF396CDB5C6B288E081A9ABA3E79C679A301A11807179E19CF325A634F4533B
          3E0FE39245FDE081EF85B4825C5CDF796B0DCDDB6C00C416147B4FBE86F62BD1
          41A1686EA7C41B63510C4058DA7459FEB704DB81C17C603E26D0F4A281EFB117
          9659AA668E6704CDEA3471FECBF2CBDF2ECC76378DAE2373C3B5DD905BB513AD
          73F725BC9F78067B605EAA1B0119B75C4331079D8C043A9977A093E566785462
          01E67E3603E35A90E913F93353C7D2F64A5876CD22756A7E553072C594731858
          8CA469A95F5E087B40904AC7B6D94E86317A763E7F99503422D17441CBF30FCC
          EF510A65CBA2179A70A5FF096E238A57E50D044EB856CAB64B091B37901660F0
          08A098F3D809886334C838B2E84B9D625B7528D47B5E98FF3F1A178921BBAE09
          35EF0A290B39B418B73736AA8A59B0838AA41EC5024A768E6A2C656B656B7C24
          4012A30D69BA6C8E2DB2D7BB38632084BD8F0CED4ACB9A2815CF5B82084D8817
          50DD3A9C0610523E3C4CFE377E5D20F47CEAC07B0CC5EE903C932EBBA16D5922
          8C635718BE60854178CAAA5F2443E6906B7A65CBF3A5B085992FC9D7AD049B81
          0822633B427F2230445FB6EA9718C3EE900A56DA2C94A105642FE7C511968ACD
          4004E5613402EB9B9BA78A9765CDC5624B70CF781C8C4DB907EB02CAF2AEB284
          7C33C272B78737FE66FFDC238B0D3AA49E4D91A2A434010FC2C260EB1F3F94DF
          7511ABB15B6155449031537421CC6C5D81A0495B8DC0C0A4467785146A5DD482
          D5654045B510B594BCF0F9B68ED7EF0E4963724F2FEA786D276C341174BC64D1
          866C19F745069A905B6C1A1CF21FEE2662A38880006AFF776CC4977D91C33469
          8190CAE545ECE632C2B289209286C15D72F415ED20222B88D57B27B526964904
          EA5FDDC09D86DEA862264E0BD37798698D6511416E60E119B28AA96048CAABF4
          B61D9641040513270DBE4B4557947F5ADA8B0C8B264259E25DB11A20839844E7
          15608B248238FFE983EF5231148A60EC50DBA96317450469E45E2B6C2A960265
          F29DFEFBCB228820C52CE4BBEFD01B552C149D76875B0411EC207AEF55BF75C5
          442805DCDDE6C4A144289B47576C4EA8F4BE6F9B1387104191E5557D2FAED830
          48D39F3DEFA421445016A6206411AB8DA6C1C395FF06BF483FB76C627153E3EF
          8DFAFEB6DFBD08A89496D29EBBC9D666A847A8D804A844A818A112A162844A84
          8A112A112A46A844A818A112A162844A848A112A112A46A844A818A112A16284
          4A848A112A112A46A844A818A112A162844A848A112A112A46A844A818A112A1
          62844A848A112A112A46A844A818A112A162844A848A11FE1F52C1C9485995A1
          A10000000049454E44AE426082}
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
      'Select*, case SITUACAO_AREA'
      '         when '#39'0'#39' then '#39'Inativo'#39
      '         when '#39'1'#39' then '#39'Ativo'#39' end [Situa'#231#227'o]'
      'from TB_AREA, TB_CIDADE, TB_ESTADO'
      
        'where CIDADE_AREA = CodigoCidade and ESTADO_AREA = CodigoEstado ' +
        'and '
      'EstadoCidade = CodigoEstado ')
    Left = 169
    Top = 41
    object ADOQueryConsultaCODIGO_AREA: TAutoIncField
      FieldName = 'CODIGO_AREA'
      ReadOnly = True
    end
    object ADOQueryConsultaDESCRICAO_AREA: TStringField
      FieldName = 'DESCRICAO_AREA'
      Size = 70
    end
    object ADOQueryConsultaTAMANHO_AREA: TBCDField
      FieldName = 'TAMANHO_AREA'
      Precision = 10
      Size = 3
    end
    object ADOQueryConsultaUNIDADE_AREA: TStringField
      FieldName = 'UNIDADE_AREA'
      FixedChar = True
      Size = 5
    end
    object ADOQueryConsultaCIDADE_AREA: TIntegerField
      FieldName = 'CIDADE_AREA'
    end
    object ADOQueryConsultaESTADO_AREA: TIntegerField
      FieldName = 'ESTADO_AREA'
    end
    object ADOQueryConsultaOBS_AREA: TStringField
      FieldName = 'OBS_AREA'
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
    object ADOQueryConsultaCodigoEstado: TIntegerField
      FieldName = 'CodigoEstado'
    end
    object ADOQueryConsultaSiglaEstado: TStringField
      FieldName = 'SiglaEstado'
      Size = 100
    end
    object ADOQueryConsultaSITUACAO_AREA: TBooleanField
      FieldName = 'SITUACAO_AREA'
    end
    object ADOQueryConsultaSituação: TStringField
      FieldName = 'Situa'#231#227'o'
      ReadOnly = True
      Size = 7
    end
  end
  object ADOStoredProcCadastro: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_cadastro_area;1'
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
  object ADOStoredProcAlteracao: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_alteracao_area;1'
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
  object ADOStoredProcExclusao: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_exclusao_colheita;1'
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
  object DataSourceConsulta: TDataSource
    DataSet = ADOQueryConsulta
    Left = 169
    Top = 121
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
  object DataSourceCidadeC: TDataSource
    DataSet = ADOQueryCidadeC
    Left = 631
    Top = 243
  end
  object ADOStoredProcAtivarInativar: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_ativacao_inativacao_area;1'
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
