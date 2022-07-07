unit Unit_Plantio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Grids, ClipBrd,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Data.Win.ADODB, Vcl.Menus, DateUtils,
  Vcl.WinXPickers, Vcl.Imaging.pngimage;

type
  TFormPlantio = class(TForm)
    Panel1: TPanel;
    PanelCadastroCampos: TPanel;
    Label1: TLabel;
    Label8: TLabel;
    EditDescricao: TEdit;
    ButtonCadastrar: TButton;
    ButtonLimpar: TButton;
    EditQuantidade: TEdit;
    PanelAlteracaoCampos: TPanel;
    ButtonAlterar: TButton;
    ButtonLimparA: TButton;
    PanelConsultaDBGrid: TPanel;
    DBGrid1: TDBGrid;
    PanelMenu: TPanel;
    ImageMaquinario: TImage;
    PanelConsulta: TPanel;
    DBGrid2: TDBGrid;
    ADOQueryConsultaPlantio: TADOQuery;
    ADOQueryConsultaArea: TADOQuery;
    DataSourceConsultaArea: TDataSource;
    DataSourceConsultaPlantio: TDataSource;
    ADOQueryConsultaPlantioCODIGO_PLANTIO: TAutoIncField;
    ADOQueryConsultaPlantioDESCRICAO_PLANTIO: TStringField;
    ADOQueryConsultaPlantioQUANTIDADE_PLANTIO: TBCDField;
    ADOQueryConsultaPlantioUNIDADE_PLANTIO: TStringField;
    ADOQueryConsultaPlantioAREA_PLANTIO: TIntegerField;
    ADOQueryConsultaPlantioDATA_INICIO_PLANTIO: TWideStringField;
    ADOQueryConsultaPlantioDURACAO_PLANTIO: TIntegerField;
    ADOQueryConsultaPlantioDATA_FIM_PLANTIO: TWideStringField;
    ADOQueryConsultaPlantioCODIGO_AREA: TAutoIncField;
    ADOQueryConsultaPlantioDESCRICAO_AREA: TStringField;
    ADOQueryConsultaPlantioTAMANHO_AREA: TBCDField;
    ADOQueryConsultaPlantioUNIDADE_AREA: TStringField;
    ADOQueryConsultaPlantioCIDADE_AREA: TIntegerField;
    ADOQueryConsultaPlantioESTADO_AREA: TIntegerField;
    ADOQueryConsultaPlantioOBS_AREA: TStringField;
    ADOQueryConsultaAreaCODIGO_AREA: TAutoIncField;
    ADOQueryConsultaAreaDESCRICAO_AREA: TStringField;
    ADOQueryConsultaAreaTAMANHO_AREA: TBCDField;
    ADOQueryConsultaAreaUNIDADE_AREA: TStringField;
    ADOQueryConsultaAreaCIDADE_AREA: TIntegerField;
    ADOQueryConsultaAreaESTADO_AREA: TIntegerField;
    ADOQueryConsultaAreaOBS_AREA: TStringField;
    ADOQueryConsultaAreaCodigoCidade: TIntegerField;
    ADOQueryConsultaAreaNomeCidade: TStringField;
    ADOQueryConsultaAreaEstadoCidade: TIntegerField;
    ADOQueryConsultaAreaCapital: TBooleanField;
    ADOQueryConsultaAreaCodigoEstado: TIntegerField;
    ADOQueryConsultaAreaSiglaEstado: TStringField;
    Label11: TLabel;
    Label12: TLabel;
    ButtonAplicacao: TButton;
    ButtonColheita: TButton;
    ButtonIniciarPlantio: TButton;
    ButtonAlterarPlantio: TButton;
    ADOStoredProcCadastroPlantio: TADOStoredProc;
    DatePickerInicio: TDatePicker;
    DatePickerFim: TDatePicker;
    EditDuracao: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    Label4: TLabel;
    EditDescricaoA: TEdit;
    Label5: TLabel;
    EditQuantidadeA: TEdit;
    DatePickerInicioA: TDatePicker;
    Label6: TLabel;
    Label7: TLabel;
    EditDuracaoA: TEdit;
    DatePickerFimA: TDatePicker;
    Label9: TLabel;
    ADOStoredProcAlteracaoPlantio: TADOStoredProc;
    ADOQueryConsultaAreaSITUACAO_AREA: TBooleanField;
    ADOQueryConsultaPlantioSITUACAO_PLANTIO: TBooleanField;
    ADOQueryConsultaPlantioSITUACAO_AREA: TBooleanField;
    Label10: TLabel;
    DBLookupComboBoxEstadoCo: TDBLookupComboBox;
    DBLookupComboBoxCidadeCo: TDBLookupComboBox;
    Label14: TLabel;
    RadioGroupFiltro: TRadioGroup;
    ADOQueryEstadoC: TADOQuery;
    ADOQueryEstadoCCodigoEstado: TIntegerField;
    ADOQueryEstadoCSiglaEstado: TStringField;
    DataSourceEstadoC: TDataSource;
    ADOQueryCidadeC: TADOQuery;
    ADOQueryCidadeCCodigoCidade: TIntegerField;
    ADOQueryCidadeCNomeCidade: TStringField;
    ADOQueryCidadeCEstadoCidade: TIntegerField;
    ADOQueryCidadeCCapital: TBooleanField;
    ADOQueryCidadeCCodigoEstado: TIntegerField;
    ADOQueryCidadeCSiglaEstado: TStringField;
    DataSourceCidadeC: TDataSource;
    DBGrid3: TDBGrid;
    Label15: TLabel;
    ADOQueryAplic: TADOQuery;
    DataSourceAplic: TDataSource;
    ADOQueryAplicCODIGO_APLICACAO: TAutoIncField;
    ADOQueryAplicINSUMO_APLICACAO: TIntegerField;
    ADOQueryAplicDESCRICAO_APLICACAO: TStringField;
    ADOQueryAplicQUANTIDADE_APLICACAO: TBCDField;
    ADOQueryAplicUNIDADE_APLICACAO: TStringField;
    ADOQueryAplicPLANTIO_APLICACAO: TIntegerField;
    ADOQueryAplicDATA_APLICACAO: TWideStringField;
    ADOQueryAplicCODIGO_PLANTIO: TAutoIncField;
    ADOQueryAplicDESCRICAO_PLANTIO: TStringField;
    ADOQueryAplicQUANTIDADE_PLANTIO: TFMTBCDField;
    ADOQueryAplicUNIDADE_PLANTIO: TStringField;
    ADOQueryAplicAREA_PLANTIO: TIntegerField;
    ADOQueryAplicDATA_INICIO_PLANTIO: TWideStringField;
    ADOQueryAplicDURACAO_PLANTIO: TIntegerField;
    ADOQueryAplicDATA_FIM_PLANTIO: TWideStringField;
    ADOQueryAplicSITUACAO_PLANTIO: TBooleanField;
    ADOStoredProcCadastroProduto: TADOStoredProc;
    ComboBoxUnidade: TComboBox;
    ComboBoxUnidadeA: TComboBox;
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
    PanelDBArea: TPanel;
    PanelDBPlantio: TPanel;
    PanelDBAplic: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    ADOConnection1: TADOConnection;
    procedure DBGrid2CellClick(Column: TColumn);
    procedure ButtonLimparClick(Sender: TObject);
    procedure ButtonCadastrarClick(Sender: TObject);
    procedure ButtonIniciarPlantioClick(Sender: TObject);
    procedure PanelConsultaClick(Sender: TObject);
    procedure DatePickerFimCloseUp(Sender: TObject);
    procedure ButtonAlterarClick(Sender: TObject);
    procedure ButtonAlterarPlantioClick(Sender: TObject);
    procedure ButtonLimparAClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure ButtonColheitaClick(Sender: TObject);
    procedure EditDescricaoAKeyPress(Sender: TObject; var Key: Char);
    procedure EditQuantidadeAKeyPress(Sender: TObject; var Key: Char);
    procedure EditDuracaoAKeyPress(Sender: TObject; var Key: Char);
    procedure EditDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure EditQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure EditDuracaoKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonAplicacaoClick(Sender: TObject);
    procedure DBLookupComboBoxEstadoCoClick(Sender: TObject);
    procedure DBLookupComboBoxCidadeCoClick(Sender: TObject);
    procedure RadioGroupFiltroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditDuracaoChange(Sender: TObject);
    procedure EditDuracaoAExit(Sender: TObject);
    procedure EditDuracaoAChange(Sender: TObject);
    procedure EditDuracaoExit(Sender: TObject);
    procedure ComboBoxUnidadeAKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxUnidadeKeyPress(Sender: TObject; var Key: Char);
    procedure Panel5Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
    procedure PanelConsultaMouseLeave(Sender: TObject);
    procedure PanelConsultaMouseEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CODIGO, CODIGOCOLHEITA : integer;
    AREA, CODIGOAREA1 : integer;
    DIA, MES, ANO : string;
    SITUACAO : boolean;
  end;

