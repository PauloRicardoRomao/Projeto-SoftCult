unit Unit_Estoque_Insumos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.Menus, ClipBrd,
  Vcl.ExtDlgs, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.WinXPickers, Vcl.Imaging.pngimage;

type
  TFormEstoqueInsumos = class(TForm)
    Panel1: TPanel;
    PanelCadastroCampos: TPanel;
    Label2: TLabel;
    Label6: TLabel;
    EditValor: TEdit;
    MemoObs: TMemo;
    ButtonCadastrar: TButton;
    ButtonLimpar: TButton;
    PanelImagem: TPanel;
    ImageEstoqueInsumo: TImage;
    PanelAlteracaoCampos: TPanel;
    PanelImagemA: TPanel;
    ImageEstoqueInsumoA: TImage;
    PanelConsultaDBGrid: TPanel;
    SpeedButtonImagem: TSpeedButton;
    RadioGroupFiltro: TRadioGroup;
    DBGrid1: TDBGrid;
    PanelImagemC: TPanel;
    ImageEstoqueInsumoC: TImage;
    PanelMenu: TPanel;
    ImageMaquinario: TImage;
    PanelConsulta: TPanel;
    PanelCadastro: TPanel;
    PanelAlteracao: TPanel;
    ADOStoredProcCadastro: TADOStoredProc;
    ADOStoredProcAlteracao: TADOStoredProc;
    ADOQueryConsulta: TADOQuery;
    DataSource1: TDataSource;
    ADOStoredProcAtivarInativar: TADOStoredProc;
    ADOStoredProcExclusao: TADOStoredProc;
    OpenPictureDialogEstoqueInsumos: TOpenPictureDialog;
    PopupMenuImagem: TPopupMenu;
    popAmpliar: TMenuItem;
    OpenPictureDialogEstoqueInsumosC: TOpenPictureDialog;
    PopupMenuDB: TPopupMenu;
    popAtivar: TMenuItem;
    popInativar: TMenuItem;
    popExcluir: TMenuItem;
    DBLookupComboBoxEstado: TDBLookupComboBox;
    DBLookupComboBoxCidade: TDBLookupComboBox;
    Label1: TLabel;
    Label3: TLabel;
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
    DBLookupComboBoxEstadoA: TDBLookupComboBox;
    Label4: TLabel;
    Label5: TLabel;
    DBLookupComboBoxCidadeA: TDBLookupComboBox;
    EditValorA: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    MemoObsA: TMemo;
    ButtonAlterar: TButton;
    ButtonLimparA: TButton;
    OpenPictureDialogEstoqueInsumosA: TOpenPictureDialog;
    ADOQueryConsultaCODIGO_ESTOQUE_INSUMO: TAutoIncField;
    ADOQueryConsultaCIDADE_ESTOQUE_INSUMO: TIntegerField;
    ADOQueryConsultaESTADO_ESTOQUE_INSUMO: TIntegerField;
    ADOQueryConsultaVALOR_ESTOQUE_INSUMO: TBCDField;
    ADOQueryConsultaFOTO_ESTOQUE_INSUMO: TStringField;
    ADOQueryConsultaOBS_ESTOQUE_INSUMO: TStringField;
    ADOQueryConsultaCodigoEstado: TIntegerField;
    ADOQueryConsultaSiglaEstado: TStringField;
    ADOQueryConsultaCodigoCidade: TIntegerField;
    ADOQueryConsultaNomeCidade: TStringField;
    ADOQueryConsultaEstadoCidade: TIntegerField;
    ADOQueryConsultaCapital: TBooleanField;
    DBLookupComboBoxCidadeCo: TDBLookupComboBox;
    Label12: TLabel;
    DBLookupComboBoxEstadoCo: TDBLookupComboBox;
    Label11: TLabel;
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
    ADOQueryConsultaSITUACAO_ESTOQUE_INSUMO: TBooleanField;
    ADOQueryConsultaSituação: TStringField;
    ComboBoxSituacao: TComboBox;
    Label14: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    ADOConnection1: TADOConnection;
    procedure ButtonLimparClick(Sender: TObject);
    procedure ButtonCadastrarClick(Sender: TObject);
    procedure ImageEstoqueInsumoClick(Sender: TObject);
    procedure DBLookupComboBoxEstadoKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBoxCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure EditValorKeyPress(Sender: TObject; var Key: Char);
    procedure EditValorChange(Sender: TObject);
    procedure EditValorClick(Sender: TObject);
    procedure EditValorEnter(Sender: TObject);
    procedure DBLookupComboBoxEstadoClick(Sender: TObject);
    procedure DBLookupComboBoxEstadoAClick(Sender: TObject);
    procedure EditValorAChange(Sender: TObject);
    procedure EditValorAClick(Sender: TObject);
    procedure EditValorAEnter(Sender: TObject);
    procedure EditValorAKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonAlterarClick(Sender: TObject);
    procedure ButtonLimparAClick(Sender: TObject);
    procedure DBLookupComboBoxEstadoAKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBoxCidadeAKeyPress(Sender: TObject; var Key: Char);
    procedure ImageEstoqueInsumoAClick(Sender: TObject);
    procedure popAmpliarClick(Sender: TObject);
    procedure SpeedButtonImagemClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure PanelConsultaClick(Sender: TObject);
    procedure PanelCadastroClick(Sender: TObject);
    procedure PanelAlteracaoClick(Sender: TObject);
    procedure DBLookupComboBoxEstadoCoClick(Sender: TObject);
    procedure DBLookupComboBoxCidadeCoClick(Sender: TObject);
    procedure RadioGroupFiltroClick(Sender: TObject);
    procedure popExcluirClick(Sender: TObject);
    procedure popAtivarClick(Sender: TObject);
    procedure popInativarClick(Sender: TObject);
    procedure DBLookupComboBoxCidadeClick(Sender: TObject);
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
  FormEstoqueInsumos: TFormEstoqueInsumos;

