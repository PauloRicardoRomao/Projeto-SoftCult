unit Unit_Produtos_Estoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Grids, ClipBrd, DateUtils,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.WinXPickers, Vcl.StdCtrls, Data.Win.ADODB,
  Vcl.Imaging.pngimage;

type
  TFormProdutosEstoque = class(TForm)
    Panel1: TPanel;
    PanelAlteracaoCampos: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    Label15: TLabel;
    ButtonAlterar: TButton;
    ButtonLimparA: TButton;
    EditDescricaoA: TEdit;
    EditQuantidadeA: TEdit;
    DBLookupComboBoxEstoqueA: TDBLookupComboBox;
    EditValorA: TEdit;
    PanelConsultaDBGrid: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBLookupComboBoxEstadoCo: TDBLookupComboBox;
    DBLookupComboBoxCidadeCo: TDBLookupComboBox;
    ButtonAlterarProduto: TButton;
    PanelMenu: TPanel;
    ImageMaquinario: TImage;
    PanelConsulta: TPanel;
    DatePickerEntradaA: TDatePicker;
    DatePickerValidadeA: TDatePicker;
    ADOStoredProcAlteracaoProduto: TADOStoredProc;
    ADOStoredProcAtivacaoInativacao: TADOStoredProc;
    ADOQueryConsultaEstoque: TADOQuery;
    DataSourceConsultaEstoque: TDataSource;
    ADOQueryEstadoC: TADOQuery;
    ADOQueryEstadoCCodigoEstado: TIntegerField;
    ADOQueryEstadoCSiglaEstado: TStringField;
    DataSourceEstadoC: TDataSource;
    ADOQueryEstoqueCA: TADOQuery;
    DataSourceEstoqueCA: TDataSource;
    ADOQueryCidadeC: TADOQuery;
    ADOQueryCidadeCCodigoCidade: TIntegerField;
    ADOQueryCidadeCNomeCidade: TStringField;
    ADOQueryCidadeCEstadoCidade: TIntegerField;
    ADOQueryCidadeCCapital: TBooleanField;
    ADOQueryCidadeCCodigoEstado: TIntegerField;
    ADOQueryCidadeCSiglaEstado: TStringField;
    ADOQueryConsultaProdutos: TADOQuery;
    DataSourceConsultaProduto: TDataSource;
    DataSourceCidadeC: TDataSource;
    ADOQueryConsultaEstoqueCODIGO_ESTOQUE: TAutoIncField;
    ADOQueryConsultaEstoqueCAPACIDADE_ESTOQUE: TBCDField;
    ADOQueryConsultaEstoqueUNIDADE_ESTOQUE: TStringField;
    ADOQueryConsultaEstoqueCIDADE_ESTOQUE: TIntegerField;
    ADOQueryConsultaEstoqueESTADO_ESTOQUE: TIntegerField;
    ADOQueryConsultaEstoqueVALOR_ESTOQUE: TBCDField;
    ADOQueryConsultaEstoqueFOTO_ESTOQUE: TStringField;
    ADOQueryConsultaEstoqueSITUACAO_ESTOQUE: TBooleanField;
    ADOQueryConsultaEstoqueOBS_ESTOQUE: TStringField;
    ADOQueryConsultaEstoqueCodigoCidade: TIntegerField;
    ADOQueryConsultaEstoqueNomeCidade: TStringField;
    ADOQueryConsultaEstoqueEstadoCidade: TIntegerField;
    ADOQueryConsultaEstoqueCapital: TBooleanField;
    ADOQueryConsultaEstoqueCodigoEstado: TIntegerField;
    ADOQueryConsultaEstoqueSiglaEstado: TStringField;
    ADOQueryConsultaProdutosCODIGO_PROD_ESTOQUE: TAutoIncField;
    ADOQueryConsultaProdutosDESCRICAO_PROD_ESTOQUE: TStringField;
    ADOQueryConsultaProdutosQUANTIDADE_PROD_ESTOQUE: TBCDField;
    ADOQueryConsultaProdutosUNIDADE_PROD_ESTOQUE: TStringField;
    ADOQueryConsultaProdutosCOLHEITA_PROD_ESTOQUE: TIntegerField;
    ADOQueryConsultaProdutosESTOQUE_PROD_ESTOQUE: TIntegerField;
    ADOQueryConsultaProdutosDATA_ENTRADA_PROD_ESTOQUE: TWideStringField;
    ADOQueryConsultaProdutosDATA_VALIDADE_PROD_ESTOQUE: TWideStringField;
    ADOQueryConsultaProdutosPRECO_PROD_ESTOQUE: TBCDField;
    ADOQueryConsultaProdutosCODIGO_ESTOQUE: TAutoIncField;
    ADOQueryConsultaProdutosCAPACIDADE_ESTOQUE: TBCDField;
    ADOQueryConsultaProdutosUNIDADE_ESTOQUE: TStringField;
    ADOQueryConsultaProdutosCIDADE_ESTOQUE: TIntegerField;
    ADOQueryConsultaProdutosESTADO_ESTOQUE: TIntegerField;
    ADOQueryConsultaProdutosVALOR_ESTOQUE: TBCDField;
    ADOQueryConsultaProdutosFOTO_ESTOQUE: TStringField;
    ADOQueryConsultaProdutosSITUACAO_ESTOQUE: TBooleanField;
    ADOQueryConsultaProdutosOBS_ESTOQUE: TStringField;
    ComboBoxUnidadeA: TComboBox;
    ADOQueryEstoqueCACODIGO_ESTOQUE: TAutoIncField;
    ADOQueryEstoqueCACAPACIDADE_ESTOQUE: TBCDField;
    ADOQueryEstoqueCAUNIDADE_ESTOQUE: TStringField;
    ADOQueryEstoqueCACIDADE_ESTOQUE: TIntegerField;
    ADOQueryEstoqueCAESTADO_ESTOQUE: TIntegerField;
    ADOQueryEstoqueCAVALOR_ESTOQUE: TBCDField;
    ADOQueryEstoqueCAFOTO_ESTOQUE: TStringField;
    ADOQueryEstoqueCASITUACAO_ESTOQUE: TBooleanField;
    ADOQueryEstoqueCAOBS_ESTOQUE: TStringField;
    PanelDBEstoque: TPanel;
    PanelDBProdutos: TPanel;
    Panel7: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    ADOConnection1: TADOConnection;
    procedure EditDescricaoAKeyPress(Sender: TObject; var Key: Char);
    procedure EditQuantidadeAKeyPress(Sender: TObject; var Key: Char);
    procedure EditUnidadeAKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBoxEstoqueAKeyPress(Sender: TObject; var Key: Char);
    procedure EditValorAChange(Sender: TObject);
    procedure EditValorAClick(Sender: TObject);
    procedure EditValorAEnter(Sender: TObject);
    procedure EditValorAKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonLimparAClick(Sender: TObject);
    procedure ButtonAlterarClick(Sender: TObject);
    procedure DBLookupComboBoxCidadeCoClick(Sender: TObject);
    procedure DBLookupComboBoxEstadoCoClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure ButtonAlterarProdutoClick(Sender: TObject);
    procedure PanelConsultaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBoxUnidadeAKeyPress(Sender: TObject; var Key: Char);
    procedure Panel7Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure PanelConsultaMouseEnter(Sender: TObject);
    procedure PanelConsultaMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CODIGOESTOQUE1, CODIGOPRODUTO, ESTOQUE, COLHEITA1 : integer;
    ANO, MES, DIA : string;
    VALOR : REAL;
  end;

