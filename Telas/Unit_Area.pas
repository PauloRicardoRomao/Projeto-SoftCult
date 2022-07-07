unit Unit_Area;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.WinXPickers, Vcl.DBCtrls, ClipBrd,
  Data.Win.ADODB, Vcl.Menus, Vcl.Imaging.pngimage;

type
  TFormArea = class(TForm)
    Panel1: TPanel;
    PanelCadastroCampos: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    EditDescricao: TEdit;
    MemoObs: TMemo;
    ButtonCadastrar: TButton;
    ButtonLimpar: TButton;
    PanelAlteracaoCampos: TPanel;
    ButtonAlterar: TButton;
    ButtonLimparA: TButton;
    PanelConsultaDBGrid: TPanel;
    DBGrid1: TDBGrid;
    PanelMenu: TPanel;
    ImageMaquinario: TImage;
    PanelConsulta: TPanel;
    PanelCadastro: TPanel;
    PanelAlteracao: TPanel;
    DBLookupComboBoxEstado: TDBLookupComboBox;
    DBLookupComboBoxCidade: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    ADOQueryConsulta: TADOQuery;
    ADOStoredProcCadastro: TADOStoredProc;
    ADOStoredProcAlteracao: TADOStoredProc;
    ADOStoredProcExclusao: TADOStoredProc;
    DataSourceConsulta: TDataSource;
    EditArea: TEdit;
    Label8: TLabel;
    ADOQueryCidade: TADOQuery;
    DataSourceCidade: TDataSource;
    Label4: TLabel;
    EditDescricaoA: TEdit;
    Label5: TLabel;
    EditAreaA: TEdit;
    DBLookupComboBoxEstadoA: TDBLookupComboBox;
    Label7: TLabel;
    Label9: TLabel;
    DBLookupComboBoxCidadeA: TDBLookupComboBox;
    Label10: TLabel;
    MemoObsA: TMemo;
    ADOQueryCidadeCodigoCidade: TIntegerField;
    ADOQueryCidadeNomeCidade: TStringField;
    ADOQueryCidadeEstadoCidade: TIntegerField;
    ADOQueryCidadeCapital: TBooleanField;
    ADOQueryCidadeCodigoEstado: TIntegerField;
    ADOQueryCidadeSiglaEstado: TStringField;
    ADOQueryEstado: TADOQuery;
    ADOQueryEstadoCodigoEstado: TIntegerField;
    ADOQueryEstadoSiglaEstado: TStringField;
    DataSourceEstado: TDataSource;
    ADOQueryConsultaCODIGO_AREA: TAutoIncField;
    ADOQueryConsultaDESCRICAO_AREA: TStringField;
    ADOQueryConsultaTAMANHO_AREA: TBCDField;
    ADOQueryConsultaUNIDADE_AREA: TStringField;
    ADOQueryConsultaCIDADE_AREA: TIntegerField;
    ADOQueryConsultaESTADO_AREA: TIntegerField;
    ADOQueryConsultaOBS_AREA: TStringField;
    ADOQueryConsultaCodigoCidade: TIntegerField;
    ADOQueryConsultaNomeCidade: TStringField;
    ADOQueryConsultaEstadoCidade: TIntegerField;
    ADOQueryConsultaCapital: TBooleanField;
    ADOQueryConsultaCodigoEstado: TIntegerField;
    ADOQueryConsultaSiglaEstado: TStringField;
    DBLookupComboBoxEstadoCo: TDBLookupComboBox;
    DBLookupComboBoxCidadeCo: TDBLookupComboBox;
    Label11: TLabel;
    Label12: TLabel;
    ADOQueryEstadoC: TADOQuery;
    DataSourceEstadoC: TDataSource;
    ADOQueryCidadeC: TADOQuery;
    DataSourceCidadeC: TDataSource;
    ADOQueryEstadoCCodigoEstado: TIntegerField;
    ADOQueryEstadoCSiglaEstado: TStringField;
    ADOQueryCidadeCCodigoCidade: TIntegerField;
    ADOQueryCidadeCNomeCidade: TStringField;
    ADOQueryCidadeCEstadoCidade: TIntegerField;
    ADOQueryCidadeCCapital: TBooleanField;
    ADOQueryCidadeCCodigoEstado: TIntegerField;
    ADOQueryCidadeCSiglaEstado: TStringField;
    ComboBoxSituacao: TComboBox;
    Label14: TLabel;
    ADOStoredProcAtivarInativar: TADOStoredProc;
    RadioGroupFiltro: TRadioGroup;
    PopupMenuConsulta: TPopupMenu;
    popAtivar: TMenuItem;
    popInativar: TMenuItem;
    popExcluir: TMenuItem;
    ADOQueryConsultaSITUACAO_AREA: TBooleanField;
    ADOQueryConsultaSituação: TStringField;
    ComboBoxUnidadeA: TComboBox;
    ComboBoxUnidade: TComboBox;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    ADOConnection1: TADOConnection;
    procedure ButtonLimparAClick(Sender: TObject);
    procedure ButtonLimparClick(Sender: TObject);
    procedure PanelConsultaClick(Sender: TObject);
    procedure PanelCadastroClick(Sender: TObject);
    procedure PanelAlteracaoClick(Sender: TObject);
    procedure ButtonCadastrarClick(Sender: TObject);
    procedure ButtonAlterarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBoxEstadoCoClick(Sender: TObject);
    procedure DBLookupComboBoxCidadeCoClick(Sender: TObject);
    procedure DBLookupComboBoxEstadoClick(Sender: TObject);
    procedure DBLookupComboBoxEstadoAClick(Sender: TObject);
    procedure EditDescricaoAKeyPress(Sender: TObject; var Key: Char);
    procedure EditAreaAKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBoxEstadoAKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBoxCidadeAKeyPress(Sender: TObject; var Key: Char);
    procedure EditDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure EditAreaKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBoxEstadoKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBoxCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure RadioGroupFiltroClick(Sender: TObject);
    procedure popAtivarClick(Sender: TObject);
    procedure popInativarClick(Sender: TObject);
    procedure popExcluirClick(Sender: TObject);
    procedure ComboBoxSituacaoAKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxSituacaoKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBoxCidadeAClick(Sender: TObject);
    procedure DBLookupComboBoxCidadeClick(Sender: TObject);
    procedure ComboBoxUnidadeAKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxUnidadeKeyPress(Sender: TObject; var Key: Char);
    procedure Panel3Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
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
  end;