implementation

{$R *.dfm}





procedure TFormEstoqueInsumos.ButtonAlterarClick(Sender: TObject);
begin

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

  if OpenPictureDialogEstoqueInsumosA.FileName = '' then
  begin
    Ia := '';
  end;

  with ADOStoredProcAlteracao.Parameters do
  begin
    ParamByName('@CODIGO').Value := CODIGO;
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

end;

procedure TFormEstoqueInsumos.ButtonCadastrarClick(Sender: TObject);
begin

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

  if OpenPictureDialogEstoqueInsumos.FileName = '' then
  begin
    I := '';
  end
  else if OpenPictureDialogEstoqueInsumos.FileName <> '' then
  begin
    I := OpenPictureDialogEstoqueInsumos.FileName;
  end;

  with ADOStoredProcCadastro.Parameters do
  begin
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

procedure TFormEstoqueInsumos.ButtonLimparAClick(Sender: TObject);
begin
  DBLookupComboBoxEstadoA.KeyValue := null;
  DBLookupComboBoxCidadeA.KeyValue := null;
  //EditValorA.Text := '0,00';
  EditValorA.Clear;
  OpenPictureDialogEstoqueInsumosA.FileName := '';
  ImageEstoqueInsumoA.Picture := nil;
  MemoObsA.Lines.Clear;
end;

procedure TFormEstoqueInsumos.ButtonLimparClick(Sender: TObject);
begin
  DBLookupComboBoxEstado.KeyValue := null;
  DBLookupComboBoxCidade.KeyValue := null;
  //EditValor.Text := '0,00';
  EditValor.Clear;
  OpenPictureDialogEstoqueInsumos.FileName := '';
  ImageEstoqueInsumo.Picture := nil;
  MemoObs.Lines.Clear;
end;