var
  FormPlantio: TFormPlantio;

implementation

{$R *.dfm}

uses Unit_Area, Unit_Aplicacao_plantio, Unit_Cadastro_Produto;

procedure TFormPlantio.ButtonIniciarPlantioClick(Sender: TObject);
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

procedure TFormPlantio.ButtonAlterarPlantioClick(Sender: TObject);
begin

  CODIGO := ADOQueryConsultaPlantioCODIGO_PLANTIO.AsInteger;
  AREA := ADOQueryConsultaPlantioAREA_PLANTIO.AsInteger;
  EditDescricaoA.Text := ADOQueryConsultaPlantioDESCRICAO_PLANTIO.AsString;
  EditQuantidadeA.Text := CurrToStr(ADOQueryConsultaPlantioQUANTIDADE_PLANTIO.AsCurrency);
  ComboBoxUnidadeA.Text := ADOQueryConsultaPlantioUNIDADE_PLANTIO.AsString;
  DIA := Copy(ADOQueryConsultaPlantioDATA_INICIO_PLANTIO.AsString, 9,2);
  MES := Copy(ADOQueryConsultaPlantioDATA_INICIO_PLANTIO.AsString, 6,2);
  ANO := Copy(ADOQueryConsultaPlantioDATA_INICIO_PLANTIO.AsString, 1,4);
  DatePickerInicioA.Date := StrToDate(DIA+'/'+MES+'/'+ANO);
  EditDuracaoA.Text := IntToStr(ADOQueryConsultaPlantioDURACAO_PLANTIO.AsInteger);
  DIA := Copy(ADOQueryConsultaPlantioDATA_FIM_PLANTIO.AsString, 9,2);
  MES := Copy(ADOQueryConsultaPlantioDATA_FIM_PLANTIO.AsString, 6,2);
  ANO := Copy(ADOQueryConsultaPlantioDATA_FIM_PLANTIO.AsString, 1,4);
  DatePickerFimA.Date := StrToDate(DIA+'/'+MES+'/'+ANO);
  if ADOQueryConsultaPlantioSITUACAO_PLANTIO.AsBoolean = True then
  begin
    SITUACAO := True;
  end
  else if ADOQueryConsultaPlantioSITUACAO_PLANTIO.AsBoolean = False then
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