var
  FormProdutosEstoque: TFormProdutosEstoque;

implementation

{$R *.dfm}

uses  Unit_Estoque_producao;

procedure TFormProdutosEstoque.ButtonAlterarClick(Sender: TObject);
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
    ParamByName('@CODIGO').Value := CODIGOPRODUTO;
    ParamByName('@DESCRICAO').Value := EditDescricaoA.Text;
    ParamByName('@QUANTIDADE').Value := StrToCurr(EditQuantidadeA.Text);
    ParamByName('@UNIDADE').Value := ComboBoxUnidadeA.Text;
    ParamByName('@COLHEITA').Value := COLHEITA1;
    ParamByName('@ESTOQUE').Value := DBLookupComboBoxEstoqueA.KeyValue;
    ParamByName('@DATAENTRADA').Value := FormatDateTime('yyyy/MM/DD', DatePickerEntradaA.Date);
    ParamByName('@DATAVALIDADE').Value := FormatDateTime('yyyy/MM/DD', DatePickerValidadeA.Date);
    ParamByName('@PRECO').Value := StrToFloat(EditValorA.Text);
  end;
  ADOStoredProcAlteracaoProduto.ExecProc;
  Application.MessageBox('Alterado com sucesso!','Confirmação',MB_ICONINFORMATION);
  ADOQueryConsultaProdutos.Close;
  ADOQueryConsultaProdutos.Open;