procedure TFormEstoqueInsumos.DBGrid1CellClick(Column: TColumn);
begin
  if ADOQueryConsultaCODIGO_ESTOQUE_INSUMO.AsInteger <> 0 then
  begin
    popExcluir.Enabled := True;

    CODIGO := ADOQueryConsultaCODIGO_ESTOQUE_INSUMO.AsInteger;
    DBLookupComboBoxEstadoA.KeyValue := ADOQueryConsultaESTADO_ESTOQUE_INSUMO.AsInteger;
    DBLookupComboBoxCidadeA.KeyValue := ADOQueryConsultaCIDADE_ESTOQUE_INSUMO.AsInteger;
    Ia := ADOQueryConsultaFOTO_ESTOQUE_INSUMO.AsString;
    EditValorA.Text := FloatToStr(ADOQueryConsultaVALOR_ESTOQUE_INSUMO.AsFloat);
    MemoObsA.Lines.Text := ADOQueryConsultaOBS_ESTOQUE_INSUMO.AsString;

    if ADOQueryConsultaSITUACAO_ESTOQUE_INSUMO.AsBoolean = True then
    begin
      SITUACAO := 1;
      popAtivar.Enabled := False;
      popInativar.Enabled := True;
    end
    else if ADOQueryConsultaSITUACAO_ESTOQUE_INSUMO.AsBoolean = False then
    begin
      SITUACAO := 0;
      popAtivar.Enabled := True;
      popInativar.Enabled := False;
    end;

    if ADOQueryConsultaCODIGO_ESTOQUE_INSUMO.AsInteger <> 0 then
    begin
      PanelAlteracao.Enabled := True;
    end
    else if ADOQueryConsultaCODIGO_ESTOQUE_INSUMO.AsInteger = 0 then
    begin
      PanelAlteracao.Enabled := False;
    end;

    if ADOQueryConsultaFOTO_ESTOQUE_INSUMO.AsString <> '' then
    begin
      OpenPictureDialogEstoqueInsumosC.FileName := ADOQueryConsultaFOTO_ESTOQUE_INSUMO.AsString;
      ImageEstoqueInsumoC.Picture.LoadFromFile(OpenPictureDialogEstoqueInsumosC.FileName);
      //ImageEstoqueInsumoC.PopupMenu := PopupMenuImagem;
      OpenPictureDialogEstoqueInsumosA.FileName := ADOQueryConsultaFOTO_ESTOQUE_INSUMO.AsString;
      ImageEstoqueInsumoA.Picture.LoadFromFile(Ia);
    end
    else if ADOQueryConsultaFOTO_ESTOQUE_INSUMO.AsString = '' then
    begin
      OpenPictureDialogEstoqueInsumosC.FileName := '';
      ImageEstoqueInsumoC.Picture := nil;
      ImageEstoqueInsumoC.PopupMenu := nil;
      SpeedButtonImagemClick(Self);
      ImageEstoqueInsumoA.Picture := nil;
      OpenPictureDialogEstoqueInsumosA.FileName := ADOQueryConsultaFOTO_ESTOQUE_INSUMO.AsString;
    end

  end;

end;

procedure TFormEstoqueInsumos.DBLookupComboBoxCidadeAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormEstoqueInsumos.DBLookupComboBoxCidadeClick(Sender: TObject);
begin
  if DBLookupComboBoxEstado.KeyValue = null then
  begin
    DBLookupComboBoxEstado.KeyValue := ADOQueryCidadeCodigoEstado.AsInteger;
  end;
end;

procedure TFormEstoqueInsumos.DBLookupComboBoxCidadeCoClick(Sender: TObject);
begin
  if DBLookupComboBoxEstadoCo.KeyValue = null then
  begin
    DBLookupComboBoxEstadoCo.KeyValue := ADOQueryCidadeCCodigoEstado.AsInteger;
  end;

  if RadioGroupFiltro.ItemIndex = 0 then
  begin
    with ADOQueryConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.add('Select*, case SITUACAO_ESTOQUE_INSUMO');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_ESTOQUE_INSUMO, TB_CIDADE, TB_ESTADO');
      SQL.add('where');
      SQL.Add('CIDADE_ESTOQUE_INSUMO = CodigoCidade and ESTADO_ESTOQUE_INSUMO = CodigoEstado and');
      SQL.Add('EstadoCidade = CodigoEstado and');
      SQL.add('SITUACAO_ESTOQUE_INSUMO = 1 and');
      SQL.add('CIDADE_ESTOQUE_INSUMO =' +IntToStr(ADOQueryCidadeCCodigoCidade.value)+'');
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
      SQL.add('Select*, case SITUACAO_ESTOQUE_INSUMO');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_ESTOQUE_INSUMO, TB_CIDADE, TB_ESTADO');
      SQL.add('where');
      SQL.Add('CIDADE_ESTOQUE_INSUMO = CodigoCidade and ESTADO_ESTOQUE_INSUMO = CodigoEstado and');
      SQL.Add('EstadoCidade = CodigoEstado and');
      SQL.add('SITUACAO_ESTOQUE_INSUMO = 0 and');
      SQL.add('CIDADE_ESTOQUE_INSUMO =' +IntToStr(ADOQueryCidadeCCodigoCidade.value)+'');
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
      SQL.add('Select*, case SITUACAO_ESTOQUE_INSUMO');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_ESTOQUE_INSUMO, TB_CIDADE, TB_ESTADO');
      SQL.add('where');
      SQL.Add('CIDADE_ESTOQUE_INSUMO = CodigoCidade and ESTADO_ESTOQUE_INSUMO = CodigoEstado and');
      SQL.Add('EstadoCidade = CodigoEstado and');
      SQL.add('CIDADE_ESTOQUE_INSUMO =' +IntToStr(ADOQueryCidadeCCodigoCidade.value)+'');
      Clipboard.AsText := ADOQueryConsulta.SQL.Text;
      Open;
    end;
  end;
