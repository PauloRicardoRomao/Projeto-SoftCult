unit Unit_Estoque_producao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.ExtCtrls, ClipBrd,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtDlgs, Vcl.Menus,
  Data.Win.ADODB, Vcl.Imaging.pngimage;

type
  TFormEstoqueProduzido = class(TForm)
    Panel1: TPanel;
    PanelConsultaDBGrid: TPanel;
    SpeedButtonImagem: TSpeedButton;
    Label12: TLabel;
    Label11: TLabel;
    RadioGroupFiltro: TRadioGroup;
    DBGrid1: TDBGrid;
    PanelImagemC: TPanel;
    ImageEstoqueC: TImage;
    DBLookupComboBoxCidadeCo: TDBLookupComboBox;
    DBLookupComboBoxEstadoCo: TDBLookupComboBox;
    PanelCadastroCampos: TPanel;
    Label2: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label14: TLabel;
    EditValor: TEdit;
    MemoObs: TMemo;
    ButtonCadastrar: TButton;
    ButtonLimpar: TButton;
    PanelImagem: TPanel;
    ImageEstoque: TImage;
    DBLookupComboBoxEstado: TDBLookupComboBox;
    DBLookupComboBoxCidade: TDBLookupComboBox;
    ComboBoxSituacao: TComboBox;
    PanelAlteracaoCampos: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    PanelImagemA: TPanel;
    ImageEstoqueA: TImage;
    DBLookupComboBoxEstadoA: TDBLookupComboBox;
    DBLookupComboBoxCidadeA: TDBLookupComboBox;
    EditValorA: TEdit;
    MemoObsA: TMemo;
    ButtonAlterar: TButton;
    ButtonLimparA: TButton;
    PanelMenu: TPanel;
    ImageMaquinario: TImage;
    PanelConsulta: TPanel;
    PanelCadastro: TPanel;
    PanelAlteracao: TPanel;
    ADOQueryConsulta: TADOQuery;
    ADOStoredProcCadastro: TADOStoredProc;
    ADOStoredProcAlteracao: TADOStoredProc;
    DataSource1: TDataSource;
    ADOStoredProcAtivarInativar: TADOStoredProc;
    ADOStoredProcExclusao: TADOStoredProc;
    PopupMenuDB: TPopupMenu;
    popAtivar: TMenuItem;
    popInativar: TMenuItem;
    popExcluir: TMenuItem;
    ADOQueryEstado: TADOQuery;
    ADOQueryEstadoCodigoEstado: TIntegerField;
    ADOQueryEstadoSiglaEstado: TStringField;
    DataSourceEstado: TDataSource;
    ADOQueryCidade: TADOQuery;
    ADOQueryCidadeCodigoCidade: TIntegerField;
    ADOQueryCidadeNomeCidade: TStringField;
    ADOQueryCidadeEstadoCidade: TIntegerField;
    ADOQueryCidadeCapital: TBooleanField;
    ADOQueryCidadeCodigoEstado: TIntegerField;
    ADOQueryCidadeSiglaEstado: TStringField;
    DataSourceCidade: TDataSource;
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
    OpenPictureDialogEstoque: TOpenPictureDialog;
    OpenPictureDialogEstoqueA: TOpenPictureDialog;
    OpenPictureDialogEstoqueC: TOpenPictureDialog;
    PopupMenuImagem: TPopupMenu;
    popAmpliar: TMenuItem;
    ADOQueryConsultaCODIGO_ESTOQUE: TAutoIncField;
    ADOQueryConsultaCAPACIDADE_ESTOQUE: TBCDField;
    ADOQueryConsultaUNIDADE_ESTOQUE: TStringField;
    ADOQueryConsultaCIDADE_ESTOQUE: TIntegerField;
    ADOQueryConsultaESTADO_ESTOQUE: TIntegerField;
    ADOQueryConsultaVALOR_ESTOQUE: TBCDField;
    ADOQueryConsultaFOTO_ESTOQUE: TStringField;
    ADOQueryConsultaSITUACAO_ESTOQUE: TBooleanField;
    ADOQueryConsultaOBS_ESTOQUE: TStringField;
    ADOQueryConsultaCodigoEstado: TIntegerField;
    ADOQueryConsultaSiglaEstado: TStringField;
    ADOQueryConsultaCodigoCidade: TIntegerField;
    ADOQueryConsultaNomeCidade: TStringField;
    ADOQueryConsultaEstadoCidade: TIntegerField;
    ADOQueryConsultaCapital: TBooleanField;
    ADOQueryConsultaSituação: TStringField;
    EditCapacidade: TEdit;
    Label10: TLabel;
    EditCapacidadeA: TEdit;
    Label16: TLabel;
    ComboBoxUnidadeA: TComboBox;
    ComboBoxUnidade: TComboBox;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    ADOConnection1: TADOConnection;
    procedure ButtonCadastrarClick(Sender: TObject);
    procedure ButtonLimparClick(Sender: TObject);
    procedure EditCapacidadeKeyPress(Sender: TObject; var Key: Char);
    procedure EditValorKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBoxEstadoKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBoxCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxSituacaoKeyPress(Sender: TObject; var Key: Char);
    procedure EditUnidadeCapacidadeKeyPress(Sender: TObject; var Key: Char);
    procedure EditValorChange(Sender: TObject);
    procedure EditValorClick(Sender: TObject);
    procedure EditValorEnter(Sender: TObject);
    procedure ImageEstoqueClick(Sender: TObject);
    procedure EditCapacidadeAKeyPress(Sender: TObject; var Key: Char);
    procedure EditUnidadeCapacidadeAKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBoxEstadoAKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBoxCidadeAKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxSituacaoAKeyPress(Sender: TObject; var Key: Char);
    procedure EditValorAKeyPress(Sender: TObject; var Key: Char);
    procedure EditValorAEnter(Sender: TObject);
    procedure EditValorAClick(Sender: TObject);
    procedure EditValorAChange(Sender: TObject);
    procedure ButtonLimparAClick(Sender: TObject);
    procedure ImageEstoqueAClick(Sender: TObject);
    procedure ButtonAlterarClick(Sender: TObject);
    procedure DBLookupComboBoxEstadoClick(Sender: TObject);
    procedure DBLookupComboBoxEstadoAClick(Sender: TObject);
    procedure PanelConsultaClick(Sender: TObject);
    procedure PanelCadastroClick(Sender: TObject);
    procedure PanelAlteracaoClick(Sender: TObject);
    procedure SpeedButtonImagemClick(Sender: TObject);
    procedure RadioGroupFiltroClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure popAtivarClick(Sender: TObject);
    procedure popInativarClick(Sender: TObject);
    procedure popExcluirClick(Sender: TObject);
    procedure popAmpliarClick(Sender: TObject);
    procedure DBLookupComboBoxEstadoCoClick(Sender: TObject);
    procedure DBLookupComboBoxCidadeCoClick(Sender: TObject);
    procedure DBLookupComboBoxCidadeClick(Sender: TObject);
    procedure DBLookupComboBoxCidadeAClick(Sender: TObject);
    procedure ComboBoxUnidadeKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxUnidadeAKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure PanelConsultaMouseLeave(Sender: TObject);
    procedure PanelConsultaMouseEnter(Sender: TObject);
    procedure PanelCadastroMouseEnter(Sender: TObject);
    procedure PanelCadastroMouseLeave(Sender: TObject);
    procedure PanelAlteracaoMouseLeave(Sender: TObject);
    procedure PanelAlteracaoMouseEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CODIGO, SITUACAO : integer;
    I, Ia : string;
  end;

