unit Unit_Produtos_Insumos_Estoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.StdCtrls, ClipBrd, DateUtils,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.WinXPickers, Data.Win.ADODB,
  Vcl.Imaging.pngimage;

type
  TFormProdutosInsumos = class(TForm)
    Panel1: TPanel;
    PanelAlteracaoCampos: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    ButtonAlterar: TButton;
    ButtonLimparA: TButton;
    EditDescricaoA: TEdit;
    EditQuantidadeA: TEdit;
    PanelConsultaDBGrid: TPanel;
    Label10: TLabel;
    Label14: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBLookupComboBoxEstadoCo: TDBLookupComboBox;
    DBLookupComboBoxCidadeCo: TDBLookupComboBox;
    PanelMenu: TPanel;
    ImageMaquinario: TImage;
    PanelConsulta: TPanel;
    ADOStoredProcCadastroProduto: TADOStoredProc;
    ADOStoredProcAlteracaoProduto: TADOStoredProc;
    ADOStoredProcAtivacaoInativacao: TADOStoredProc;
    ADOQueryConsultaEstoque: TADOQuery;
    DataSourceConsultaEstoque: TDataSource;
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
    ADOQueryConsultaProdutos: TADOQuery;
    DataSourceConsultaProduto: TDataSource;
    ADOQueryConsultaEstoqueCODIGO_ESTOQUE_INSUMO: TAutoIncField;
    ADOQueryConsultaEstoqueCIDADE_ESTOQUE_INSUMO: TIntegerField;
    ADOQueryConsultaEstoqueESTADO_ESTOQUE_INSUMO: TIntegerField;
    ADOQueryConsultaEstoqueVALOR_ESTOQUE_INSUMO: TBCDField;
    ADOQueryConsultaEstoqueFOTO_ESTOQUE_INSUMO: TStringField;
    ADOQueryConsultaEstoqueSITUACAO_ESTOQUE_INSUMO: TBooleanField;
    ADOQueryConsultaEstoqueOBS_ESTOQUE_INSUMO: TStringField;
    ADOQueryConsultaEstoqueCodigoCidade: TIntegerField;
    ADOQueryConsultaEstoqueNomeCidade: TStringField;
    ADOQueryConsultaEstoqueEstadoCidade: TIntegerField;
    ADOQueryConsultaEstoqueCapital: TBooleanField;
    ADOQueryConsultaEstoqueCodigoEstado: TIntegerField;
    ADOQueryConsultaEstoqueSiglaEstado: TStringField;
    ButtonCadastrarInsumo: TButton;
    ButtonAlterarInsumo: TButton;
    DatePickerEntradaA: TDatePicker;
    DatePickerValidadeA: TDatePicker;
    DBLookupComboBoxEstoqueA: TDBLookupComboBox;
    EditValorA: TEdit;
    Label7: TLabel;
    Label15: TLabel;
    PanelCadastroCampos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    ButtonCadastro: TButton;
    ButtonLimpar: TButton;
    EditDescricao: TEdit;
    EditQuantidade: TEdit;
    DBLookupComboBoxEstoque: TDBLookupComboBox;
    EditValor: TEdit;
    DatePickerEntrada: TDatePicker;
    DatePickerValidade: TDatePicker;
    ADOQueryEstoqueCA: TADOQuery;
    ADOQueryEstoqueCACODIGO_ESTOQUE_INSUMO: TAutoIncField;
    ADOQueryEstoqueCACIDADE_ESTOQUE_INSUMO: TIntegerField;
    ADOQueryEstoqueCAESTADO_ESTOQUE_INSUMO: TIntegerField;
    ADOQueryEstoqueCAVALOR_ESTOQUE_INSUMO: TBCDField;
    ADOQueryEstoqueCAFOTO_ESTOQUE_INSUMO: TStringField;
    ADOQueryEstoqueCASITUACAO_ESTOQUE_INSUMO: TBooleanField;
    ADOQueryEstoqueCAOBS_ESTOQUE_INSUMO: TStringField;
    DataSourceEstoqueCA: TDataSource;
    ADOQueryConsultaProdutosCODIGO_INS_ESTOQUE: TAutoIncField;
    ADOQueryConsultaProdutosDESCRICAO_INS_ESTOQUE: TStringField;
    ADOQueryConsultaProdutosQUANTIDADE_INS_ESTOQUE: TBCDField;
    ADOQueryConsultaProdutosUNIDADE_INS_ESTOQUE: TStringField;
    ADOQueryConsultaProdutosESTOQUE_INS_ESTOQUE: TIntegerField;
    ADOQueryConsultaProdutosDATA_ENTRADA_INS_ESTOQUE: TWideStringField;
    ADOQueryConsultaProdutosDATA_VALIDADE_INS_ESTOQUE: TWideStringField;
    ADOQueryConsultaProdutosPRECO_INSUMO: TBCDField;
    ADOQueryConsultaProdutosCODIGO_ESTOQUE_INSUMO: TAutoIncField;
    ADOQueryConsultaProdutosCIDADE_ESTOQUE_INSUMO: TIntegerField;
    ADOQueryConsultaProdutosESTADO_ESTOQUE_INSUMO: TIntegerField;
    ADOQueryConsultaProdutosVALOR_ESTOQUE_INSUMO: TBCDField;
    ADOQueryConsultaProdutosFOTO_ESTOQUE_INSUMO: TStringField;
    ADOQueryConsultaProdutosSITUACAO_ESTOQUE_INSUMO: TBooleanField;
    ADOQueryConsultaProdutosOBS_ESTOQUE_INSUMO: TStringField;
    ComboBoxUnidadeA: TComboBox;
    ComboBoxUnidade: TComboBox;
    PanelDBEstoque: TPanel;
    Label17: TLabel;
    PanelDBProdutos: TPanel;
    Label18: TLabel;
    Panel5: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    ADOConnection1: TADOConnection;
    procedure DBLookupComboBoxEstadoCoClick(Sender: TObject);
    procedure DBLookupComboBoxCidadeCoClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure ButtonAlterarInsumoClick(Sender: TObject);
    procedure ButtonCadastrarInsumoClick(Sender: TObject);
    procedure ButtonLimparAClick(Sender: TObject);
    procedure ButtonAlterarClick(Sender: TObject);
    procedure ButtonLimparClick(Sender: TObject);
    procedure ButtonCadastroClick(Sender: TObject);
    procedure EditValorClick(Sender: TObject);
    procedure EditValorChange(Sender: TObject);
    procedure EditValorEnter(Sender: TObject);
    procedure EditValorKeyPress(Sender: TObject; var Key: Char);
    procedure EditValorAChange(Sender: TObject);
    procedure EditValorAClick(Sender: TObject);
    procedure EditValorAEnter(Sender: TObject);
    procedure EditValorAKeyPress(Sender: TObject; var Key: Char);
    procedure EditDescricaoAKeyPress(Sender: TObject; var Key: Char);
    procedure EditQuantidadeAKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBoxEstoqueAKeyPress(Sender: TObject; var Key: Char);
    procedure EditDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure EditQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure EditUnidadeKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBoxEstoqueKeyPress(Sender: TObject; var Key: Char);
    procedure EditUnidadeAKeyPress(Sender: TObject; var Key: Char);
    procedure PanelConsultaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBoxUnidadeAKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxUnidadeKeyPress(Sender: TObject; var Key: Char);
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure PanelConsultaMouseLeave(Sender: TObject);
    procedure PanelConsultaMouseEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CODIGOESTOQUE1, CODIGOINSUMO, ESTOQUE, CODIGOCAIXAATUAL : integer;
    ANO, MES, DIA : string;
    VALOR : REAL;
  end;