end;

procedure TFormEstoqueInsumos.DBLookupComboBoxCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;

end;

procedure TFormEstoqueInsumos.DBLookupComboBoxEstadoAClick(Sender: TObject);
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

procedure TFormEstoqueInsumos.DBLookupComboBoxEstadoAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormEstoqueInsumos.DBLookupComboBoxEstadoClick(Sender: TObject);
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

procedure TFormEstoqueInsumos.DBLookupComboBoxEstadoCoClick(Sender: TObject);
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

procedure TFormEstoqueInsumos.DBLookupComboBoxEstadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;

end;

procedure TFormEstoqueInsumos.EditValorAChange(Sender: TObject);
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
  EditValorA.SelStart := Length(EditValorA.text) ;
 }
end;

procedure TFormEstoqueInsumos.EditValorAClick(Sender: TObject);
begin
  EditValorA.SelStart := Length(EditValorA.text) ;
end;

procedure TFormEstoqueInsumos.EditValorAEnter(Sender: TObject);
begin
  EditValorA.SelStart := Length(EditValorA.text);
end;

procedure TFormEstoqueInsumos.EditValorAKeyPress(Sender: TObject;
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

procedure TFormEstoqueInsumos.EditValorChange(Sender: TObject);
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

procedure TFormEstoqueInsumos.EditValorClick(Sender: TObject);
begin
  EditValor.SelStart := Length(EditValor.text) ;
end;

procedure TFormEstoqueInsumos.EditValorEnter(Sender: TObject);
begin
  EditValor.SelStart := Length(EditValor.text);
end;

procedure TFormEstoqueInsumos.EditValorKeyPress(Sender: TObject; var Key: Char);
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

procedure TFormEstoqueInsumos.FormShow(Sender: TObject);
begin
  ADOQueryConsulta.Close;
  ADOQueryConsulta.Open;
end;

procedure TFormEstoqueInsumos.ImageEstoqueInsumoAClick(Sender: TObject);
begin
  OpenPictureDialogEstoqueInsumosA.Execute();

  if OpenPictureDialogEstoqueInsumosA.FileName = '' then
  begin
    Exit;
  end
  else
  begin
    ImageEstoqueInsumoA.Picture.LoadFromFile(OpenPictureDialogEstoqueInsumosA.FileName);
    Ia := OpenPictureDialogEstoqueInsumosA.FileName;
  end
end;

procedure TFormEstoqueInsumos.ImageEstoqueInsumoClick(Sender: TObject);
begin
  OpenPictureDialogEstoqueInsumos.Execute();

  if OpenPictureDialogEstoqueInsumos.FileName = '' then
  begin
    Exit;
  end
  else
  begin
    ImageEstoqueInsumo.Picture.LoadFromFile(OpenPictureDialogEstoqueInsumos.FileName);
    I := OpenPictureDialogEstoqueInsumos.FileName;
  end
end;

procedure TFormEstoqueInsumos.Panel2Click(Sender: TObject);
begin
   ButtonAlterarClick(Self);
end;

procedure TFormEstoqueInsumos.Panel3Click(Sender: TObject);
begin
  ButtonLimparAClick(Self);
end;

procedure TFormEstoqueInsumos.Panel4Click(Sender: TObject);
begin
  ButtonCadastrarClick(Self);
end;

procedure TFormEstoqueInsumos.Panel5Click(Sender: TObject);
begin
  ButtonLimparClick(Self);
end;

procedure TFormEstoqueInsumos.PanelAlteracaoClick(Sender: TObject);
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

procedure TFormEstoqueInsumos.PanelAlteracaoMouseEnter(Sender: TObject);
begin
  PanelAlteracao.Font.Size := 14;
end;

procedure TFormEstoqueInsumos.PanelAlteracaoMouseLeave(Sender: TObject);
begin
  PanelAlteracao.Font.Size := 12;
end;

procedure TFormEstoqueInsumos.PanelCadastroClick(Sender: TObject);
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

procedure TFormEstoqueInsumos.PanelCadastroMouseEnter(Sender: TObject);
begin
  PanelCadastro.Font.Size := 14;
end;

procedure TFormEstoqueInsumos.PanelCadastroMouseLeave(Sender: TObject);
begin
  PanelCadastro.Font.Size := 12;
end;

procedure TFormEstoqueInsumos.PanelConsultaClick(Sender: TObject);
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

procedure TFormEstoqueInsumos.PanelConsultaMouseEnter(Sender: TObject);
begin
  PanelConsulta.Font.Size := 14;
end;

procedure TFormEstoqueInsumos.PanelConsultaMouseLeave(Sender: TObject);
begin
  PanelConsulta.Font.Size := 12;
end;

procedure TFormEstoqueInsumos.popAmpliarClick(Sender: TObject);
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

procedure TFormEstoqueInsumos.popAtivarClick(Sender: TObject);
begin
  if ADOQueryConsultaSituação.AsString = 'Inativo' then
  begin
    ADOStoredProcAtivarInativar.Parameters.ParamByName('@SITUACAO').Value := 1;
    ADOStoredProcAtivarInativar.Parameters.ParamByName('@CODIGO').Value := ADOQueryConsultaCODIGO_ESTOQUE_INSUMO.AsInteger;
    ADOStoredProcAtivarInativar.ExecProc;
  end;
  ADOQueryConsulta.Close;
  ADOQueryConsulta.Open;
end;

procedure TFormEstoqueInsumos.RadioGroupFiltroClick(Sender: TObject);
begin
  if RadioGroupFiltro.ItemIndex = 0 then
  begin
    with ADOQueryConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.add('Select*, case SITUACAO_ESTOQUE_INSUMO');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_ESTOQUE_INSUMO, TB_CIDADE, TB_ESTADO');
      SQL.add('where');
      SQL.Add('CIDADE_ESTOQUE_INSUMO = CodigoCidade and ESTADO_ESTOQUE_INSUMO = CodigoEstado and');
      SQL.Add('EstadoCidade = CodigoEstado and');
      SQL.add('SITUACAO_ESTOQUE_INSUMO = 1');
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
      SQL.add('Select*, case SITUACAO_ESTOQUE_INSUMO');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_ESTOQUE_INSUMO, TB_CIDADE, TB_ESTADO');
      SQL.add('where');
      SQL.Add('CIDADE_ESTOQUE_INSUMO = CodigoCidade and ESTADO_ESTOQUE_INSUMO = CodigoEstado and');
      SQL.Add('EstadoCidade = CodigoEstado and');
      SQL.add('SITUACAO_ESTOQUE_INSUMO = 0');
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
      SQL.add('Select*, case SITUACAO_ESTOQUE_INSUMO');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_ESTOQUE_INSUMO, TB_CIDADE, TB_ESTADO');
      SQL.add('where');
      SQL.Add('CIDADE_ESTOQUE_INSUMO = CodigoCidade and ESTADO_ESTOQUE_INSUMO = CodigoEstado and');
      SQL.Add('EstadoCidade = CodigoEstado');
      Clipboard.AsText := ADOQueryConsulta.SQL.Text;
      Open;
    end;
  end;
end;

procedure TFormEstoqueInsumos.SpeedButtonImagemClick(Sender: TObject);
begin
  PanelImagemC.width := 136;
  PanelImagemC.Height := 142;
  PanelImagemC.left := 305;
  PanelImagemC.top := 11;

  SpeedButtonImagem.Visible := False;
end;

procedure TFormEstoqueInsumos.popExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Excluir?','Confirmação', mb_iconquestion + mb_yesno
    ) = idYes then
  begin
    ADOStoredProcExclusao.Parameters.ParamByName('@CODIGO').Value := ADOQueryConsultaCODIGO_ESTOQUE_INSUMO.AsInteger;
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

procedure TFormEstoqueInsumos.popInativarClick(Sender: TObject);
begin
  if ADOQueryConsultaSituação.AsString = 'Ativo' then
  begin
    ADOStoredProcAtivarInativar.Parameters.ParamByName('@SITUACAO').Value := 0;
    ADOStoredProcAtivarInativar.Parameters.ParamByName('@CODIGO').Value := ADOQueryConsultaCODIGO_ESTOQUE_INSUMO.AsInteger;
    ADOStoredProcAtivarInativar.ExecProc;
  end;
  ADOQueryConsulta.Close;
  ADOQueryConsulta.Open;
end;

end.