var
  FormEstoqueProduzido: TFormEstoqueProduzido;

implementation

{$R *.dfm}

uses Unit_Plantio;

procedure TFormEstoqueProduzido.ButtonAlterarClick(Sender: TObject);
begin
  if EditCapacidadeA.Text = '' then
  begin
    Application.MessageBox('É necessário inserir o campo CAPACIDADE','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    EditCapacidadeA.SetFocus;
    Exit;
  end;

  if ComboBoxUnidadeA.Text = '' then
  begin
    Application.MessageBox('É necessário inserir o campo UNIDADE','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    ComboBoxUnidadeA.SetFocus;
    Exit;
  end;

  if DBLookupComboBoxEstadoA.KeyValue = null then
  begin
    Application.MessageBox('É necessário inserir o campo ESTADO','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    DBLookupComboBoxEstadoA.SetFocus;
    Exit;
  end;
  if DBLookupComboBoxCidadeA.KeyValue = null then
  begin
    Application.MessageBox('É necessário inserir o campo CIDADE','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    DBLookupComboBoxCidadeA.SetFocus;
    Exit;
  end;

  if (EditValorA.Text = '.') then
  begin
    Application.MessageBox('valor digitado INVÁLIDO','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    EditValorA.Clear;
    Exit;
  end;

  if OpenPictureDialogEstoqueA.FileName = '' then
  begin
    Ia := '';
  end;

  with ADOStoredProcAlteracao.Parameters do
  begin
    ParamByName('@CODIGO').Value := CODIGO;
    ParamByName('@CAPACIDADE').Value := StrToCurr(EditCapacidadeA.Text);
    ParamByName('@UNIDADE').Value := ComboBoxUnidadeA.Text;
    ParamByName('@ESTADO').Value := DBLookupComboBoxEstadoA.KeyValue;
    ParamByName('@CIDADE').Value := DBLookupComboBoxCidadeA.KeyValue;
    ParamByName('@VALOR').Value := StrToFloat(EditValorA.Text);
    ParamByName('@FOTO').Value := Ia;
    ParamByName('@SITUACAO').Value := SITUACAO;
    ParamByName('@OBS').Value := MemoObsA.Lines.Text;
  end;
  ADOStoredProcAlteracao.ExecProc;
  Application.MessageBox('Alterado com sucesso!','Confirmação',MB_ICONINFORMATION);
  ADOQueryConsulta.Close;
  ADOQueryConsulta.Open;
  Unit_Plantio.FormPlantio.ADOQueryConsultaArea.Close;
  Unit_Plantio.FormPlantio.ADOQueryConsultaArea.Open;
  Unit_Plantio.FormPlantio.ADOQueryConsultaPlantio.Close;
  Unit_Plantio.FormPlantio.ADOQueryConsultaPlantio.Open;
  Unit_Plantio.FormPlantio.ADOQueryConsultaEstoque1.Close;
  Unit_Plantio.FormPlantio.ADOQueryConsultaEstoque1.Open;
end;

procedure TFormEstoqueProduzido.ButtonCadastrarClick(Sender: TObject);
begin

  if EditCapacidade.Text = '' then
  begin
    Application.MessageBox('É necessário inserir o campo CAPACIDADE','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    EditCapacidade.SetFocus;
    Exit;
  end;

  if ComboBoxUnidade.Text = '' then
  begin
    Application.MessageBox('É necessário inserir o campo UNIDADE','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    ComboBoxUnidade.SetFocus;
    Exit;
  end;

  if DBLookupComboBoxEstado.KeyValue = null then
  begin
    Application.MessageBox('É necessário inserir o campo ESTADO','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    DBLookupComboBoxEstado.SetFocus;
    Exit;
  end;
  if DBLookupComboBoxCidade.KeyValue = null then
  begin
    Application.MessageBox('É necessário inserir o campo CIDADE','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    DBLookupComboBoxCidade.SetFocus;
    Exit;
  end;

  if ComboBoxSituacao.ItemIndex = -1 then
  begin
    Application.MessageBox('É necessário inserir o campo SITUAÇÃO','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    ComboBoxSituacao.SetFocus;
    Exit;
  end;

  if (EditValor.Text = '.') then
  begin
    Application.MessageBox('valor digitado INVÁLIDO','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    EditValor.Clear;
    Exit;
  end;

  if OpenPictureDialogEstoque.FileName = '' then
  begin
    I := '';
  end
  else if OpenPictureDialogEstoque.FileName <> '' then
  begin
    I := OpenPictureDialogEstoque.FileName;
  end;

  with ADOStoredProcCadastro.Parameters do
  begin
    ParamByName('@CAPACIDADE').Value := StrToCurr(EditCapacidade.Text);
    ParamByName('@UNIDADE').Value := ComboBoxUnidade.Text;
    ParamByName('@ESTADO').Value := DBLookupComboBoxEstado.KeyValue;
    ParamByName('@CIDADE').Value := DBLookupComboBoxCidade.KeyValue;
    ParamByName('@VALOR').Value := StrToFloat(EditValor.Text);
    ParamByName('@FOTO').Value := I;
    ParamByName('@SITUACAO').Value := ComboBoxSituacao.ItemIndex;
    ParamByName('@OBS').Value := MemoObs.Lines.Text;
  end;
  ADOStoredProcCadastro.ExecProc;
  Application.MessageBox('Cadastrado com sucesso!','Confirmação',MB_ICONINFORMATION);
  ADOQueryConsulta.Close;
  ADOQueryConsulta.Open;
  ButtonLimparClick(Self);
end;

procedure TFormEstoqueProduzido.ButtonLimparAClick(Sender: TObject);
begin
  EditCapacidadeA.Clear;
  DBLookupComboBoxEstadoA.KeyValue := null;
  DBLookupComboBoxCidadeA.KeyValue := null;
  //EditValorA.Text := '0,00';
  EditValorA.Clear;
  OpenPictureDialogEstoqueA.FileName := '';
  ImageEstoqueA.Picture := nil;
  MemoObsA.Lines.Clear;
end;

procedure TFormEstoqueProduzido.ButtonLimparClick(Sender: TObject);
begin
  EditCapacidade.Clear;
  DBLookupComboBoxEstado.KeyValue := null;
  DBLookupComboBoxCidade.KeyValue := null;
  //EditValor.Text := '0,00';
  EditValor.Clear;
  OpenPictureDialogEstoque.FileName := '';
  ImageEstoque.Picture := nil;
  MemoObs.Lines.Clear;
end;

procedure TFormEstoqueProduzido.ComboBoxSituacaoAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormEstoqueProduzido.ComboBoxSituacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormEstoqueProduzido.ComboBoxUnidadeAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormEstoqueProduzido.ComboBoxUnidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormEstoqueProduzido.DBGrid1CellClick(Column: TColumn);
begin
  if ADOQueryConsultaCODIGO_ESTOQUE.AsInteger <> 0 then
  begin
    popExcluir.Enabled := True;

    CODIGO := ADOQueryConsultaCODIGO_ESTOQUE.AsInteger;

    EditCapacidadeA.Text := CurrToStr(ADOQueryConsultaCAPACIDADE_ESTOQUE.AsCurrency);
    ComboBoxUnidadeA.Text := ADOQueryConsultaUNIDADE_ESTOQUE.AsString;

    DBLookupComboBoxEstadoA.KeyValue := ADOQueryConsultaESTADO_ESTOQUE.AsInteger;
    DBLookupComboBoxCidadeA.KeyValue := ADOQueryConsultaCIDADE_ESTOQUE.AsInteger;
    Ia := ADOQueryConsultaFOTO_ESTOQUE.AsString;
    EditValorA.Text := FloatToStr(ADOQueryConsultaVALOR_ESTOQUE.AsFloat);
    MemoObsA.Lines.Text := ADOQueryConsultaOBS_ESTOQUE.AsString;

    if ADOQueryConsultaSITUACAO_ESTOQUE.AsBoolean = True then
    begin
      SITUACAO := 1;
      popAtivar.Enabled := False;
      popInativar.Enabled := True;
    end
    else if ADOQueryConsultaSITUACAO_ESTOQUE.AsBoolean = False then
    begin
      SITUACAO := 0;
      popAtivar.Enabled := True;
      popInativar.Enabled := False;
    end;

    if ADOQueryConsultaCODIGO_ESTOQUE.AsInteger = 0 then
    begin
      PanelAlteracao.Enabled := False;
    end
    else if ADOQueryConsultaCODIGO_ESTOQUE.AsInteger <> 0 then
    begin
      PanelAlteracao.Enabled := True;
    end;

    if ADOQueryConsultaFOTO_ESTOQUE.AsString <> '' then
    begin
      OpenPictureDialogEstoqueC.FileName := ADOQueryConsultaFOTO_ESTOQUE.AsString;
      ImageEstoqueC.Picture.LoadFromFile(OpenPictureDialogEstoqueC.FileName);
     // ImageEstoqueC.PopupMenu := PopupMenuImagem;
      OpenPictureDialogEstoqueA.FileName := ADOQueryConsultaFOTO_ESTOQUE.AsString;
      ImageEstoqueA.Picture.LoadFromFile(Ia);
    end
    else if ADOQueryConsultaFOTO_ESTOQUE.AsString = '' then
    begin
      OpenPictureDialogEstoqueC.FileName := '';
      ImageEstoqueC.Picture := nil;
      ImageEstoqueC.PopupMenu := nil;
      SpeedButtonImagemClick(Self);
      OpenPictureDialogEstoqueA.FileName := ADOQueryConsultaFOTO_ESTOQUE.AsString;
      ImageEstoqueA.Picture := nil;
    end;


  end;

end;

procedure TFormEstoqueProduzido.DBLookupComboBoxCidadeAClick(Sender: TObject);
begin
  if DBLookupComboBoxEstadoA.KeyValue = null then
  begin
    DBLookupComboBoxEstadoA.KeyValue := ADOQueryCidadeEstadoCidade.AsInteger;
  end;
end;

procedure TFormEstoqueProduzido.DBLookupComboBoxCidadeAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormEstoqueProduzido.DBLookupComboBoxCidadeClick(Sender: TObject);
begin
  if DBLookupComboBoxEstado.KeyValue = null then
  begin
    DBLookupComboBoxEstado.KeyValue := ADOQueryCidadeEstadoCidade.AsInteger;
  end;

end;

procedure TFormEstoqueProduzido.DBLookupComboBoxCidadeCoClick(Sender: TObject);
begin
  if DBLookupComboBoxEstadoCo.KeyValue = null then
  begin
    DBLookupComboBoxEstadoCo.KeyValue := ADOQueryCidadeCEstadoCidade.AsInteger;
  end;

  if RadioGroupFiltro.ItemIndex = 0 then
  begin
    with ADOQueryConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.add('Select*, case SITUACAO_ESTOQUE');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_ESTOQUE, TB_CIDADE, TB_ESTADO');
      SQL.add('where');
      SQL.Add('CIDADE_ESTOQUE = CodigoCidade and ESTADO_ESTOQUE = CodigoEstado and');
      SQL.Add('EstadoCidade = CodigoEstado and');
      SQL.add('SITUACAO_ESTOQUE = 1 and');
      SQL.add('CIDADE_ESTOQUE =' +IntToStr(ADOQueryCidadeCCodigoCidade.value)+'');
      Clipboard.AsText := ADOQueryConsulta.SQL.Text;
      Open;
    end;
  end
  else if RadioGroupFiltro.ItemIndex = 1 then
  begin
    with ADOQueryConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.add('Select*, case SITUACAO_ESTOQUE');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_ESTOQUE, TB_CIDADE, TB_ESTADO');
      SQL.add('where');
      SQL.Add('CIDADE_ESTOQUE = CodigoCidade and ESTADO_ESTOQUE = CodigoEstado and');
      SQL.Add('EstadoCidade = CodigoEstado and');
      SQL.add('SITUACAO_ESTOQUE = 0 and');
      SQL.add('CIDADE_ESTOQUE =' +IntToStr(ADOQueryCidadeCCodigoCidade.value)+'');
      Clipboard.AsText := ADOQueryConsulta.SQL.Text;
      Open;
    end;
  end
  else if RadioGroupFiltro.ItemIndex = 2 then
  begin
    with ADOQueryConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.add('Select*, case SITUACAO_ESTOQUE');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_ESTOQUE, TB_CIDADE, TB_ESTADO');
      SQL.add('where');
      SQL.Add('CIDADE_ESTOQUE = CodigoCidade and ESTADO_ESTOQUE = CodigoEstado and');
      SQL.Add('EstadoCidade = CodigoEstado and');
      SQL.add('CIDADE_ESTOQUE =' +IntToStr(ADOQueryCidadeCCodigoCidade.value)+'');
      Clipboard.AsText := ADOQueryConsulta.SQL.Text;
      Open;
    end;
  end;
end;

procedure TFormEstoqueProduzido.DBLookupComboBoxCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormEstoqueProduzido.DBLookupComboBoxEstadoAClick(Sender: TObject);
begin
  with ADOQueryCidade do
  begin
	  Close;
    SQL.Clear;
    SQL.add('select*from TB_CIDADE, TB_ESTADO');
    SQL.add('where TB_CIDADE.EstadoCidade = TB_ESTADO.CodigoEstado');
    SQL.add('and TB_CIDADE.EstadoCidade =' +IntToStr(ADOQueryEstadoCodigoEstado.value)+'');
    Open;
  end;
end;

procedure TFormEstoqueProduzido.DBLookupComboBoxEstadoAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormEstoqueProduzido.DBLookupComboBoxEstadoClick(Sender: TObject);
begin
  with ADOQueryCidade do
  begin
	  Close;
    SQL.Clear;
    SQL.add('select*from TB_CIDADE, TB_ESTADO');
    SQL.add('where TB_CIDADE.EstadoCidade = TB_ESTADO.CodigoEstado');
    SQL.add('and TB_CIDADE.EstadoCidade =' +IntToStr(ADOQueryEstadoCodigoEstado.value)+'');
    Open;
  end;
end;

procedure TFormEstoqueProduzido.DBLookupComboBoxEstadoCoClick(Sender: TObject);
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

procedure TFormEstoqueProduzido.DBLookupComboBoxEstadoKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormEstoqueProduzido.EditCapacidadeAKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormEstoqueProduzido.EditCapacidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormEstoqueProduzido.EditUnidadeCapacidadeAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormEstoqueProduzido.EditUnidadeCapacidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormEstoqueProduzido.EditValorAChange(Sender: TObject);
var
  s : string;
  v : double;
  I : integer;
begin
{  If (EditValorA.Text = emptystr) then
  Begin
    EditValorA.Text := '0,00';
    Exit;
  End;

  s := '';
  for I := 1 to length(EditValorA.Text) do
    if (EditValorA.text[I] in ['0'..'9']) then
    s := s + EditValorA.text[I];

  v := strtofloat(s);
  v := (v /100);

  EditValorA.text := FormatFloat('#####0.00',v);
  EditValorA.SelStart := Length(EditValorA.text);
 }
end;

procedure TFormEstoqueProduzido.EditValorAClick(Sender: TObject);
begin
  EditValorA.SelStart := Length(EditValorA.text) ;
end;

procedure TFormEstoqueProduzido.EditValorAEnter(Sender: TObject);
begin
  EditValorA.SelStart := Length(EditValorA.text);
end;

procedure TFormEstoqueProduzido.EditValorAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if NOT (Key in ['0'..'9', #8, #9, #13, '.', ',']) then
  begin
    key := #0;
  end;

  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormEstoqueProduzido.EditValorChange(Sender: TObject);
var
  s : string;
  v : double;
  I : integer;
begin
{  If (EditValor.Text = emptystr) then
  Begin
    EditValor.Text := '0,00';
    Exit;
  End;

  s := '';
  for I := 1 to length(EditValor.Text) do
    if (EditValor.text[I] in ['0'..'9']) then
    s := s + EditValor.text[I];

  v := strtofloat(s);
  v := (v /100);

  EditValor.text := FormatFloat('#####0.00',v);
  EditValor.SelStart := Length(EditValor.text) ;
}
end;

procedure TFormEstoqueProduzido.EditValorClick(Sender: TObject);
begin
  EditValor.SelStart := Length(EditValor.text) ;
end;

procedure TFormEstoqueProduzido.EditValorEnter(Sender: TObject);
begin
  EditValor.SelStart := Length(EditValor.text);
end;

procedure TFormEstoqueProduzido.EditValorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if NOT (Key in ['0'..'9', #8, #9, #13, '.', ',']) then
  begin
    key := #0;
  end;

  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;

end;

procedure TFormEstoqueProduzido.FormShow(Sender: TObject);
begin
  ADOQueryConsulta.Close;
  ADOQueryConsulta.Open;
end;

procedure TFormEstoqueProduzido.ImageEstoqueAClick(Sender: TObject);
begin
  OpenPictureDialogEstoqueA.Execute();

  if OpenPictureDialogEstoqueA.FileName = '' then
  begin
    Exit;
  end
  else
  begin
    ImageEstoqueA.Picture.LoadFromFile(OpenPictureDialogEstoqueA.FileName);
    Ia := OpenPictureDialogEstoqueA.FileName;
  end
end;

procedure TFormEstoqueProduzido.ImageEstoqueClick(Sender: TObject);
begin
  OpenPictureDialogEstoque.Execute();

  if OpenPictureDialogEstoque.FileName = '' then
  begin
    Exit;
  end
  else
  begin
    ImageEstoque.Picture.LoadFromFile(OpenPictureDialogEstoque.FileName);
    I := OpenPictureDialogEstoque.FileName;
  end
end;

procedure TFormEstoqueProduzido.Panel2Click(Sender: TObject);
begin
  ButtonAlterarClick(Self);
end;

procedure TFormEstoqueProduzido.Panel3Click(Sender: TObject);
begin
  ButtonLimparAClick(Self);
end;

procedure TFormEstoqueProduzido.Panel4Click(Sender: TObject);
begin
  ButtonCadastrarClick(Self);
end;

procedure TFormEstoqueProduzido.Panel5Click(Sender: TObject);
begin
  ButtonLimparClick(Self);
end;

procedure TFormEstoqueProduzido.PanelAlteracaoClick(Sender: TObject);
begin
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

procedure TFormEstoqueProduzido.PanelAlteracaoMouseEnter(Sender: TObject);
begin
  PanelAlteracao.Font.Size := 14;
end;

procedure TFormEstoqueProduzido.PanelAlteracaoMouseLeave(Sender: TObject);
begin
  PanelAlteracao.Font.Size := 12;
end;

procedure TFormEstoqueProduzido.PanelCadastroClick(Sender: TObject);
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

procedure TFormEstoqueProduzido.PanelCadastroMouseEnter(Sender: TObject);
begin
  PanelCadastro.Font.Size := 14;
end;

procedure TFormEstoqueProduzido.PanelCadastroMouseLeave(Sender: TObject);
begin
  PanelCadastro.Font.Size := 12;
end;

procedure TFormEstoqueProduzido.PanelConsultaClick(Sender: TObject);
begin

  ADOQueryConsulta.Close;
  ADOQueryConsulta.Open;

  RadioGroupFiltroClick(Self);

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

  ADOQueryConsulta.Close;
  ADOQueryConsulta.Open;
end;

procedure TFormEstoqueProduzido.PanelConsultaMouseEnter(Sender: TObject);
begin
  PanelConsulta.Font.Size := 14;
end;

procedure TFormEstoqueProduzido.PanelConsultaMouseLeave(Sender: TObject);
begin
  PanelConsulta.Font.Size := 12;
end;

procedure TFormEstoqueProduzido.popAmpliarClick(Sender: TObject);
begin
  if SpeedButtonImagem.Visible = False then
  begin
    PanelImagemC.width := 400;
    PanelImagemC.Height := 400;
    PanelImagemC.left := 231;
    PanelImagemC.top := 0;

    SpeedButtonImagem.Visible := True;
    SpeedButtonImagem.left := 134;
    SpeedButtonImagem.top := 65;

    popAmpliar.Caption := 'Visualização normal';
  end

  else if SpeedButtonImagem.Visible = True then
  begin
    PanelImagemC.width := 136;
    PanelImagemC.Height := 142;
    PanelImagemC.left := 288;
    PanelImagemC.top := 11;

    SpeedButtonImagem.Visible := False;

    popAmpliar.Caption := 'Ampliar imagem';
  end;
end;

procedure TFormEstoqueProduzido.popAtivarClick(Sender: TObject);
begin
  if ADOQueryConsultaSituação.AsString = 'Inativo' then
  begin
    ADOStoredProcAtivarInativar.Parameters.ParamByName('@SITUACAO').Value := 1;
    ADOStoredProcAtivarInativar.Parameters.ParamByName('@CODIGO').Value := ADOQueryConsultaCODIGO_ESTOQUE.AsInteger;
    ADOStoredProcAtivarInativar.ExecProc;
  end;
  ADOQueryConsulta.Close;
  ADOQueryConsulta.Open;
end;

procedure TFormEstoqueProduzido.popExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Excluir?','Confirmação', mb_iconquestion + mb_yesno
    ) = idYes then
  begin
    ADOStoredProcExclusao.Parameters.ParamByName('@CODIGO').Value := ADOQueryConsultaCODIGO_ESTOQUE.AsInteger;
    ADOStoredProcExclusao.ExecProc;
    ADOQueryConsulta.Close;
    ADOQueryConsulta.Open;
  end
  else if Application.MessageBox('Excluir?','Confirmação',mb_iconquestion + mb_yesno
    ) = ID_NO then
  begin
    Exit;
  end;
end;

procedure TFormEstoqueProduzido.popInativarClick(Sender: TObject);
begin
  if ADOQueryConsultaSituação.AsString = 'Ativo' then
  begin
    ADOStoredProcAtivarInativar.Parameters.ParamByName('@SITUACAO').Value := 0;
    ADOStoredProcAtivarInativar.Parameters.ParamByName('@CODIGO').Value := ADOQueryConsultaCODIGO_ESTOQUE.AsInteger;
    ADOStoredProcAtivarInativar.ExecProc;
  end;
  ADOQueryConsulta.Close;
  ADOQueryConsulta.Open;
end;

procedure TFormEstoqueProduzido.RadioGroupFiltroClick(Sender: TObject);
begin
  if RadioGroupFiltro.ItemIndex = 0 then
  begin
    with ADOQueryConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.add('Select*, case SITUACAO_ESTOQUE');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_ESTOQUE, TB_CIDADE, TB_ESTADO');
      SQL.add('where');
      SQL.Add('CIDADE_ESTOQUE = CodigoCidade and ESTADO_ESTOQUE = CodigoEstado and');
      SQL.Add('EstadoCidade = CodigoEstado and');
      SQL.add('SITUACAO_ESTOQUE = 1');
      Clipboard.AsText := ADOQueryConsulta.SQL.Text;
      Open;
    end;
  end
  else if RadioGroupFiltro.ItemIndex = 1 then
  begin
    with ADOQueryConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.add('Select*, case SITUACAO_ESTOQUE');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_ESTOQUE, TB_CIDADE, TB_ESTADO');
      SQL.add('where');
      SQL.Add('CIDADE_ESTOQUE = CodigoCidade and ESTADO_ESTOQUE = CodigoEstado and');
      SQL.Add('EstadoCidade = CodigoEstado and');
      SQL.add('SITUACAO_ESTOQUE = 0');
      Clipboard.AsText := ADOQueryConsulta.SQL.Text;
      Open;
    end;
  end
  else if RadioGroupFiltro.ItemIndex = 2 then
  begin
    with ADOQueryConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.add('Select*, case SITUACAO_ESTOQUE');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_ESTOQUE, TB_CIDADE, TB_ESTADO');
      SQL.add('where');
      SQL.Add('CIDADE_ESTOQUE = CodigoCidade and ESTADO_ESTOQUE = CodigoEstado and');
      SQL.Add('EstadoCidade = CodigoEstado');
      Clipboard.AsText := ADOQueryConsulta.SQL.Text;
      Open;
    end;
  end;
end;

procedure TFormEstoqueProduzido.SpeedButtonImagemClick(Sender: TObject);
begin
  PanelImagemC.width := 136;
  PanelImagemC.Height := 142;
  PanelImagemC.left := 305;
  PanelImagemC.top := 11;

  SpeedButtonImagem.Visible := False;
end;

end.
