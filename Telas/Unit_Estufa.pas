unit Unit_Estufa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Imaging.pngimage, ClipBrd,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,
  Data.Win.ADODB, Vcl.Menus;

type
  TFormEstufa = class(TForm)
    Panel1: TPanel;
    PanelAlteracaoCampos: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ButtonAlterar: TButton;
    ButtonLimparA: TButton;
    EditDescricaoA: TEdit;
    EditAreaA: TEdit;
    DBLookupComboBoxEstadoA: TDBLookupComboBox;
    DBLookupComboBoxCidadeA: TDBLookupComboBox;
    MemoObsA: TMemo;
    ComboBoxUnidadeA: TComboBox;
    PanelConsultaDBGrid: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    DBGrid1: TDBGrid;
    DBLookupComboBoxEstadoCo: TDBLookupComboBox;
    DBLookupComboBoxCidadeCo: TDBLookupComboBox;
    RadioGroupFiltro: TRadioGroup;
    PanelCadastroCampos: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label14: TLabel;
    EditDescricao: TEdit;
    MemoObs: TMemo;
    ButtonCadastrar: TButton;
    ButtonLimpar: TButton;
    DBLookupComboBoxEstado: TDBLookupComboBox;
    DBLookupComboBoxCidade: TDBLookupComboBox;
    EditArea: TEdit;
    ComboBoxSituacao: TComboBox;
    ComboBoxUnidade: TComboBox;
    PanelMenu: TPanel;
    ImageMaquinario: TImage;
    PanelConsulta: TPanel;
    PanelCadastro: TPanel;
    PanelAlteracao: TPanel;
    ADOQueryCidade: TADOQuery;
    ADOQueryCidadeCodigoCidade: TIntegerField;
    ADOQueryCidadeNomeCidade: TStringField;
    ADOQueryCidadeEstadoCidade: TIntegerField;
    ADOQueryCidadeCapital: TBooleanField;
    ADOQueryCidadeCodigoEstado: TIntegerField;
    ADOQueryCidadeSiglaEstado: TStringField;
    ADOQueryCidadeC: TADOQuery;
    ADOQueryCidadeCCodigoCidade: TIntegerField;
    ADOQueryCidadeCNomeCidade: TStringField;
    ADOQueryCidadeCEstadoCidade: TIntegerField;
    ADOQueryCidadeCCapital: TBooleanField;
    ADOQueryCidadeCCodigoEstado: TIntegerField;
    ADOQueryCidadeCSiglaEstado: TStringField;
    ADOQueryConsulta: TADOQuery;
    ADOQueryEstado: TADOQuery;
    ADOQueryEstadoCodigoEstado: TIntegerField;
    ADOQueryEstadoSiglaEstado: TStringField;
    ADOQueryEstadoC: TADOQuery;
    ADOQueryEstadoCCodigoEstado: TIntegerField;
    ADOQueryEstadoCSiglaEstado: TStringField;
    ADOStoredProcAlteracao: TADOStoredProc;
    ADOStoredProcAtivarInativar: TADOStoredProc;
    ADOStoredProcCadastro: TADOStoredProc;
    ADOStoredProcExclusao: TADOStoredProc;
    DataSourceEstadoC: TDataSource;
    DataSourceEstado: TDataSource;
    DataSourceCidade: TDataSource;
    DataSourceCidadeC: TDataSource;
    DataSourceConsulta: TDataSource;
    PopupMenuConsulta: TPopupMenu;
    popAtivar: TMenuItem;
    popInativar: TMenuItem;
    popExcluir: TMenuItem;
    ADOQueryConsultaCODIGO_ESTUFA: TAutoIncField;
    ADOQueryConsultaDESCRICAO_ESTUFA: TStringField;
    ADOQueryConsultaTAMANHO_ESTUFA: TFMTBCDField;
    ADOQueryConsultaUNIDADE_ESTUFA: TStringField;
    ADOQueryConsultaCIDADE_ESTUFA: TIntegerField;
    ADOQueryConsultaESTADO_ESTUFA: TIntegerField;
    ADOQueryConsultaOBS_ESTUFA: TStringField;
    ADOQueryConsultaSITUACAO_ESTUFA: TBooleanField;
    ADOQueryConsultaCodigoCidade: TIntegerField;
    ADOQueryConsultaNomeCidade: TStringField;
    ADOQueryConsultaEstadoCidade: TIntegerField;
    ADOQueryConsultaCapital: TBooleanField;
    ADOQueryConsultaCodigoEstado: TIntegerField;
    ADOQueryConsultaSiglaEstado: TStringField;
    ADOQueryConsultaSituação: TStringField;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    ADOConnection1: TADOConnection;
    procedure DBLookupComboBoxCidadeCoClick(Sender: TObject);
    procedure DBLookupComboBoxEstadoCoClick(Sender: TObject);
    procedure RadioGroupFiltroClick(Sender: TObject);
    procedure PanelConsultaClick(Sender: TObject);
    procedure PanelCadastroClick(Sender: TObject);
    procedure PanelAlteracaoClick(Sender: TObject);
    procedure DBLookupComboBoxEstadoAClick(Sender: TObject);
    procedure DBLookupComboBoxCidadeAClick(Sender: TObject);
    procedure ButtonLimparAClick(Sender: TObject);
    procedure DBLookupComboBoxEstadoClick(Sender: TObject);
    procedure DBLookupComboBoxCidadeClick(Sender: TObject);
    procedure ButtonLimparClick(Sender: TObject);
    procedure ButtonCadastrarClick(Sender: TObject);
    procedure ButtonAlterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure EditDescricaoAKeyPress(Sender: TObject; var Key: Char);
    procedure EditAreaAKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxUnidadeAKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBoxEstadoAKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBoxCidadeAKeyPress(Sender: TObject; var Key: Char);
    procedure EditDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure EditAreaKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxUnidadeKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxSituacaoKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBoxEstadoKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBoxCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure popAtivarClick(Sender: TObject);
    procedure popInativarClick(Sender: TObject);
    procedure popExcluirClick(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure PanelConsultaMouseLeave(Sender: TObject);
    procedure PanelConsultaMouseEnter(Sender: TObject);
    procedure PanelCadastroMouseEnter(Sender: TObject);
    procedure PanelCadastroMouseLeave(Sender: TObject);
    procedure PanelAlteracaoMouseEnter(Sender: TObject);
    procedure PanelAlteracaoMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CODIGO, SITUACAO : integer;
  end;

var
  FormEstufa: TFormEstufa;

implementation

{$R *.dfm}




procedure TFormEstufa.ButtonAlterarClick(Sender: TObject);
begin

  if DBLookupComboBoxEstadoA.KeyValue = null then
  begin
    Application.MessageBox('É necessário selecionar o ESTADO.','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    DBLookupComboBoxEstadoA.SetFocus;
    Exit;
  end;

  if DBLookupComboBoxCidadeA.KeyValue = null then
  begin
    Application.MessageBox('É necessário selecionar a CIDADE.','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    DBLookupComboBoxCidadeA.SetFocus;
    Exit;
  end;

  with ADOStoredProcAlteracao.Parameters do
  begin
    ParamByName('@CODIGO').Value := CODIGO;
    ParamByName('@DESCRICAO').Value := EditDescricaoA.Text;
    ParamByName('@TAMANHO').Value := StrToCurr(EditAreaA.Text);
    ParamByName('@UNIDADE').Value := ComboBoxUnidadeA.Text;
    ParamByName('@ESTADO').Value := DBLookupComboBoxEstadoA.KeyValue;
    ParamByName('@CIDADE').Value := DBLookupComboBoxCidadeA.KeyValue;
    ParamByName('@OBS').Value := MemoObsA.Lines.Text;
    ParamByName('@SITUACAO').Value := SITUACAO;
  end;
  ADOStoredProcAlteracao.ExecProc;

  Application.MessageBox('Alterado com sucesso!','Confirmação',MB_ICONINFORMATION);
  ADOQueryConsulta.Close;
  ADOQueryConsulta.Open;

end;

procedure TFormEstufa.ButtonCadastrarClick(Sender: TObject);
begin

  if DBLookupComboBoxEstado.KeyValue = null then
  begin
    Application.MessageBox('É necessário selecionar o ESTADO.','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    DBLookupComboBoxEstado.SetFocus;
    Exit;
  end;

  if DBLookupComboBoxCidade.KeyValue = null then
  begin
    Application.MessageBox('É necessário selecionar a CIDADE.','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    DBLookupComboBoxCidade.SetFocus;
    Exit;
  end;

  if ComboBoxSituacao.ItemIndex = -1 then
  begin
    Application.MessageBox('É necessário selecionar à SITUAÇÃO.','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    ComboBoxSituacao.SetFocus;
    Exit;
  end;

  with ADOStoredProcCadastro.Parameters do
  begin
    ParamByName('@DESCRICAO').Value := EditDescricao.Text;
    ParamByName('@TAMANHO').Value := StrToCurr(EditArea.Text);
    ParamByName('@UNIDADE').Value := ComboBoxUnidade.Text;
    ParamByName('@ESTADO').Value := DBLookupComboBoxEstado.KeyValue;
    ParamByName('@CIDADE').Value := DBLookupComboBoxCidade.KeyValue;
    ParamByName('@OBS').Value := MemoObs.Lines.Text;
    ParamByName('@SITUACAO').Value := ComboBoxSituacao.ItemIndex;
  end;
  ADOStoredProcCadastro.ExecProc;
  Application.MessageBox('Cadastrado com sucesso!','Confirmação',MB_ICONINFORMATION);
  ADOQueryConsulta.Close;
  ADOQueryConsulta.Open;
  ButtonLimparClick(Self);
end;

procedure TFormEstufa.ButtonLimparAClick(Sender: TObject);
begin
  EditDescricaoA.Clear;
  EditAreaA.Clear;
  DBLookupComboBoxEstadoA.KeyValue := null;
  DBLookupComboBoxCidadeA.KeyValue := null;
  MemoObsA.Lines.Clear;
end;

procedure TFormEstufa.ButtonLimparClick(Sender: TObject);
begin
  EditDescricao.Clear;
  EditArea.Clear;
  DBLookupComboBoxEstado.KeyValue := null;
  DBLookupComboBoxCidade.KeyValue := null;
  MemoObs.Lines.Clear;
  ComboBoxSituacao.ItemIndex := 1;
end;

procedure TFormEstufa.ComboBoxSituacaoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormEstufa.ComboBoxUnidadeAKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormEstufa.ComboBoxUnidadeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormEstufa.DBGrid1CellClick(Column: TColumn);
begin

  if ADOQueryConsultaCODIGO_ESTUFA.AsInteger <> 0 then
  begin
    popExcluir.Enabled := True;

    CODIGO := ADOQueryConsultaCODIGO_ESTUFA.AsInteger;
    EditDescricaoA.Text := ADOQueryConsultaDESCRICAO_ESTUFA.AsString;
    EditAreaA.Text := CurrToStr(ADOQueryConsultaTAMANHO_ESTUFA.AsCurrency);
    ComboBoxUnidadeA.Text := ADOQueryConsultaUNIDADE_ESTUFA.AsString;
    DBLookupComboBoxEstadoA.KeyValue := ADOQueryConsultaESTADO_ESTUFA.AsInteger;
    DBLookupComboBoxCidadeA.KeyValue := ADOQueryConsultaCIDADE_ESTUFA.AsInteger;
    MemoObsA.Lines.Text := ADOQueryConsultaOBS_ESTUFA.Text;

    if ADOQueryConsultaSITUACAO_ESTUFA.AsBoolean = True then
    begin
      SITUACAO := 1;
      popAtivar.Enabled := False;
      popInativar.Enabled := True;
    end
    else if ADOQueryConsultaSITUACAO_ESTUFA.AsBoolean = False then
    begin
      SITUACAO := 0;
      popAtivar.Enabled := True;
      popInativar.Enabled := False;
    end;

    if ADOQueryConsultaCODIGO_ESTUFA.AsInteger = 0 then
    begin
      PanelAlteracao.Enabled := False;
    end
    else if ADOQueryConsultaCODIGO_ESTUFA.AsInteger <> 0 then
    begin
      PanelAlteracao.Enabled := True;
    end;
  end;

end;

procedure TFormEstufa.DBLookupComboBoxCidadeAClick(Sender: TObject);
begin
  if DBLookupComboBoxEstadoA.KeyValue = null then
  begin
    DBLookupComboBoxEstadoA.KeyValue := ADOQueryCidadeEstadoCidade.AsInteger;
  end;
end;

procedure TFormEstufa.DBLookupComboBoxCidadeAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormEstufa.DBLookupComboBoxCidadeClick(Sender: TObject);
begin
  if DBLookupComboBoxEstado.KeyValue = 0 then
  begin
    DBLookupComboBoxEstado.KeyValue := ADOQueryCidadeEstadoCidade.AsInteger;
  end;
end;

procedure TFormEstufa.DBLookupComboBoxCidadeCoClick(Sender: TObject);
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
      SQL.add('Select*, case SITUACAO_ESTUFA');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_ESTUFA, TB_CIDADE, TB_ESTADO');
      SQL.add('where');
      SQL.Add('CIDADE_ESTUFA = CodigoCidade and ESTADO_ESTUFA = CodigoEstado and');
      SQL.Add('EstadoCidade = CodigoEstado and');
      SQL.add('SITUACAO_ESTUFA = 1 and');
      SQL.add('CIDADE_ESTUFA =' +IntToStr(ADOQueryCidadeCCodigoCidade.value)+'');
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
      SQL.add('Select*, case SITUACAO_ESTUFA');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_ESTUFA, TB_CIDADE, TB_ESTADO');
      SQL.add('where');
      SQL.Add('CIDADE_ESTUFA = CodigoCidade and ESTADO_ESTUFA = CodigoEstado and');
      SQL.Add('EstadoCidade = CodigoEstado and');
      SQL.add('SITUACAO_ESTUFA = 0 and');
      SQL.add('CIDADE_ESTUFA =' +IntToStr(ADOQueryCidadeCCodigoCidade.value)+'');
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
      SQL.add('Select*, case SITUACAO_ESTUFA');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_ESTUFA, TB_CIDADE, TB_ESTADO');
      SQL.add('where');
      SQL.Add('CIDADE_ESTUFA = CodigoCidade and ESTADO_ESTUFA = CodigoEstado and');
      SQL.Add('EstadoCidade = CodigoEstado and');
      SQL.add('CIDADE_ESTUFA =' +IntToStr(ADOQueryCidadeCCodigoCidade.value)+'');
      Clipboard.AsText := ADOQueryConsulta.SQL.Text;
      Open;
    end;
  end;
end;

procedure TFormEstufa.DBLookupComboBoxCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormEstufa.DBLookupComboBoxEstadoAClick(Sender: TObject);
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

procedure TFormEstufa.DBLookupComboBoxEstadoAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormEstufa.DBLookupComboBoxEstadoClick(Sender: TObject);
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

procedure TFormEstufa.DBLookupComboBoxEstadoCoClick(Sender: TObject);
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

procedure TFormEstufa.DBLookupComboBoxEstadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormEstufa.EditAreaAKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormEstufa.EditAreaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormEstufa.EditDescricaoAKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormEstufa.EditDescricaoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormEstufa.FormShow(Sender: TObject);
begin
  ADOQueryConsulta.Close;
  ADOQueryConsulta.Open;
end;

procedure TFormEstufa.Panel2Click(Sender: TObject);
begin
  ButtonAlterarClick(Self);
end;

procedure TFormEstufa.Panel3Click(Sender: TObject);
begin
  ButtonLimparAClick(Self);
end;

procedure TFormEstufa.Panel4Click(Sender: TObject);
begin
  ButtonCadastrarClick(Self);
end;

procedure TFormEstufa.Panel5Click(Sender: TObject);
begin
  ButtonLimparClick(Self);
end;

procedure TFormEstufa.PanelAlteracaoClick(Sender: TObject);
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

procedure TFormEstufa.PanelAlteracaoMouseEnter(Sender: TObject);
begin
  PanelAlteracao.Font.Size := 14;
end;

procedure TFormEstufa.PanelAlteracaoMouseLeave(Sender: TObject);
begin
  PanelAlteracao.Font.Size := 12;
end;

procedure TFormEstufa.PanelCadastroClick(Sender: TObject);
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

procedure TFormEstufa.PanelCadastroMouseEnter(Sender: TObject);
begin
  PanelCadastro.Font.Size := 14;
end;

procedure TFormEstufa.PanelCadastroMouseLeave(Sender: TObject);
begin
  PanelCadastro.Font.Size := 12;
end;

procedure TFormEstufa.PanelConsultaClick(Sender: TObject);
begin
  ADOQueryConsulta.Close;
  ADOQueryConsulta.Open;

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

procedure TFormEstufa.PanelConsultaMouseEnter(Sender: TObject);
begin
  PanelConsulta.Font.Size := 14;
end;

procedure TFormEstufa.PanelConsultaMouseLeave(Sender: TObject);
begin
  PanelConsulta.Font.Size := 12;
end;

procedure TFormEstufa.popAtivarClick(Sender: TObject);
begin
  if ADOQueryConsultaSituação.AsString = 'Inativo' then
  begin
    ADOStoredProcAtivarInativar.Parameters.ParamByName('@SITUACAO').Value := 1;
    ADOStoredProcAtivarInativar.Parameters.ParamByName('@CODIGO').Value := ADOQueryConsultaCODIGO_ESTUFA.AsInteger;
    ADOStoredProcAtivarInativar.ExecProc;
  end;
  ADOQueryConsulta.Close;
  ADOQueryConsulta.Open;
end;

procedure TFormEstufa.popExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Excluir?','Confirmação', mb_iconquestion + mb_yesno
    ) = idYes then
  begin
    ADOStoredProcExclusao.Parameters.ParamByName('@CODIGO').Value := ADOQueryConsultaCODIGO_ESTUFA.AsInteger;
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

procedure TFormEstufa.popInativarClick(Sender: TObject);
begin
  if ADOQueryConsultaSituação.AsString = 'Ativo' then
  begin
    ADOStoredProcAtivarInativar.Parameters.ParamByName('@SITUACAO').Value := 0;
    ADOStoredProcAtivarInativar.Parameters.ParamByName('@CODIGO').Value := ADOQueryConsultaCODIGO_Estufa.AsInteger;
    ADOStoredProcAtivarInativar.ExecProc;
  end;
  ADOQueryConsulta.Close;
  ADOQueryConsulta.Open;
end;

procedure TFormEstufa.RadioGroupFiltroClick(Sender: TObject);
begin
  if RadioGroupFiltro.ItemIndex = 0 then
  begin
    with ADOQueryConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.add('Select*, case SITUACAO_ESTUFA');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_ESTUFA, TB_CIDADE, TB_ESTADO');
      SQL.add('where');
      SQL.Add('CIDADE_ESTUFA = CodigoCidade and ESTADO_ESTUFA = CodigoEstado and');
      SQL.Add('EstadoCidade = CodigoEstado and');
      SQL.add('SITUACAO_ESTUFA = 1');
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
      SQL.add('Select*, case SITUACAO_ESTUFA');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_ESTUFA, TB_CIDADE, TB_ESTADO');
      SQL.add('where');
      SQL.Add('CIDADE_ESTUFA = CodigoCidade and ESTADO_ESTUFA = CodigoEstado and');
      SQL.Add('EstadoCidade = CodigoEstado and');
      SQL.add('SITUACAO_ESTUFA = 0');
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
      SQL.add('Select*, case SITUACAO_ESTUFA');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_ESTUFA, TB_CIDADE, TB_ESTADO');
      SQL.add('where');
      SQL.Add('CIDADE_ESTUFA = CodigoCidade and ESTADO_ESTUFA = CodigoEstado and');
      SQL.Add('EstadoCidade = CodigoEstado');
      Clipboard.AsText := ADOQueryConsulta.SQL.Text;
      Open;
    end;
  end;
end;

end.