procedure TFormPlantio.ButtonAplicacaoClick(Sender: TObject);
begin
  Unit_Aplicacao_plantio.FormAplicacaoPlantio.ADOQueryConsultaAplicacao.Close;
  Unit_Aplicacao_plantio.FormAplicacaoPlantio.ADOQueryConsultaAplicacao.Open;

  //Unit_Aplicacao_plantio.FormAplicacaoPlantio.ButtonCadastrar.Visible := True;
  //Unit_Aplicacao_plantio.FormAplicacaoPlantio.ButtonCadastrar2.Visible := False;
  Unit_Aplicacao_plantio.FormAplicacaoPlantio.Panel2.Visible := True;
  Unit_Aplicacao_plantio.FormAplicacaoPlantio.Panel4.Visible := False;

  Unit_Aplicacao_plantio.FormAplicacaoPlantio.ShowModal;
end;

procedure TFormPlantio.ButtonAlterarClick(Sender: TObject);
begin

  if EditDescricaoA.Text = '' then
  begin
    Application.MessageBox('É necessário inserir o campo DESCRIÇÃO','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    EditDescricaoA.SetFocus;
    Exit;
  end;

  if (EditQuantidadeA.Text = '') or (EditQuantidadeA.Text = '0') then
  begin
    Application.MessageBox('É necessário inserir o campo DESCRIÇÃO','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    EditQuantidadeA.SetFocus;
    Exit;
  end;

  if ComboBoxUnidadeA.Text = '' then
  begin
    Application.MessageBox('É necessário inserir o campo UNIDADE','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    ComboBoxUnidadeA.SetFocus;
    Exit;
  end;

  if EditDuracaoA.Text = '' then
  begin
    Application.MessageBox('É necessário inserir o campo DESCRIÇÃO','Atenção!',MB_ICONEXCLAMATION+MB_OK);
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
    ParamByName('@AREA').Value := AREA;
    ParamByName('@SITUACAO').Value := SITUACAO;
  end;
  ADOStoredProcAlteracaoPlantio.ExecProc;

  Application.MessageBox('Alterado com sucesso!','Confirmação',MB_ICONINFORMATION);
  ADOQueryConsultaPlantio.Close;
  ADOQueryConsultaPlantio.Open;

end;

procedure TFormPlantio.ButtonCadastrarClick(Sender: TObject);
var
  QUANTIDADECAD : Currency;
  DURACAOCAD : Integer;
begin

  if EditDescricao.Text = '' then
  begin
    Application.MessageBox('É necessário inserir o campo DESCRIÇÃO.','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    EditDescricao.SetFocus;
    Exit;
  end;

  if (EditQuantidade.Text = '') or (EditQuantidade.Text <= '0') then
  begin
    Application.MessageBox('É necessário inserir o campo QUANTIDADE.','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    EditQuantidade.SetFocus;
    Exit;
  end;

  if ComboBoxUnidade.Text = '' then
  begin
    Application.MessageBox('É necessário inserir o campo UNIDADE.','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    ComboBoxUnidade.SetFocus;
    Exit;
  end;

  if EditDuracao.Text = '' then
  begin
    Application.MessageBox('É necessário inserir o campo DURAÇÃO.','Atenção!',MB_ICONEXCLAMATION+MB_OK);
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
    ParamByName('@AREA').Value := CODIGOAREA1;
    ParamByName('@SITUACAO').Value := 1;
  end;
  ADOStoredProcCadastroPlantio.ExecProc;

  Application.MessageBox('Cadastrado com sucesso!','Confirmação',MB_ICONINFORMATION);
  ADOQueryConsultaPlantio.Close;
  ADOQueryConsultaPlantio.Open;
  ButtonLimparClick(Self);

end;

procedure TFormPlantio.ButtonColheitaClick(Sender: TObject);
begin
  Unit_Cadastro_Produto.FormCadastroProduto.CODIGOPLANTIO := ADOQueryConsultaPlantioCODIGO_PLANTIO.AsInteger;
  Unit_Cadastro_Produto.FormCadastroProduto.DESCRICAO := ADOQueryConsultaPlantioDESCRICAO_PLANTIO.AsString;
  Unit_Cadastro_Produto.FormCadastroProduto.QUANTIDADE := ADOQueryConsultaPlantioQUANTIDADE_PLANTIO.AsCurrency;
  Unit_Cadastro_Produto.FormCadastroProduto.UNIDADE := ADOQueryConsultaPlantioUNIDADE_PLANTIO.AsString;
  with Unit_Cadastro_Produto.FormCadastroProduto do
  begin
    EditDescricao.Text := DESCRICAO;
    EditQuantidade.Text := CurrToStr(QUANTIDADE);
    //ComboBoxUnidade.Text := UNIDADE;
    DatePickerEntrada.Date := Now;
  end;

  //Unit_Cadastro_Produto.FormCadastroProduto.ButtonCadastro.Visible := True;
  //Unit_Cadastro_Produto.FormCadastroProduto.ButtonCadastro2.Visible := False;
  Unit_Cadastro_Produto.FormCadastroProduto.Panel2.Visible := False;
  Unit_Cadastro_Produto.FormCadastroProduto.Panel4.Visible := True;


  Unit_Cadastro_Produto.FormCadastroProduto.ShowModal;
end;

procedure TFormPlantio.ButtonLimparAClick(Sender: TObject);
begin
  EditDescricaoA.Clear;
  EditQuantidadeA.Clear;
  DatePickerInicioA.Date := Now;
  DatePickerFimA.Date := Now;
  EditDuracaoA.Clear;
end;

procedure TFormPlantio.ButtonLimparClick(Sender: TObject);
begin
  EditDescricao.Clear;
  EditQuantidade.Clear;
  DatePickerInicio.Date := Now;
  DatePickerFim.Date := Now;
  EditDuracao.Clear;
end;

procedure TFormPlantio.ComboBoxUnidadeAKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormPlantio.ComboBoxUnidadeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormPlantio.DatePickerFimCloseUp(Sender: TObject);
var
  dataI, dataF : Tdate;
  duracao : integer;
begin
  dataI := DatePickerInicio.Date;
  dataF := DatePickerFim.Date;
  duracao := DaysBetween(dataI, dataF);
  EditDuracao.Text := IntToStr(duracao);
end;

procedure TFormPlantio.DBGrid1CellClick(Column: TColumn);
begin
  ADOQueryConsultaPlantio.Close;
  ADOQueryConsultaPlantio.Open;

  CODIGOAREA1 :=  ADOQueryConsultaAreaCODIGO_AREA.AsInteger;
  ADOQueryConsultaPlantio.Parameters.ParamByName('CodigoArea').Value := CODIGOAREA1;


  if ADOQueryConsultaAreaCODIGO_AREA.AsInteger = 0 then
  begin
    ButtonIniciarPlantio.Enabled := False;
    Panel6.Enabled := False;
  end
  else if ADOQueryConsultaAreaCODIGO_AREA.AsInteger <> 0 then
  begin
    ButtonIniciarPlantio.Enabled := True;
    Panel6.Enabled := True;
  end;

end;

procedure TFormPlantio.DBGrid2CellClick(Column: TColumn);
var
  DATAFIM : TDate;
  DIAFIM, MESFIM, ANOFIM : string;
begin
  if ADOQueryConsultaPlantioCODIGO_PLANTIO.AsInteger <> 0 then
  Begin
    CODIGOCOLHEITA := ADOQueryConsultaPlantioCODIGO_PLANTIO.AsInteger;
    Unit_Aplicacao_plantio.FormAplicacaoPlantio.CODIGOPLANTIO := ADOQueryConsultaPlantioCODIGO_PLANTIO.AsInteger;

    ADOQueryAplic.Parameters.ParamByName('CODIGOAPLIC').Value := ADOQueryConsultaPlantioCODIGO_PLANTIO.AsInteger;


    //DATAFIM := FormatDateTime('DD/MM/yyyy', ADOQueryConsultaPlantioDATA_FIM_PLANTIO.AsDateTime);

    DIAFIM := Copy(ADOQueryConsultaPlantioDATA_FIM_PLANTIO.AsString,9,2);
    MESFIM := Copy(ADOQueryConsultaPlantioDATA_FIM_PLANTIO.AsString,6,2);
    ANOFIM := Copy(ADOQueryConsultaPlantioDATA_FIM_PLANTIO.AsString,1,4);

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

    if ADOQueryConsultaPlantioCODIGO_PLANTIO.AsInteger = 0 then
    begin
      ButtonAplicacao.Enabled := False;
      ButtonAlterar.Enabled := False;
      Panel7.Enabled := False;
      Panel8.Enabled := False;
    end
    else if ADOQueryConsultaPlantioCODIGO_PLANTIO.AsInteger <> 0 then
    begin
      ButtonAplicacao.Enabled := True;
      ButtonAlterarPlantio.Enabled := True;
      Panel7.Enabled := True;
      Panel8.Enabled := True;
    end;

  end;

end;

procedure TFormPlantio.DBLookupComboBoxCidadeCoClick(Sender: TObject);
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
    SQL.add('from TB_AREA, TB_CIDADE, TB_ESTADO');
    SQL.add('where');
    SQL.Add('CIDADE_AREA = CodigoCidade and ESTADO_AREA = CodigoEstado and');
    SQL.Add('EstadoCidade = CodigoEstado and');
    SQL.add('SITUACAO_AREA = 1 and');
    SQL.add('CIDADE_AREA =' +IntToStr(ADOQueryCidadeCCodigoCidade.value)+'');
    Clipboard.AsText := ADOQueryConsultaArea.SQL.Text;
    Open;
  end;
end;

procedure TFormPlantio.DBLookupComboBoxEstadoCoClick(Sender: TObject);
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

procedure TFormPlantio.EditDescricaoAKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormPlantio.EditDescricaoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormPlantio.EditDuracaoAChange(Sender: TObject);
begin
  EditDuracaoAExit(Self);
end;

procedure TFormPlantio.EditDuracaoAExit(Sender: TObject);
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

procedure TFormPlantio.EditDuracaoAKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormPlantio.EditDuracaoChange(Sender: TObject);
begin
  EditDuracaoExit(Self);
end;

procedure TFormPlantio.EditDuracaoExit(Sender: TObject);
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

procedure TFormPlantio.EditDuracaoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormPlantio.EditQuantidadeAKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormPlantio.EditQuantidadeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormPlantio.FormShow(Sender: TObject);
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

procedure TFormPlantio.Panel2Click(Sender: TObject);
begin
  ButtonAlterarClick(Self);
end;

procedure TFormPlantio.Panel3Click(Sender: TObject);
begin
  ButtonLimparAClick(Self);
end;

procedure TFormPlantio.Panel4Click(Sender: TObject);
begin
  ButtonCadastrarClick(Self);
end;

procedure TFormPlantio.Panel5Click(Sender: TObject);
begin
  ButtonLimparClick(Self);
end;

procedure TFormPlantio.Panel6Click(Sender: TObject);
begin
  ButtonIniciarPlantioClick(Self);
end;

procedure TFormPlantio.Panel7Click(Sender: TObject);
begin
  ButtonAlterarPlantioClick(Self);
end;

procedure TFormPlantio.Panel8Click(Sender: TObject);
begin
  ButtonAplicacaoClick(Self);
end;

procedure TFormPlantio.Panel9Click(Sender: TObject);
begin
  ButtonColheitaClick(Self);
end;

procedure TFormPlantio.PanelConsultaClick(Sender: TObject);
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

procedure TFormPlantio.PanelConsultaMouseEnter(Sender: TObject);
begin
  PanelConsulta.Font.Size := 14;
end;

procedure TFormPlantio.PanelConsultaMouseLeave(Sender: TObject);
begin
  PanelConsulta.Font.Size := 12;
end;

procedure TFormPlantio.RadioGroupFiltroClick(Sender: TObject);
begin
  CODIGOAREA1 :=  ADOQueryConsultaAreaCODIGO_AREA.AsInteger;
  if RadioGroupFiltro.ItemIndex = 0 then
  begin
    with ADOQueryConsultaPlantio do
    begin
      Close;
      SQL.Clear;
      SQL.add('Select*, case SITUACAO_PLANTIO');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_PLANTIO, TB_AREA');
      SQL.add('where');
      SQL.Add('AREA_PLANTIO = CODIGO_AREA and CODIGO_AREA = :''CodigoArea''');
      SQL.Add('and SITUACAO_PLANTIO = 1');
      ADOQueryConsultaPlantio.Parameters.ParamByName('CodigoArea').Value := CODIGOAREA1;
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
      SQL.add('Select*, case SITUACAO_PLANTIO');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_PLANTIO, TB_AREA');
      SQL.add('where');
      SQL.Add('AREA_PLANTIO = CODIGO_AREA and CODIGO_AREA = :''CodigoArea''');
      SQL.Add('and SITUACAO_PLANTIO = 0');
      ADOQueryConsultaPlantio.Parameters.ParamByName('CodigoArea').Value := CODIGOAREA1;
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
      SQL.add('Select*, case SITUACAO_PLANTIO');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_PLANTIO, TB_AREA');
      SQL.add('where');
      SQL.Add('AREA_PLANTIO = CODIGO_AREA and CODIGO_AREA = :''CodigoArea''');
      ADOQueryConsultaPlantio.Parameters.ParamByName('CodigoArea').Value := CODIGOAREA1;
      Clipboard.AsText := ADOQueryConsultaPlantio.SQL.Text;
      Open;
    end;
  end;
end;

end.