var
  FormProdutosInsumos: TFormProdutosInsumos;

implementation

{$R *.dfm}

//uses Unit_Entrada_Saida_Caixa, Unit_Caixa;

procedure TFormProdutosInsumos.ButtonAlterarClick(Sender: TObject);
begin

  if EditDescricaoA.Text = '' then
  begin
    Application.MessageBox('É necessário inserir o campo DESCRIÇÃO','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    EditDescricaoA.SetFocus;
    Exit;
  end;

  if EditQuantidadeA.Text = '' then
  begin
    Application.MessageBox('É necessário inserir o campo QUANTIDADE','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    EditQuantidadeA.SetFocus;
    Exit;
  end;

  if ComboBoxUnidadeA.Text = '' then
  begin
    Application.MessageBox('É necessário inserir o campo UNIDADE','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    ComboBoxUnidadeA.SetFocus;
    Exit;
  end;

  if ComboBoxUnidadeA.Text = '' then
  begin
    Application.MessageBox('É necessário inserir o campo UNIDADE','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    ComboBoxUnidadeA.SetFocus;
    Exit;
  end;

  if DBLookupComboBoxEstoqueA.KeyValue = null then
  begin
    Application.MessageBox('É necessário inserir o campo ESTOQUE','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    DBLookupComboBoxEstoqueA.SetFocus;
    Exit;
  end;

  if (EditValorA.Text = '.') then
  begin
    Application.MessageBox('valor digitado INVÁLIDO','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    EditValorA.Clear;
    Exit;
  end;

  with ADOStoredProcAlteracaoProduto.Parameters do
  begin
    ParamByName('@CODIGO').Value := CODIGOINSUMO;
    ParamByName('@DESCRICAO').Value := EditDescricaoA.Text;
    ParamByName('@QUANTIDADE').Value := StrToCurr(EditQuantidadeA.Text);
    ParamByName('@UNIDADE').Value := ComboBoxUnidadeA.Text;
    ParamByName('@ESTOQUEINSUMO').Value := DBLookupComboBoxEstoqueA.KeyValue;
    ParamByName('@DATAENTRADA').Value := FormatDateTime('yyyy/MM/DD', DatePickerEntradaA.Date);
    ParamByName('@DATAVALIDADE').Value := FormatDateTime('yyyy/MM/DD', DatePickerValidadeA.Date);
    ParamByName('@PRECO').Value := StrToFloat(EditValorA.Text);
  end;
  ADOStoredProcAlteracaoProduto.ExecProc;
  Application.MessageBox('Alterado com sucesso!','Confirmação',MB_ICONINFORMATION);
  ADOQueryConsultaProdutos.Close;
  ADOQueryConsultaProdutos.Open;
end;

procedure TFormProdutosInsumos.ButtonAlterarInsumoClick(Sender: TObject);
begin
  CODIGOINSUMO := ADOQueryConsultaProdutosCODIGO_INS_ESTOQUE.AsInteger;
  ESTOQUE := ADOQueryConsultaProdutosESTOQUE_INS_ESTOQUE.AsInteger;
  EditDescricaoA.Text := ADOQueryConsultaProdutosDESCRICAO_INS_ESTOQUE.AsString;
  EditQuantidadeA.Text := CurrToStr(ADOQueryConsultaProdutosQUANTIDADE_INS_ESTOQUE.AsCurrency);
  ComboBoxUnidadeA.Text := ADOQueryConsultaProdutosUNIDADE_INS_ESTOQUE.AsString;
  DBLookupComboBoxEstoqueA.KeyValue := ESTOQUE;
  DIA := Copy(ADOQueryConsultaProdutosDATA_ENTRADA_INS_ESTOQUE.AsString, 9,2);
  MES := Copy(ADOQueryConsultaProdutosDATA_ENTRADA_INS_ESTOQUE.AsString, 6,2);
  ANO := Copy(ADOQueryConsultaProdutosDATA_ENTRADA_INS_ESTOQUE.AsString, 1,4);
  DatePickerEntradaA.Date := StrToDate(DIA+'/'+MES+'/'+ANO);
  DIA := Copy(ADOQueryConsultaProdutosDATA_VALIDADE_INS_ESTOQUE.AsString, 9,2);
  MES := Copy(ADOQueryConsultaProdutosDATA_VALIDADE_INS_ESTOQUE.AsString, 6,2);
  ANO := Copy(ADOQueryConsultaProdutosDATA_VALIDADE_INS_ESTOQUE.AsString, 1,4);
  DatePickerValidadeA.Date := StrToDate(DIA+'/'+MES+'/'+ANO);
  EditValorA.Text := FloatToStr(ADOQueryConsultaProdutosPRECO_INSUMO.AsFloat);

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

procedure TFormProdutosInsumos.ButtonCadastrarInsumoClick(Sender: TObject);
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

procedure TFormProdutosInsumos.ButtonCadastroClick(Sender: TObject);
begin

  if EditDescricao.Text = '' then
  begin
    Application.MessageBox('É necessário inserir o campo DESCRIÇÃO','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    EditDescricao.SetFocus;
    Exit;
  end;

  if EditQuantidade.Text = '' then
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

  if ComboBoxUnidade.Text = '' then
  begin
    Application.MessageBox('É necessário inserir o campo UNIDADE','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    ComboBoxUnidade.SetFocus;
    Exit;
  end;

  if DBLookupComboBoxEstoque.KeyValue = null then
  begin
    Application.MessageBox('É necessário inserir o campo ESTOQUE','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    DBLookupComboBoxEstoque.SetFocus;
    Exit;
  end;

  if (EditValor.Text = '.') then
  begin
    Application.MessageBox('valor digitado INVÁLIDO','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    EditValor.Clear;
    Exit;
  end;

  with ADOStoredProcCadastroProduto.Parameters do
  begin
    ParamByName('@DESCRICAO').Value := EditDescricao.Text;
    ParamByName('@QUANTIDADE').Value := StrToCurr(EditQuantidade.Text);
    ParamByName('@UNIDADE').Value := ComboBoxUnidade.Text;
    ParamByName('@ESTOQUEINSUMO').Value := DBLookupComboBoxEstoque.KeyValue;
    ParamByName('@DATAENTRADA').Value := FormatDateTime('yyyy/MM/DD', DatePickerEntrada.Date);
    ParamByName('@DATAVALIDADE').Value := FormatDateTime('yyyy/MM/DD', DatePickerValidade.Date);
    ParamByName('@PRECO').Value := StrToFloat(EditValor.Text);
  end;
  ADOStoredProcCadastroProduto.ExecProc;

  {if Application.MessageBox('Deseja cadastrar saída no caixa?','Confirmação',
  mb_iconquestion + mb_yesno) = idYes then
  begin
    if Unit_Caixa.FormCaixa.ADOQueryConsultaCaixaCODIGO_CAIXA.AsInteger = 0 then
    begin
      Application.MessageBox('Caixa fechado, é necessáio abrir o caixa.','Atenção!',MB_ICONEXCLAMATION+MB_OK);
      Exit;
    end
    else if Unit_Caixa.FormCaixa.ADOQueryConsultaCaixaCODIGO_CAIXA.AsInteger <> 0 then
    begin
      CODIGOCAIXAATUAL := Unit_Menu1.FormMenu1.ADOQueryCaixaATUALCODIGO_CAIXA.AsInteger;
      VALOR := StrToFloat(EditValor.Text);
      Unit_Entrada_Saida_Caixa.FormEntradaSaida.CODIGOCAIXAATUAL2 := CODIGOCAIXAATUAL;
      Unit_Entrada_Saida_Caixa.FormEntradaSaida.EditDescricao.Text := EditDescricao.Text;
      Unit_Entrada_Saida_Caixa.FormEntradaSaida.EditSaida.Text := FloatToStr(VALOR);
      Unit_Caixa.FormCaixa.ButtonSaidaClick(Self);
    end;
  end
  else {if Application.MessageBox('Deseja cadastrar saída no caixa?','Confirmação',
  mb_iconquestion + mb_yesno) = ID_NO then    }
  {begin
    Application.MessageBox('Se necessário cadastre mais tarde pela tela de caixa.','Confirmação',MB_ICONINFORMATION);
    Exit;
  end;
   }
  Application.MessageBox('Cadastrado com sucesso!','Confirmação',MB_ICONINFORMATION);
  ADOQueryConsultaProdutos.Close;
  ADOQueryConsultaProdutos.Open;
  ButtonLimparClick(Self);
end;

procedure TFormProdutosInsumos.ButtonLimparAClick(Sender: TObject);
begin
  EditDescricaoA.Clear;
  EditQuantidadeA.Clear;
  //EditValorA.Text := '0,00';
  EditValorA.Clear;
  DBLookupComboBoxEstoqueA.KeyValue := null;
  DatePickerEntradaA.Date := Now;
  DatePickerValidadeA.Date := Now;
end;

procedure TFormProdutosInsumos.ButtonLimparClick(Sender: TObject);
begin
  EditDescricao.Clear;
  EditQuantidade.Clear;
  //EditValor.Text := '0,00';
  EditValor.Clear;
  DBLookupComboBoxEstoque.KeyValue := null;
  DatePickerEntrada.Date := Now;
  DatePickerValidade.Date := Now;
end;

procedure TFormProdutosInsumos.ComboBoxUnidadeAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormProdutosInsumos.ComboBoxUnidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormProdutosInsumos.DBGrid1CellClick(Column: TColumn);
begin
  ADOQueryConsultaProdutos.Close;
  ADOQueryConsultaProdutos.Open;

  CODIGOESTOQUE1 :=  ADOQueryConsultaEstoqueCODIGO_ESTOQUE_INSUMO.AsInteger;
  ADOQueryConsultaProdutos.Parameters.ParamByName('CodigoEstoque').Value := CODIGOESTOQUE1;


  if ADOQueryConsultaEstoqueCODIGO_ESTOQUE_INSUMO.AsInteger = 0 then
  begin
    ButtonCadastrarInsumo.Enabled := False;
    Panel6.Enabled := False;
  end
  else if ADOQueryConsultaEstoqueCODIGO_ESTOQUE_INSUMO.AsInteger <> 0 then
  begin
    ButtonCadastrarInsumo.Enabled := True;
    Panel6.Enabled := True;
  end;

end;

procedure TFormProdutosInsumos.DBGrid2CellClick(Column: TColumn);
begin
  CODIGOINSUMO := ADOQueryConsultaProdutosCODIGO_INS_ESTOQUE.AsInteger;

  if ADOQueryConsultaProdutosCODIGO_INS_ESTOQUE.AsInteger = 0 then
  begin
    ButtonAlterarInsumo.Enabled := False;
    Panel7.Enabled := False;
  end
  else if ADOQueryConsultaProdutosCODIGO_INS_ESTOQUE.AsInteger <> 0 then
  begin
    ButtonAlterarInsumo.Enabled := True;
    Panel7.Enabled := True;
  end;
end;

procedure TFormProdutosInsumos.DBLookupComboBoxCidadeCoClick(Sender: TObject);
begin
  if DBLookupComboBoxEstadoCo.KeyValue = null then
  begin
    DBLookupComboBoxEstadoCo.KeyValue := ADOQueryCidadeCEstadoCidade.AsInteger;
  end;

  with ADOQueryConsultaEstoque do
  begin
    Close;
    SQL.Clear;
    SQL.add('Select*');
    SQL.add('from TB_ESTOQUE_INSUMO, TB_CIDADE, TB_ESTADO');
    SQL.add('where');
    SQL.Add('CIDADE_ESTOQUE_INSUMO = CodigoCidade and ESTADO_ESTOQUE_INSUMO = CodigoEstado and');
    SQL.Add('EstadoCidade = CodigoEstado and');
    SQL.add('SITUACAO_ESTOQUE_INSUMO = 1 and');
    SQL.add('CIDADE_ESTOQUE_INSUMO =' +IntToStr(ADOQueryCidadeCCodigoCidade.value)+'');
    Clipboard.AsText := ADOQueryConsultaEstoque.SQL.Text;
    Open;
  end;
  ADOQueryConsultaProdutos.Close;
  ADOQueryConsultaProdutos.Open;
end;

procedure TFormProdutosInsumos.DBLookupComboBoxEstadoCoClick(Sender: TObject);
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

procedure TFormProdutosInsumos.DBLookupComboBoxEstoqueAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormProdutosInsumos.DBLookupComboBoxEstoqueKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormProdutosInsumos.EditDescricaoAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormProdutosInsumos.EditDescricaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormProdutosInsumos.EditQuantidadeAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormProdutosInsumos.EditQuantidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormProdutosInsumos.EditUnidadeAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormProdutosInsumos.EditUnidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormProdutosInsumos.EditValorAChange(Sender: TObject);
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

procedure TFormProdutosInsumos.EditValorAClick(Sender: TObject);
begin
  EditValorA.SelStart := Length(EditValorA.text);
end;

procedure TFormProdutosInsumos.EditValorAEnter(Sender: TObject);
begin
  EditValorA.SelStart := Length(EditValorA.text);
end;

procedure TFormProdutosInsumos.EditValorAKeyPress(Sender: TObject;
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

procedure TFormProdutosInsumos.EditValorChange(Sender: TObject);
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

procedure TFormProdutosInsumos.EditValorClick(Sender: TObject);
begin
  EditValor.SelStart := Length(EditValor.text) ;
end;

procedure TFormProdutosInsumos.EditValorEnter(Sender: TObject);
begin
  EditValor.SelStart := Length(EditValor.text);
end;

procedure TFormProdutosInsumos.EditValorKeyPress(Sender: TObject;
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

procedure TFormProdutosInsumos.FormShow(Sender: TObject);
begin
  ADOQueryConsultaEstoque.Close;
  ADOQueryConsultaEstoque.Open;
  ADOQueryConsultaProdutos.Close;
  ADOQueryConsultaProdutos.Open;
  ADOQueryEstoqueCA.Close;
  ADOQueryEstoqueCA.Open;
  DatePickerEntrada.Date := Now;
  DatePickerValidade.Date := Now;
end;

procedure TFormProdutosInsumos.Panel2Click(Sender: TObject);
begin
  ButtonAlterarClick(Self);
end;

procedure TFormProdutosInsumos.Panel3Click(Sender: TObject);
begin
  ButtonLimparAClick(Self);
end;

procedure TFormProdutosInsumos.Panel4Click(Sender: TObject);
begin
  ButtonCadastroClick(Self);
end;

procedure TFormProdutosInsumos.Panel5Click(Sender: TObject);
begin
  ButtonLimparClick(Self);
end;

procedure TFormProdutosInsumos.Panel6Click(Sender: TObject);
begin
  ButtonCadastrarInsumoClick(Self);
end;

procedure TFormProdutosInsumos.Panel7Click(Sender: TObject);
begin
  ButtonAlterarInsumoClick(Self);
end;

procedure TFormProdutosInsumos.PanelConsultaClick(Sender: TObject);
begin
  ADOQueryConsultaEstoque.Close;
  ADOQueryConsultaEstoque.Open;


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

  ADOQueryConsultaProdutos.Close;
  ADOQueryConsultaProdutos.Open;
end;

procedure TFormProdutosInsumos.PanelConsultaMouseEnter(Sender: TObject);
begin
  PanelConsulta.Font.Size := 14;
end;

procedure TFormProdutosInsumos.PanelConsultaMouseLeave(Sender: TObject);
begin
  PanelConsulta.Font.Size := 12;
end;

end.