end;

procedure TFormProdutosEstoque.ButtonAlterarProdutoClick(Sender: TObject);
var
  DIAV, MESV, ANOV : String;
begin
  CODIGOPRODUTO := ADOQueryConsultaProdutosCODIGO_PROD_ESTOQUE.AsInteger;
  ESTOQUE := ADOQueryConsultaProdutosESTOQUE_PROD_ESTOQUE.AsInteger;
  EditDescricaoA.Text := ADOQueryConsultaProdutosDESCRICAO_PROD_ESTOQUE.AsString;
  EditQuantidadeA.Text := CurrToStr(ADOQueryConsultaProdutosQUANTIDADE_PROD_ESTOQUE.AsCurrency);
  ComboBoxUnidadeA.Text := ADOQueryConsultaProdutosUNIDADE_PROD_ESTOQUE.AsString;
  DBLookupComboBoxEstoqueA.KeyValue := ESTOQUE;
  DIA := Copy(ADOQueryConsultaProdutosDATA_ENTRADA_PROD_ESTOQUE.AsString, 9,2);
  MES := Copy(ADOQueryConsultaProdutosDATA_ENTRADA_PROD_ESTOQUE.AsString, 6,2);
  ANO := Copy(ADOQueryConsultaProdutosDATA_ENTRADA_PROD_ESTOQUE.AsString, 1,4);
  DatePickerEntradaA.Date := StrToDate(DIA+'/'+MES+'/'+ANO);
  DIAV := Copy(ADOQueryConsultaProdutosDATA_VALIDADE_PROD_ESTOQUE.AsString, 9,2);
  MESV := Copy(ADOQueryConsultaProdutosDATA_VALIDADE_PROD_ESTOQUE.AsString, 6,2);
  ANOV := Copy(ADOQueryConsultaProdutosDATA_VALIDADE_PROD_ESTOQUE.AsString, 1,4);
  DatePickerValidadeA.Date := StrToDate(DIAV+'/'+MESV+'/'+ANOV);
  EditValorA.Text := FloatToStr(ADOQueryConsultaProdutosPRECO_PROD_ESTOQUE.AsFloat);

  if PanelAlteracaoCampos.Visible = False then
  begin
    PanelAlteracaoCampos.Visible := True;
    PanelConsultaDBGrid.Visible := False;
  end;

end;

procedure TFormProdutosEstoque.ButtonLimparAClick(Sender: TObject);
begin
  EditDescricaoA.Clear;
  EditQuantidadeA.Clear;
  //EditValorA.Text := '0,00';
  EditValorA.Clear;
  DBLookupComboBoxEstoqueA.KeyValue := null;
  DatePickerValidadeA.Date := Now;
end;

procedure TFormProdutosEstoque.ComboBoxUnidadeAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormProdutosEstoque.DBGrid1CellClick(Column: TColumn);
begin
  ADOQueryConsultaProdutos.Close;
  ADOQueryConsultaProdutos.Open;

  CODIGOESTOQUE1 :=  ADOQueryConsultaEstoqueCODIGO_ESTOQUE.AsInteger;
  ADOQueryConsultaProdutos.Parameters.ParamByName('CodigoEstoque').Value := CODIGOESTOQUE1;