var
  FormArea: TFormArea;

implementation

{$R *.dfm}




procedure TFormArea.ButtonAlterarClick(Sender: TObject);
begin

  if DBLookupComboBoxEstadoA.KeyValue = null then
  begin
    Application.MessageBox('É necessário selecionar o estado','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    DBLookupComboBoxEstadoA.SetFocus;
    Exit;
  end;

  if DBLookupComboBoxCidadeA.KeyValue = null then
  begin
    Application.MessageBox('É necessário selecionar a cidade','Atenção!',MB_ICONEXCLAMATION+MB_OK);
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

procedure TFormArea.ButtonCadastrarClick(Sender: TObject);
begin

  if DBLookupComboBoxEstado.KeyValue = null then
  begin
    Application.MessageBox('É necessário selecionar o estado','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    DBLookupComboBoxEstado.SetFocus;
    Exit;
  end;

  if DBLookupComboBoxCidade.KeyValue = null then
  begin
    Application.MessageBox('É necessário selecionar a cidade','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    DBLookupComboBoxCidade.SetFocus;
    Exit;
  end;

  if ComboBoxSituacao.ItemIndex = -1 then
  begin
    Application.MessageBox('É necessário selecionar à SITUAÇÃO','Atenção!',MB_ICONEXCLAMATION+MB_OK);
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

procedure TFormArea.ButtonLimparAClick(Sender: TObject);
begin
  EditDescricaoA.Clear;
  EditAreaA.Clear;
  DBLookupComboBoxEstadoA.KeyValue := null;
  DBLookupComboBoxCidadeA.KeyValue := null;
  MemoObsA.Lines.Clear;
end;

procedure TFormArea.ButtonLimparClick(Sender: TObject);
begin
  EditDescricao.Clear;
  EditArea.Clear;
  DBLookupComboBoxEstado.KeyValue := null;
  DBLookupComboBoxCidade.KeyValue := null;
  MemoObs.Lines.Clear;
  ComboBoxSituacao.ItemIndex := 1;
end;

procedure TFormArea.ComboBoxSituacaoAKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormArea.ComboBoxSituacaoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormArea.ComboBoxUnidadeAKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormArea.ComboBoxUnidadeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormArea.DBGrid1CellClick(Column: TColumn);
begin

  if ADOQueryConsultaCODIGO_AREA.AsInteger <> 0 then
  begin
    popExcluir.Enabled := True;

    CODIGO := ADOQueryConsultaCODIGO_AREA.AsInteger;
    EditDescricaoA.Text := ADOQueryConsultaDESCRICAO_AREA.AsString;
    EditAreaA.Text := CurrToStr(ADOQueryConsultaTAMANHO_AREA.AsCurrency);
    ComboBoxUnidadeA.Text := ADOQueryConsultaUNIDADE_AREA.AsString;
    DBLookupComboBoxEstadoA.KeyValue := ADOQueryConsultaESTADO_AREA.AsInteger;
    DBLookupComboBoxCidadeA.KeyValue := ADOQueryConsultaCIDADE_AREA.AsInteger;
    MemoObsA.Lines.Text := ADOQueryConsultaOBS_AREA.Text;

    if ADOQueryConsultaSITUACAO_AREA.AsBoolean = True then
    begin
      SITUACAO := 1;
      popAtivar.Enabled := False;
      popInativar.Enabled := True;
    end
    else if ADOQueryConsultaSITUACAO_AREA.AsBoolean = False then
    begin
      SITUACAO := 0;
      popAtivar.Enabled := True;
      popInativar.Enabled := False;
    end;

    if ADOQueryConsultaCODIGO_AREA.AsInteger = 0 then
    begin
      PanelAlteracao.Enabled := False;
    end
    else if ADOQueryConsultaCODIGO_AREA.AsInteger <> 0 then
    begin
      PanelAlteracao.Enabled := True;
    end;
  end;

end;

procedure TFormArea.DBLookupComboBoxEstadoCoClick(Sender: TObject);
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

procedure TFormArea.DBLookupComboBoxEstadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormArea.EditAreaAKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormArea.EditAreaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormArea.EditDescricaoAKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormArea.EditDescricaoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormArea.DBLookupComboBoxCidadeAClick(Sender: TObject);
begin
  if DBLookupComboBoxEstadoA.KeyValue = null then
  begin
    DBLookupComboBoxEstadoA.KeyValue := ADOQueryCidadeEstadoCidade.AsInteger;
  end;
end;

procedure TFormArea.DBLookupComboBoxCidadeAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormArea.DBLookupComboBoxCidadeClick(Sender: TObject);
begin
  if DBLookupComboBoxEstado.KeyValue = 0 then
  begin
    DBLookupComboBoxEstado.KeyValue := ADOQueryCidadeEstadoCidade.AsInteger;
  end;
end;

procedure TFormArea.DBLookupComboBoxCidadeCoClick(Sender: TObject);
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
      SQL.add('Select*, case SITUACAO_AREA');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_AREA, TB_CIDADE, TB_ESTADO');
      SQL.add('where');
      SQL.Add('CIDADE_AREA = CodigoCidade and ESTADO_AREA = CodigoEstado and');
      SQL.Add('EstadoCidade = CodigoEstado and');
      SQL.add('SITUACAO_AREA = 1 and');
      SQL.add('CIDADE_AREA =' +IntToStr(ADOQueryCidadeCCodigoCidade.value)+'');
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
      SQL.add('Select*, case SITUACAO_AREA');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_AREA, TB_CIDADE, TB_ESTADO');
      SQL.add('where');
      SQL.Add('CIDADE_AREA = CodigoCidade and ESTADO_AREA = CodigoEstado and');
      SQL.Add('EstadoCidade = CodigoEstado and');
      SQL.add('SITUACAO_AREA = 0 and');
      SQL.add('CIDADE_AREA =' +IntToStr(ADOQueryCidadeCCodigoCidade.value)+'');
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
      SQL.add('Select*, case SITUACAO_AREA');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_AREA, TB_CIDADE, TB_ESTADO');
      SQL.add('where');
      SQL.Add('CIDADE_AREA = CodigoCidade and ESTADO_AREA = CodigoEstado and');
      SQL.Add('EstadoCidade = CodigoEstado and');
      SQL.add('CIDADE_AREA =' +IntToStr(ADOQueryCidadeCCodigoCidade.value)+'');
      Clipboard.AsText := ADOQueryConsulta.SQL.Text;
      Open;
    end;
  end;
end;

procedure TFormArea.DBLookupComboBoxCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormArea.DBLookupComboBoxEstadoAClick(Sender: TObject);
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

procedure TFormArea.DBLookupComboBoxEstadoAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormArea.DBLookupComboBoxEstadoClick(Sender: TObject);
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

procedure TFormArea.FormShow(Sender: TObject);
begin
  ADOQueryConsulta.Close;
  ADOQueryConsulta.Open;

end;

procedure TFormArea.Panel2Click(Sender: TObject);
begin
  ButtonAlterarClick(Self);
end;

procedure TFormArea.Panel3Click(Sender: TObject);
begin
  ButtonLimparAClick(Self);
end;

procedure TFormArea.Panel4Click(Sender: TObject);
begin
  ButtonCadastrarClick(Self);
end;

procedure TFormArea.Panel5Click(Sender: TObject);
begin
  ButtonLimparClick(Self);
end;

procedure TFormArea.PanelAlteracaoClick(Sender: TObject);
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

procedure TFormArea.PanelAlteracaoMouseEnter(Sender: TObject);
begin
  PanelAlteracao.Font.Size := 14;
end;

procedure TFormArea.PanelAlteracaoMouseLeave(Sender: TObject);
begin
  PanelAlteracao.Font.Size := 12;
end;

procedure TFormArea.PanelCadastroClick(Sender: TObject);
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

procedure TFormArea.PanelCadastroMouseEnter(Sender: TObject);
begin
  PanelCadastro.Font.Size := 14;
end;

procedure TFormArea.PanelCadastroMouseLeave(Sender: TObject);
begin
  PanelCadastro.Font.Size := 12;
end;

procedure TFormArea.PanelConsultaClick(Sender: TObject);
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

procedure TFormArea.PanelConsultaMouseEnter(Sender: TObject);
begin
  PanelConsulta.Font.Size := 14;
end;

procedure TFormArea.PanelConsultaMouseLeave(Sender: TObject);
begin
  PanelConsulta.Font.Size := 12;
end;

procedure TFormArea.popAtivarClick(Sender: TObject);
begin
  if ADOQueryConsultaSituação.AsString = 'Inativo' then
  begin
    ADOStoredProcAtivarInativar.Parameters.ParamByName('@SITUACAO').Value := 1;
    ADOStoredProcAtivarInativar.Parameters.ParamByName('@CODIGO').Value := ADOQueryConsultaCODIGO_AREA.AsInteger;
    ADOStoredProcAtivarInativar.ExecProc;
  end;
  ADOQueryConsulta.Close;
  ADOQueryConsulta.Open;
end;

procedure TFormArea.popExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Excluir?','Confirmação', mb_iconquestion + mb_yesno
    ) = idYes then
  begin
    ADOStoredProcExclusao.Parameters.ParamByName('@CODIGO').Value := ADOQueryConsultaCODIGO_AREA.AsInteger;
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

procedure TFormArea.popInativarClick(Sender: TObject);
begin
  if ADOQueryConsultaSituação.AsString = 'Ativo' then
  begin
    ADOStoredProcAtivarInativar.Parameters.ParamByName('@SITUACAO').Value := 0;
    ADOStoredProcAtivarInativar.Parameters.ParamByName('@CODIGO').Value := ADOQueryConsultaCODIGO_AREA.AsInteger;
    ADOStoredProcAtivarInativar.ExecProc;
  end;
  ADOQueryConsulta.Close;
  ADOQueryConsulta.Open;
end;

procedure TFormArea.RadioGroupFiltroClick(Sender: TObject);
begin
  if RadioGroupFiltro.ItemIndex = 0 then
  begin
    with ADOQueryConsulta do
    begin
      Close;
      SQL.Clear;
      SQL.add('Select*, case SITUACAO_AREA');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_AREA, TB_CIDADE, TB_ESTADO');
      SQL.add('where');
      SQL.Add('CIDADE_AREA = CodigoCidade and ESTADO_AREA = CodigoEstado and');
      SQL.Add('EstadoCidade = CodigoEstado and');
      SQL.add('SITUACAO_AREA = 1');
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
      SQL.add('Select*, case SITUACAO_AREA');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_AREA, TB_CIDADE, TB_ESTADO');
      SQL.add('where');
      SQL.Add('CIDADE_AREA = CodigoCidade and ESTADO_AREA = CodigoEstado and');
      SQL.Add('EstadoCidade = CodigoEstado and');
      SQL.add('SITUACAO_AREA = 0');
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
      SQL.add('Select*, case SITUACAO_AREA');
      SQL.Add('when ''0'' then ''Inativo''');
      SQL.Add('when ''1'' then ''Ativo'' end [Situação]');
      SQL.add('from TB_AREA, TB_CIDADE, TB_ESTADO');
      SQL.add('where');
      SQL.Add('CIDADE_AREA = CodigoCidade and ESTADO_AREA = CodigoEstado and');
      SQL.Add('EstadoCidade = CodigoEstado');
      Clipboard.AsText := ADOQueryConsulta.SQL.Text;
      Open;
    end;
  end;
end;

end.
