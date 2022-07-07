unit Unit_Plantio_Estufa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Imaging.pngimage, ClipBrd,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, DateUtils,
  Vcl.WinXPickers, Data.Win.ADODB;

type
  TFormPlantioEstufa = class(TForm)
    Panel1: TPanel;
    PanelAlteracaoCampos: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    ButtonAlterar: TButton;
    ButtonLimparA: TButton;
    EditDescricaoA: TEdit;
    EditQuantidadeA: TEdit;
    DatePickerInicioA: TDatePicker;
    EditDuracaoA: TEdit;
    DatePickerFimA: TDatePicker;
    ComboBoxUnidadeA: TComboBox;
    PanelConsultaDBGrid: TPanel;
    Label10: TLabel;
    Label14: TLabel;
    ButtonAplicacao: TButton;
    ButtonColheita: TButton;
    ButtonIniciarPlantio: TButton;
    ButtonAlterarPlantio: TButton;
    DBLookupComboBoxEstadoCo: TDBLookupComboBox;
    DBLookupComboBoxCidadeCo: TDBLookupComboBox;
    RadioGroupFiltro: TRadioGroup;
    PanelDBArea: TPanel;
    Label11: TLabel;
    DBGrid1: TDBGrid;
    PanelDBPlantio: TPanel;
    Label12: TLabel;
    DBGrid2: TDBGrid;
    PanelDBAplic: TPanel;
    Label15: TLabel;
    DBGrid3: TDBGrid;
    PanelCadastroCampos: TPanel;
    Label1: TLabel;
    Label8: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    EditDescricao: TEdit;
    ButtonCadastrar: TButton;
    ButtonLimpar: TButton;
    EditQuantidade: TEdit;
    DatePickerInicio: TDatePicker;
    DatePickerFim: TDatePicker;
    EditDuracao: TEdit;
    ComboBoxUnidade: TComboBox;
    PanelMenu: TPanel;
    ImageMaquinario: TImage;
    PanelConsulta: TPanel;
    ADOQueryAplic: TADOQuery;
    ADOQueryCidadeC: TADOQuery;
    ADOQueryCidadeCCodigoCidade: TIntegerField;
    ADOQueryCidadeCNomeCidade: TStringField;
    ADOQueryCidadeCEstadoCidade: TIntegerField;
    ADOQueryCidadeCCapital: TBooleanField;
    ADOQueryCidadeCCodigoEstado: TIntegerField;
    ADOQueryCidadeCSiglaEstado: TStringField;
    ADOQueryConsultaArea: TADOQuery;
    ADOQueryConsultaEstoque1: TADOQuery;
    ADOQueryConsultaEstoque1CODIGO_ESTOQUE: TAutoIncField;
    ADOQueryConsultaEstoque1CAPACIDADE_ESTOQUE: TBCDField;
    ADOQueryConsultaEstoque1UNIDADE_ESTOQUE: TStringField;
    ADOQueryConsultaEstoque1CIDADE_ESTOQUE: TIntegerField;
    ADOQueryConsultaEstoque1ESTADO_ESTOQUE: TIntegerField;
    ADOQueryConsultaEstoque1VALOR_ESTOQUE: TBCDField;
    ADOQueryConsultaEstoque1FOTO_ESTOQUE: TStringField;
    ADOQueryConsultaEstoque1SITUACAO_ESTOQUE: TBooleanField;
    ADOQueryConsultaEstoque1OBS_ESTOQUE: TStringField;
    ADOQueryConsultaPlantio: TADOQuery;
    ADOQueryEstadoC: TADOQuery;
    ADOQueryEstadoCCodigoEstado: TIntegerField;
    ADOQueryEstadoCSiglaEstado: TStringField;
    ADOStoredProcAlteracaoPlantio: TADOStoredProc;
    ADOStoredProcCadastroPlantio: TADOStoredProc;
    ADOStoredProcCadastroProduto: TADOStoredProc;
    DataSourceAplic: TDataSource;
    DataSourceConsultaPlantio: TDataSource;
    DataSourceCidadeC: TDataSource;
    DataSourceEstadoC: TDataSource;
    DataSourceConsultaArea: TDataSource;
    ADOQueryConsultaAreaCODIGO_ESTUFA: TAutoIncField;
    ADOQueryConsultaAreaDESCRICAO_ESTUFA: TStringField;
    ADOQueryConsultaAreaTAMANHO_ESTUFA: TFMTBCDField;
    ADOQueryConsultaAreaUNIDADE_ESTUFA: TStringField;
    ADOQueryConsultaAreaCIDADE_ESTUFA: TIntegerField;
    ADOQueryConsultaAreaESTADO_ESTUFA: TIntegerField;
    ADOQueryConsultaAreaOBS_ESTUFA: TStringField;
    ADOQueryConsultaAreaSITUACAO_ESTUFA: TBooleanField;
    ADOQueryConsultaAreaCodigoCidade: TIntegerField;
    ADOQueryConsultaAreaNomeCidade: TStringField;
    ADOQueryConsultaAreaEstadoCidade: TIntegerField;
    ADOQueryConsultaAreaCapital: TBooleanField;
    ADOQueryConsultaAreaCodigoEstado: TIntegerField;
    ADOQueryConsultaAreaSiglaEstado: TStringField;
    ADOQueryConsultaPlantioCODIGO_PLANTIO_ESTUFA: TAutoIncField;
    ADOQueryConsultaPlantioDESCRICAO_PLANTIO_ESTUFA: TStringField;
    ADOQueryConsultaPlantioQUANTIDADE_PLANTIO_ESTUFA: TFMTBCDField;
    ADOQueryConsultaPlantioUNIDADE_PLANTIO_ESTUFA: TStringField;
    ADOQueryConsultaPlantioESTUFA_PLANTIO_ESTUFA: TIntegerField;
    ADOQueryConsultaPlantioDATA_INICIO_PLANTIO_ESTUFA: TWideStringField;
    ADOQueryConsultaPlantioDURACAO_PLANTIO_ESTUFA: TIntegerField;
    ADOQueryConsultaPlantioDATA_FIM_PLANTIO_ESTUFA: TWideStringField;
    ADOQueryConsultaPlantioSITUACAO_PLANTIO_ESTUFA: TBooleanField;
    ADOQueryConsultaPlantioCODIGO_ESTUFA: TAutoIncField;
    ADOQueryConsultaPlantioDESCRICAO_ESTUFA: TStringField;
    ADOQueryConsultaPlantioTAMANHO_ESTUFA: TFMTBCDField;
    ADOQueryConsultaPlantioUNIDADE_ESTUFA: TStringField;
    ADOQueryConsultaPlantioCIDADE_ESTUFA: TIntegerField;
    ADOQueryConsultaPlantioESTADO_ESTUFA: TIntegerField;
    ADOQueryConsultaPlantioOBS_ESTUFA: TStringField;
    ADOQueryConsultaPlantioSITUACAO_ESTUFA: TBooleanField;
    ADOQueryAplicCODIGO_APLICACAO: TAutoIncField;
    ADOQueryAplicINSUMO_APLICACAO: TIntegerField;
    ADOQueryAplicDESCRICAO_APLICACAO: TStringField;
    ADOQueryAplicQUANTIDADE_APLICACAO: TBCDField;
    ADOQueryAplicUNIDADE_APLICACAO: TStringField;
    ADOQueryAplicPLANTIO_APLICACAO: TIntegerField;
    ADOQueryAplicPLANTIO_ESTUFA_APLICACAO: TIntegerField;
    ADOQueryAplicDATA_APLICACAO: TWideStringField;
    ADOQueryAplicCODIGO_PLANTIO_ESTUFA: TAutoIncField;
    ADOQueryAplicDESCRICAO_PLANTIO_ESTUFA: TStringField;
    ADOQueryAplicQUANTIDADE_PLANTIO_ESTUFA: TFMTBCDField;
    ADOQueryAplicUNIDADE_PLANTIO_ESTUFA: TStringField;
    ADOQueryAplicESTUFA_PLANTIO_ESTUFA: TIntegerField;
    ADOQueryAplicDATA_INICIO_PLANTIO_ESTUFA: TWideStringField;
    ADOQueryAplicDURACAO_PLANTIO_ESTUFA: TIntegerField;
    ADOQueryAplicDATA_FIM_PLANTIO_ESTUFA: TWideStringField;
    ADOQueryAplicSITUACAO_PLANTIO_ESTUFA: TBooleanField;
    Panel6: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel7: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    ADOConnection1: TADOConnection;
    procedure PanelConsultaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBoxEstadoCoClick(Sender: TObject);
    procedure DBLookupComboBoxCidadeCoClick(Sender: TObject);
    procedure RadioGroupFiltroClick(Sender: TObject);
    procedure ButtonLimparAClick(Sender: TObject);
    procedure ButtonLimparClick(Sender: TObject);
    procedure ButtonCadastrarClick(Sender: TObject);
    procedure ButtonAlterarClick(Sender: TObject);
    procedure EditDuracaoAChange(Sender: TObject);
    procedure EditDuracaoAExit(Sender: TObject);
    procedure EditDuracaoAKeyPress(Sender: TObject; var Key: Char);
    procedure EditDescricaoAKeyPress(Sender: TObject; var Key: Char);
    procedure EditQuantidadeAKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxUnidadeAKeyPress(Sender: TObject; var Key: Char);
    procedure EditDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure EditQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxUnidadeKeyPress(Sender: TObject; var Key: Char);
    procedure EditDuracaoKeyPress(Sender: TObject; var Key: Char);
    procedure EditDuracaoChange(Sender: TObject);
    procedure EditDuracaoExit(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure ButtonIniciarPlantioClick(Sender: TObject);
    procedure ButtonAlterarPlantioClick(Sender: TObject);
    procedure ButtonAplicacaoClick(Sender: TObject);
    procedure ButtonColheitaClick(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure PanelConsultaMouseEnter(Sender: TObject);
    procedure PanelConsultaMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CODIGO, CODIGOCOLHEITA : integer;
    ESTUFA, CODIGOESTUFA1 : integer;
    DIA, MES, ANO : string;
    SITUACAO : boolean;
  end;

var
  FormPlantioEstufa: TFormPlantioEstufa;

implementation

{$R *.dfm}

uses Unit_Cadastro_Produto, Unit_Aplicacao_plantio;

procedure TFormPlantioEstufa.ButtonAlterarClick(Sender: TObject);
begin

  if EditDescricaoA.Text = '' then
  begin
    Application.MessageBox('É necessário inserir o campo DESCRIÇÃO.','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    EditDescricaoA.SetFocus;
    Exit;
  end;

  if (EditQuantidadeA.Text = '') or (EditQuantidadeA.Text = '0') then
  begin
    Application.MessageBox('É necessário inserir o campo DESCRIÇÃO.','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    EditQuantidadeA.SetFocus;
    Exit;
  end;

  if ComboBoxUnidadeA.Text = '' then
  begin
    Application.MessageBox('É necessário inserir o campo UNIDADE.','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    ComboBoxUnidadeA.SetFocus;
    Exit;
  end;

  if EditDuracaoA.Text = '' then
  begin
    Application.MessageBox('É necessário inserir o campo DESCRIÇÃO.','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    EditDuracaoA.SetFocus;
    Exit;
  end;


  with ADOStoredProcAlteracaoPlantio.Parameters do
  begin
    ParamByName('@CODIGO').Value := CODIGO;
    ParamByName('@DESCRICAO').Value := EditDescricaoA.Text;
    ParamByName('@QUANTIDADE').Value := StrToCurr(EditQuantidadeA.Text);
    ParamByName('@UNIDADE').Value := ComboBoxUnidadeA.Text;
    ParamByName('@DATAINICIO').Value := FormatDateTime('YYYYMMDD', DatePickerInicioA.Date);
    ParamByName('@DATAFIM').Value := FormatDateTime('YYYYMMDD', DatePickerFimA.Date);
    ParamByName('@DURACAO').Value := StrToInt(EditDuracaoA.Text);
    ParamByName('@ESTUFA').Value := ESTUFA;
    ParamByName('@SITUACAO').Value := SITUACAO;
  end;
  ADOStoredProcAlteracaoPlantio.ExecProc;

  Application.MessageBox('Alterado com sucesso!','Confirmação',MB_ICONINFORMATION);
  ADOQueryConsultaPlantio.Close;
  ADOQueryConsultaPlantio.Open;

end;

procedure TFormPlantioEstufa.ButtonAlterarPlantioClick(Sender: TObject);
begin

  CODIGO := ADOQueryConsultaPlantioCODIGO_PLANTIO_ESTUFA.AsInteger;
  ESTUFA := ADOQueryConsultaPlantioESTUFA_PLANTIO_ESTUFA.AsInteger;
  EditDescricaoA.Text := ADOQueryConsultaPlantioDESCRICAO_PLANTIO_ESTUFA.AsString;
  EditQuantidadeA.Text := CurrToStr(ADOQueryConsultaPlantioQUANTIDADE_PLANTIO_ESTUFA.AsCurrency);
  ComboBoxUnidadeA.Text := ADOQueryConsultaPlantioUNIDADE_PLANTIO_ESTUFA.AsString;
  DIA := Copy(ADOQueryConsultaPlantioDATA_INICIO_PLANTIO_ESTUFA.AsString, 9,2);
  MES := Copy(ADOQueryConsultaPlantioDATA_INICIO_PLANTIO_ESTUFA.AsString, 6,2);
  ANO := Copy(ADOQueryConsultaPlantioDATA_INICIO_PLANTIO_ESTUFA.AsString, 1,4);
  DatePickerInicioA.Date := StrToDate(DIA+'/'+MES+'/'+ANO);
  EditDuracaoA.Text := IntToStr(ADOQueryConsultaPlantioDURACAO_PLANTIO_ESTUFA.AsInteger);
  DIA := Copy(ADOQueryConsultaPlantioDATA_FIM_PLANTIO_ESTUFA.AsString, 9,2);
  MES := Copy(ADOQueryConsultaPlantioDATA_FIM_PLANTIO_ESTUFA.AsString, 6,2);
  ANO := Copy(ADOQueryConsultaPlantioDATA_FIM_PLANTIO_ESTUFA.AsString, 1,4);
  DatePickerFimA.Date := StrToDate(DIA+'/'+MES+'/'+ANO);
  if ADOQueryConsultaPlantioSITUACAO_PLANTIO_ESTUFA.AsBoolean = True then
  begin
    SITUACAO := True;
  end
  else if ADOQueryConsultaPlantioSITUACAO_PLANTIO_ESTUFA.AsBoolean = False then
  begin
    SITUACAO := False;
  end;

  if PanelAlteracaoCampos.Visible = False then
  begin
    PanelAlteracaoCampos.Visible := True;
    PanelConsultaDBGrid.Visible := False;
    PanelCAdastroCampos.Visible := False;
  end
  else if PanelCadastroCampos.Visible = True  then
  begin
    PanelAlteracaoCampos.Visible := False ;
  end;
end;

procedure TFormPlantioEstufa.ButtonAplicacaoClick(Sender: TObject);
begin
  Unit_Aplicacao_plantio.FormAplicacaoPlantio.ADOQueryConsultaAplicacao.Close;
  Unit_Aplicacao_plantio.FormAplicacaoPlantio.ADOQueryConsultaAplicacao.Open;

  //Unit_Aplicacao_plantio.FormAplicacaoPlantio.ButtonCadastrar.Visible := False;
  //Unit_Aplicacao_plantio.FormAplicacaoPlantio.ButtonCadastrar2.Visible := True;
  Unit_Aplicacao_plantio.FormAplicacaoPlantio.Panel2.Visible := False;
  Unit_Aplicacao_plantio.FormAplicacaoPlantio.Panel4.Visible := True;

  Unit_Aplicacao_plantio.FormAplicacaoPlantio.ShowModal;
end;

procedure TFormPlantioEstufa.ButtonCadastrarClick(Sender: TObject);
var
  QUANTIDADECAD : Currency;
  DURACAOCAD : Integer;
begin

  if EditDescricao.Text = '' then
  begin
    Application.MessageBox('É necessário inserir o campo DESCRIÇÃO','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    EditDescricao.SetFocus;
    Exit;
  end;

  if (EditQuantidade.Text = '') or (EditQuantidade.Text <= '0') then
  begin
    Application.MessageBox('É necessário inserir o campo QUANTIDADE','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    EditQuantidade.SetFocus;
    Exit;
  end;

  if ComboBoxUnidade.Text = '' then
  begin
    Application.MessageBox('É necessário inserir o campo UNIDADE','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    ComboBoxUnidade.SetFocus;
    Exit;
  end;

  if EditDuracao.Text = '' then
  begin
    Application.MessageBox('É necessário inserir o campo DURAÇÃO','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    EditDuracao.SetFocus;
    Exit;
  end;

  QUANTIDADECAD := StrToCurr(EditQuantidade.Text);
  DURACAOCAD := StrToInt(EditDuracao.Text);
  with ADOStoredProcCadastroPlantio.Parameters do
  begin
    ParamByName('@DESCRICAO').Value := EditDescricao.Text;
    ParamByName('@QUANTIDADE').Value := QUANTIDADECAD;
    ParamByName('@UNIDADE').Value := ComboBoxUnidade.Text;
    ParamByName('@DATAINICIO').Value := FormatDateTime('YYYYMMDD', DatePickerInicio.Date);
    ParamByName('@DATAFIM').Value := FormatDateTime('YYYYMMDD', DatePickerFim.Date);
    ParamByName('@DURACAO').Value := StrToInt(EditDuracao.Text);
    ParamByName('@ESTUFA').Value := CODIGOESTUFA1;
    ParamByName('@SITUACAO').Value := 1;
  end;
  ADOStoredProcCadastroPlantio.ExecProc;

  Application.MessageBox('Cadastrado com sucesso!','Confirmação',MB_ICONINFORMATION);
  ADOQueryConsultaPlantio.Close;
  ADOQueryConsultaPlantio.Open;
  ButtonLimparClick(Self);

end;

procedure TFormPlantioEstufa.ButtonColheitaClick(Sender: TObject);
begin
  Unit_Cadastro_Produto.FormCadastroProduto.CODIGOPLANTIO := ADOQueryConsultaPlantioCODIGO_PLANTIO_ESTUFA.AsInteger;
  Unit_Cadastro_Produto.FormCadastroProduto.DESCRICAO := ADOQueryConsultaPlantioDESCRICAO_PLANTIO_ESTUFA.AsString;
  Unit_Cadastro_Produto.FormCadastroProduto.QUANTIDADE := ADOQueryConsultaPlantioQUANTIDADE_PLANTIO_ESTUFA.AsCurrency;
  Unit_Cadastro_Produto.FormCadastroProduto.UNIDADE := ADOQueryConsultaPlantioUNIDADE_PLANTIO_ESTUFA.AsString;
  with Unit_Cadastro_Produto.FormCadastroProduto do
  begin
    EditDescricao.Text := DESCRICAO;
    EditQuantidade.Text := CurrToStr(QUANTIDADE);
    //ComboBoxUnidade.Text := UNIDADE;
    DatePickerEntrada.Date := Now;
  end;

  //Unit_Cadastro_Produto.FormCadastroProduto.ButtonCadastro.Visible := False;
  //Unit_Cadastro_Produto.FormCadastroProduto.ButtonCadastro2.Visible := True;
  Unit_Cadastro_Produto.FormCadastroProduto.Panel4.Visible := False;
  Unit_Cadastro_Produto.FormCadastroProduto.Panel2.Visible := True;


  Unit_Cadastro_Produto.FormCadastroProduto.ShowModal;
end;

procedure TFormPlantioEstufa.ButtonIniciarPlantioClick(Sender: TObject);
begin
  if PanelCadastroCampos.Visible = False then
  begin
    PanelCadastroCampos.Visible := True;
    PanelConsultaDBGrid.Visible := False;
    PanelAlteracaoCampos.Visible := False;
  end
  else if PanelCadastroCampos.Visible = True  then
  begin
    PanelCadastroCampos.Visible := False ;
  end;
end;

procedure TFormPlantioEstufa.ButtonLimparAClick(Sender: TObject);
begin
  EditDescricaoA.Clear;
  EditQuantidadeA.Clear;
  DatePickerInicioA.Date := Now;
  DatePickerFimA.Date := Now;
  EditDuracaoA.Clear;
end;

procedure TFormPlantioEstufa.ButtonLimparClick(Sender: TObject);
begin
  EditDescricao.Clear;
  EditQuantidade.Clear;
  DatePickerInicio.Date := Now;
  DatePickerFim.Date := Now;
  EditDuracao.Clear;
end;

procedure TFormPlantioEstufa.ComboBoxUnidadeAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormPlantioEstufa.ComboBoxUnidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormPlantioEstufa.DBGrid1CellClick(Column: TColumn);
begin
  ADOQueryConsultaPlantio.Close;
  ADOQueryConsultaPlantio.Open;

  CODIGOESTUFA1 :=  ADOQueryConsultaAreaCODIGO_ESTUFA.AsInteger;
  ADOQueryConsultaPlantio.Parameters.ParamByName('CodigoEstufa').Value := CODIGOESTUFA1;


  if ADOQueryConsultaAreaCODIGO_ESTUFA.AsInteger = 0 then
  begin
    ButtonIniciarPlantio.Enabled := False;
    Panel6.Enabled := False;
  end
  else if ADOQueryConsultaAreaCODIGO_ESTUFA.AsInteger <> 0 then
  begin
    ButtonIniciarPlantio.Enabled := True;
    Panel6.Enabled := True;
  end;
end;

procedure TFormPlantioEstufa.DBGrid2CellClick(Column: TColumn);
var
  DATAFIM : TDate;
  DIAFIM, MESFIM, ANOFIM : string;
begin
  if ADOQueryConsultaPlantioCODIGO_PLANTIO_ESTUFA.AsInteger <> 0 then
  Begin
    CODIGOCOLHEITA := ADOQueryConsultaPlantioCODIGO_PLANTIO_ESTUFA.AsInteger;
    Unit_Aplicacao_plantio.FormAplicacaoPlantio.CODIGOPLANTIO := ADOQueryConsultaPlantioCODIGO_PLANTIO_ESTUFA.AsInteger;

    ADOQueryAplic.Parameters.ParamByName('CODIGOAPLIC').Value := ADOQueryConsultaPlantioCODIGO_PLANTIO_ESTUFA.AsInteger;


    //DATAFIM := FormatDateTime('DD/MM/yyyy', ADOQueryConsultaPlantioDATA_FIM_PLANTIO.AsDateTime);

    DIAFIM := Copy(ADOQueryConsultaPlantioDATA_FIM_PLANTIO_ESTUFA.AsString,9,2);
    MESFIM := Copy(ADOQueryConsultaPlantioDATA_FIM_PLANTIO_ESTUFA.AsString,6,2);
    ANOFIM := Copy(ADOQueryConsultaPlantioDATA_FIM_PLANTIO_ESTUFA.AsString,1,4);

    DATAFIM := StrToDate(DIAFIM+'/'+MESFIM+'/'+ANOFIM);

    if (Now >= DATAFIM) and (ADOQueryConsultaEstoque1.RecordCount > 0) then
    begin
      ButtonColheita.Enabled := True;
      Panel9.Enabled := True;
    end
    else if Now < DATAFIM then
    begin
      ButtonColheita.Enabled := False;
      Panel9.Enabled := False;
    end;

    if ADOQueryConsultaPlantioCODIGO_PLANTIO_ESTUFA.AsInteger = 0 then
    begin
      ButtonAplicacao.Enabled := False;
      ButtonAlterar.Enabled := False;
      Panel8.Enabled := False;
      Panel7.Enabled := False;
    end
    else if ADOQueryConsultaPlantioCODIGO_PLANTIO_ESTUFA.AsInteger <> 0 then
    begin
      ButtonAplicacao.Enabled := True;
      ButtonAlterarPlantio.Enabled := True;
      Panel8.Enabled := True;
      Panel7.Enabled := True;
    end;

  end;

end;

procedure TFormPlantioEstufa.DBLookupComboBoxCidadeCoClick(Sender: TObject);
begin
  if DBLookupComboBoxEstadoCo.KeyValue = 0 then
  begin
    DBLookupComboBoxEstadoCo.KeyValue := ADOQueryCidadeCEstadoCidade.AsInteger;
  end
  else
  with ADOQueryConsultaArea do
  begin
    Close;
    SQL.Clear;
    SQL.add('Select*');
    SQL.add('from TB_ESTUFA, TB_CIDADE, TB_ESTADO');
    SQL.add('where');
    SQL.Add('CIDADE_ESTUFA = CodigoCidade and ESTADO_ESTUFA = CodigoEstado and');
    SQL.Add('EstadoCidade = CodigoEstado and');
    SQL.add('SITUACAO_ESTUFA = 1 and');
    SQL.add('CIDADE_ESTUFA =' +IntToStr(ADOQueryCidadeCCodigoCidade.value)+'');
    Clipboard.AsText := ADOQueryConsultaArea.SQL.Text;
    Open;
  end;
end;

procedure TFormPlantioEstufa.DBLookupComboBoxEstadoCoClick(Sender: TObject);
begin
  with ADOQueryCidadeC do
  begin
	  Close;
    SQL.Clear;
    SQL.add('select*from TB_CIDADE, TB_ESTADO');
    SQL.add('where TB_CIDADE.EstadoCidade = TB_ESTADO.CodigoEstado');
    SQL.add('and TB_CIDADE.EstadoCidade =' +IntToStr(ADOQueryEstadoCCodigoEstado.value)+'');
    Open;
  end;
end;

procedure TFormPlantioEstufa.EditDescricaoAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormPlantioEstufa.EditDescricaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormPlantioEstufa.EditDuracaoAChange(Sender: TObject);
begin
  EditDuracaoAExit(Self);
end;

procedure TFormPlantioEstufa.EditDuracaoAExit(Sender: TObject);
var
  dataI, dataF : Tdate;
  duracao : integer;
begin
  if EditDuracaoA.Text <> '' then
  begin
    dataI := DatePickerInicioA.Date;
    duracao := StrToInt(EditDuracaoA.Text);
    dataF := IncDay(dataI, duracao);
    DatePickerFimA.Date := dataF;
  end;
end;

procedure TFormPlantioEstufa.EditDuracaoAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormPlantioEstufa.EditDuracaoChange(Sender: TObject);
begin
  EditDuracaoExit(Self);
end;

procedure TFormPlantioEstufa.EditDuracaoExit(Sender: TObject);
var
  dataI, dataF : Tdate;
  duracao : integer;
begin
  if EditDuracao.Text <> '' then
  begin
    dataI := DatePickerInicio.Date;
    duracao := StrToInt(EditDuracao.Text);
    dataF := IncDay(dataI, duracao);
    DatePickerFim.Date := dataF;
  end;
end;

procedure TFormPlantioEstufa.EditDuracaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormPlantioEstufa.EditQuantidadeAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormPlantioEstufa.EditQuantidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormPlantioEstufa.FormShow(Sender: TObject);
begin
  DatePickerInicio.Date := Now;
  DatePickerFim.Date := Now;
  EditDuracao.Clear;
  ADOQueryConsultaArea.Close;
  ADOQueryConsultaArea.Open;
  ADOQueryConsultaPlantio.Close;
  ADOQueryConsultaPlantio.Open;
  ADOQueryConsultaEstoque1.Close;
  ADOQueryConsultaEstoque1.Open;
  ADOQueryAplic.Close;
  ADOQueryAplic.Open;
  Unit_Cadastro_Produto.FormCadastroProduto.ADOQueryEstoque.Close;
  Unit_Cadastro_Produto.FormCadastroProduto.ADOQueryEstoque.Open;
end;

procedure TFormPlantioEstufa.Panel4Click(Sender: TObject);
begin
  ButtonCadastrarClick(Self);
end;

procedure TFormPlantioEstufa.Panel5Click(Sender: TObject);
begin
  ButtonLimparClick(Self);
end;

procedure TFormPlantioEstufa.Panel6Click(Sender: TObject);
begin
  ButtonIniciarPlantioClick(Self);
end;

procedure TFormPlantioEstufa.Panel7Click(Sender: TObject);
begin
  ButtonAlterarPlantioClick(Self);
end;

procedure TFormPlantioEstufa.Panel8Click(Sender: TObject);
begin
  ButtonAplicacaoClick(Self);
end;

procedure TFormPlantioEstufa.Panel9Click(Sender: TObject);
begin
  ButtonColheitaClick(Self);
end;

procedure TFormPlantioEstufa.PanelConsultaClick(Sender: TObject);
begin
  ADOQueryConsultaArea.Close;
  ADOQueryConsultaArea.Open;


  if PanelConsultaDBGrid.Visible = False then
  begin
    PanelConsultaDBGrid.Visible := True;
    PanelCadastroCampos.Visible := False;
    PanelAlteracaoCampos.Visible := False;
  end
  else if PanelConsultaDBGrid.Visible = True  then
  begin
    PanelConsultaDBGrid.Visible := False;
  end;

  ADOQueryConsultaPlantio.Close;
  ADOQueryConsultaPlantio.Open;
end;

procedure TFormPlantioEstufa.PanelConsultaMouseEnter(Sender: TObject);
begin
  PanelConsulta.Font.Size := 14;
end;

procedure TFormPlantioEstufa.PanelConsultaMouseLeave(Sender: TObject);
begin
  PanelConsulta.Font.Size := 12;
end;

procedure TFormPlantioEstufa.RadioGroupFiltroClick(Sender: TObject);
begin
  CODIGOESTUFA1 :=  ADOQueryConsultaAreaCODIGO_ESTUFA.AsInteger;
  if RadioGroupFiltro.ItemIndex = 0 then
  begin
    with ADOQueryConsultaPlantio do
    begin
      Close;
      SQL.Clear;
      SQL.add('Select*, case SITUACAO_PLANTIO_ESTUFA');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_PLANTIO_ESTUFA, TB_ESTUFA');
      SQL.add('where');
      SQL.Add('ESTUFA_PLANTIO_ESTUFA = CODIGO_ESTUFA and CODIGO_ESTUFA = :''CodigoEstufa''');
      SQL.Add('and SITUACAO_PLANTIO_ESTUFA = 1');
      ADOQueryConsultaPlantio.Parameters.ParamByName('CodigoEstufa').Value := CODIGOESTUFA1;
      Clipboard.AsText := ADOQueryConsultaPlantio.SQL.Text;
      Open;
    end;
  end
  else if RadioGroupFiltro.ItemIndex = 1 then
  begin
    with ADOQueryConsultaPlantio do
    begin
      Close;
      SQL.Clear;
      SQL.add('Select*, case SITUACAO_PLANTIO_ESTUFA');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_PLANTIO_ESTUFA, TB_ESTUFA');
      SQL.add('where');
      SQL.Add('ESTUFA_PLANTIO_ESTUFA = CODIGO_ESTUFA and CODIGO_ESTUFA = :''CodigoEstufa''');
      SQL.Add('and SITUACAO_PLANTIO_ESTUFA = 0');
      ADOQueryConsultaPlantio.Parameters.ParamByName('CodigoEstufa').Value := CODIGOESTUFA1;
      Clipboard.AsText := ADOQueryConsultaPlantio.SQL.Text;
      Open;
    end;
  end
  else if RadioGroupFiltro.ItemIndex = 2 then
  begin
    with ADOQueryConsultaPlantio do
    begin
      Close;
      SQL.Clear;
      SQL.add('Select*, case SITUACAO_PLANTIO_ESTUFA');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_PLANTIO_ESTUFA, TB_ESTUFA');
      SQL.add('where');
      SQL.Add('ESTUFA_PLANTIO_ESTUFA = CODIGO_ESTUFA and CODIGO_ESTUFA = :''CodigoEstufa''');
      ADOQueryConsultaPlantio.Parameters.ParamByName('CodigoEstufa').Value := CODIGOESTUFA1;
      Clipboard.AsText := ADOQueryConsultaPlantio.SQL.Text;
      Open;
    end;
  end;
end;

end.