end;

procedure TFormProdutosEstoque.DBGrid2CellClick(Column: TColumn);
begin
  CODIGOPRODUTO := ADOQueryConsultaProdutosCODIGO_PROD_ESTOQUE.AsInteger;
  COLHEITA1 := ADOQueryConsultaProdutosCOLHEITA_PROD_ESTOQUE.AsInteger;

  if ADOQueryConsultaProdutosCODIGO_PROD_ESTOQUE.AsInteger = 0 then
  begin
    ButtonAlterarProduto.Enabled := False;
    Panel7.Enabled := False;
  end
  else if ADOQueryConsultaProdutosCODIGO_PROD_ESTOQUE.AsInteger <> 0 then
  begin
    ButtonAlterarProduto.Enabled := True;
    Panel7.Enabled := True;
  end;
end;

procedure TFormProdutosEstoque.DBLookupComboBoxCidadeCoClick(Sender: TObject);
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
    SQL.add('from TB_ESTOQUE, TB_CIDADE, TB_ESTADO');
    SQL.add('where');
    SQL.Add('CIDADE_ESTOQUE = CodigoCidade and ESTADO_ESTOQUE = CodigoEstado and');
    SQL.Add('EstadoCidade = CodigoEstado and');
    SQL.add('SITUACAO_ESTOQUE = 1 and');
    SQL.add('CIDADE_ESTOQUE =' +IntToStr(ADOQueryCidadeCCodigoCidade.value)+'');
    Clipboard.AsText := ADOQueryConsultaEstoque.SQL.Text;
    Open;
  end;
end;

procedure TFormProdutosEstoque.DBLookupComboBoxEstadoCoClick(Sender: TObject);
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

procedure TFormProdutosEstoque.DBLookupComboBoxEstoqueAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormProdutosEstoque.EditDescricaoAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormProdutosEstoque.EditQuantidadeAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormProdutosEstoque.EditUnidadeAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormProdutosEstoque.EditValorAChange(Sender: TObject);
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

procedure TFormProdutosEstoque.EditValorAClick(Sender: TObject);
begin
  EditValorA.SelStart := Length(EditValorA.text) ;
end;

procedure TFormProdutosEstoque.EditValorAEnter(Sender: TObject);
begin
  EditValorA.SelStart := Length(EditValorA.text);
end;

procedure TFormProdutosEstoque.EditValorAKeyPress(Sender: TObject;
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

procedure TFormProdutosEstoque.FormShow(Sender: TObject);
begin
  ADOQueryConsultaEstoque.Close;
  ADOQueryConsultaEstoque.Open;
  ADOQueryConsultaProdutos.Close;
  ADOQueryConsultaProdutos.Open;
end;

procedure TFormProdutosEstoque.Panel2Click(Sender: TObject);
begin
  ButtonAlterarClick(Self);
end;

procedure TFormProdutosEstoque.Panel3Click(Sender: TObject);
begin
  ButtonLimparAClick(Self);
end;

procedure TFormProdutosEstoque.Panel7Click(Sender: TObject);
begin
  ButtonAlterarProdutoClick(Self);
end;

procedure TFormProdutosEstoque.PanelConsultaClick(Sender: TObject);
begin
  ADOQueryConsultaEstoque.Close;
  ADOQueryConsultaEstoque.Open;


  if PanelConsultaDBGrid.Visible = False then
  begin
    PanelConsultaDBGrid.Visible := True;
    PanelAlteracaoCampos.Visible := False;
  end
  else if PanelConsultaDBGrid.Visible = True  then
  begin
    PanelConsultaDBGrid.Visible := False;
  end;

  ADOQueryConsultaProdutos.Close;
  ADOQueryConsultaProdutos.Open;
end;

procedure TFormProdutosEstoque.PanelConsultaMouseEnter(Sender: TObject);
begin
  PanelConsulta.Font.Size := 14;
end;

procedure TFormProdutosEstoque.PanelConsultaMouseLeave(Sender: TObject);
begin
  PanelConsulta.Font.Size := 12;
end;

end.
