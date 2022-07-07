unit Unit_Cadastro_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, DateUtils,
  Vcl.WinXPickers, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TFormCadastroProduto = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EditPreco: TEdit;
    ButtonCadastro: TButton;
    DatePickerEntrada: TDatePicker;
    DatePickerValidade: TDatePicker;
    ADOStoredProcCadastroProduto: TADOStoredProc;
    Label4: TLabel;
    DBLookupComboBoxEstoque: TDBLookupComboBox;
    ADOQueryEstoque: TADOQuery;
    DataSourceEstoque: TDataSource;
    ADOQueryEstoqueCODIGO_ESTOQUE: TAutoIncField;
    ADOQueryEstoqueCAPACIDADE_ESTOQUE: TBCDField;
    ADOQueryEstoqueUNIDADE_ESTOQUE: TStringField;
    ADOQueryEstoqueCIDADE_ESTOQUE: TIntegerField;
    ADOQueryEstoqueESTADO_ESTOQUE: TIntegerField;
    ADOQueryEstoqueVALOR_ESTOQUE: TBCDField;
    ADOQueryEstoqueFOTO_ESTOQUE: TStringField;
    ADOQueryEstoqueSITUACAO_ESTOQUE: TBooleanField;
    ADOQueryEstoqueOBS_ESTOQUE: TStringField;
    ADOStoredProcAtivacaoInativacao: TADOStoredProc;
    EditQuantidade: TEdit;
    Label5: TLabel;
    ADOStoredProcColheita: TADOStoredProc;
    ComboBoxUnidade: TComboBox;
    Label6: TLabel;
    EditDescricao: TEdit;
    ButtonCadastro2: TButton;
    Panel4: TPanel;
    Panel2: TPanel;
    ADOStoredProcInativ: TADOStoredProc;
    ADOConnection1: TADOConnection;
    procedure ButtonCadastroClick(Sender: TObject);
    procedure EditPrecoChange(Sender: TObject);
    procedure EditPrecoClick(Sender: TObject);
    procedure EditPrecoEnter(Sender: TObject);
    procedure EditPrecoKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxUnidadeKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBoxEstoqueKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure ButtonCadastro2Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DESCRICAO, UNIDADE : string;
    QUANTIDADE : Currency;
    CODIGOPLANTIO, COLHEITA : integer;
  end;

var
  FormCadastroProduto: TFormCadastroProduto;

implementation

{$R *.dfm}

uses Unit_Plantio, Unit_Produtos_Estoque, Unit_Plantio_Estufa;

procedure TFormCadastroProduto.ButtonCadastro2Click(Sender: TObject);
begin
   {if (EditPreco.Text = '0,00') and (EditPreco.Text = '') and (EditPreco.Text = ) then
  begin
    Application.MessageBox('É necessário inserir o campo PREÇO','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    EditPreco.SetFocus;
    Exit;
  end; }

  if (EditPreco.Text = '.') then
  begin
    Application.MessageBox('valor digitado INVÁLIDO','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    EditPreco.Clear;
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

  with ADOStoredProcColheita.Parameters do
  begin
    ParamByName('@PLANTIO').Value := Null;
    ParamByName('@PLANTIOESTUFA').Value := CODIGOPLANTIO;
    ParamByName('@DESCRICAO').Value := DESCRICAO;
    ParamByName('@QUANTIDADE').Value := QUANTIDADE;
    ParamByName('@UNIDADE').Value := UNIDADE;
    ParamByName('@DATA').Value := FormatDateTime('yyyy/MM/DD',Now);
  end;
  ADOStoredProcColheita.ExecProc;

  COLHEITA := ADOStoredProcColheita.Parameters.ParamByName('@RETURN_VALUE').Value;
  UNIDADE := ComboBoxUnidade.Text;

  with ADOStoredProcCadastroProduto.Parameters do
  begin
    ParamByName('@DESCRICAO').Value := DESCRICAO;
    ParamByName('@QUANTIDADE').Value := QUANTIDADE;
    ParamByName('@UNIDADE').Value := UNIDADE;
    ParamByName('@COLHEITA').Value := COLHEITA;
    ParamByName('@ESTOQUE').Value := DBLookupComboBoxEstoque.KeyValue;
    ParamByName('@DATAENTRADA').Value := FormatDateTime('yyyy/MM/DD',DatePickerEntrada.Date);
    ParamByName('@DATAVALIDADE').Value := FormatDateTime('yyyy/MM/DD',DatePickerEntrada.Date);
    ParamByName('@PRECO').Value := StrToFloat(EditPreco.Text);
  end;
  ADOStoredProcCadastroProduto.ExecProc;
  Application.MessageBox('Cadastrado com sucesso!','Confirmação',MB_ICONINFORMATION);

  ADOStoredProcInativ.Parameters.ParamByName('@CODIGO').Value := CODIGOPLANTIO;
  ADOStoredProcInativ.Parameters.ParamByName('@SITUACAO').Value := 0;
  ADOStoredProcInativ.ExecProc;

  Unit_Plantio.FormPlantio.ADOQueryConsultaPlantio.Close;
  Unit_Plantio.FormPlantio.ADOQueryConsultaPlantio.Open;
  Unit_Plantio.FormPlantio.ADOQueryAplic.Close;
  Unit_Plantio.FormPlantio.ADOQueryAplic.Open;

  Unit_Plantio.FormPlantio.ButtonIniciarPlantio.Enabled := False;
  Unit_Plantio.FormPlantio.ButtonAplicacao.Enabled := False;
  Unit_Plantio.FormPlantio.ButtonAlterarPlantio.Enabled := False;
  Unit_Plantio.FormPlantio.ButtonColheita.Enabled := False;

  Unit_Plantio_Estufa.FormPlantioEstufa.ADOQueryConsultaPlantio.Close;
  Unit_Plantio_Estufa.FormPlantioEstufa.ADOQueryConsultaPlantio.Open;
  Unit_Plantio_Estufa.FormPlantioEstufa.ADOQueryAplic.Close;
  Unit_Plantio_Estufa.FormPlantioEstufa.ADOQueryAplic.Open;

  Unit_Plantio_Estufa.FormPlantioEstufa.ButtonIniciarPlantio.Enabled := False;
  Unit_Plantio_Estufa.FormPlantioEstufa.ButtonAplicacao.Enabled := False;
  Unit_Plantio_Estufa.FormPlantioEstufa.ButtonAlterarPlantio.Enabled := False;
  Unit_Plantio_Estufa.FormPlantioEstufa.ButtonColheita.Enabled := False;


  FormCadastroProduto.Close;
end;

procedure TFormCadastroProduto.ButtonCadastroClick(Sender: TObject);
begin

  {if (EditPreco.Text = '0,00') and (EditPreco.Text = '') and (EditPreco.Text = ) then
  begin
    Application.MessageBox('É necessário inserir o campo PREÇO','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    EditPreco.SetFocus;
    Exit;
  end; }

  if (EditPreco.Text = '.') then
  begin
    Application.MessageBox('valor digitado INVÁLIDO','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    EditPreco.Clear;
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

  with ADOStoredProcColheita.Parameters do
  begin
    ParamByName('@PLANTIOESTUFA').Value := Null;
    ParamByName('@PLANTIO').Value := CODIGOPLANTIO;
    ParamByName('@DESCRICAO').Value := DESCRICAO;
    ParamByName('@QUANTIDADE').Value := QUANTIDADE;
    ParamByName('@UNIDADE').Value := UNIDADE;
    ParamByName('@DATA').Value := FormatDateTime('yyyy/MM/DD',Now);
  end;
  ADOStoredProcColheita.ExecProc;

  COLHEITA := ADOStoredProcColheita.Parameters.ParamByName('@RETURN_VALUE').Value;
  UNIDADE := ComboBoxUnidade.Text;

  with ADOStoredProcCadastroProduto.Parameters do
  begin
    ParamByName('@DESCRICAO').Value := DESCRICAO;
    ParamByName('@QUANTIDADE').Value := QUANTIDADE;
    ParamByName('@UNIDADE').Value := UNIDADE;
    ParamByName('@COLHEITA').Value := COLHEITA;
    ParamByName('@ESTOQUE').Value := DBLookupComboBoxEstoque.KeyValue;
    ParamByName('@DATAENTRADA').Value := FormatDateTime('yyyy/MM/DD',DatePickerEntrada.Date);
    ParamByName('@DATAVALIDADE').Value := FormatDateTime('yyyy/MM/DD',DatePickerEntrada.Date);
    ParamByName('@PRECO').Value := StrToFloat(EditPreco.Text);
  end;
  ADOStoredProcCadastroProduto.ExecProc;
  Application.MessageBox('Cadastrado com sucesso!','Confirmação',MB_ICONINFORMATION);

  ADOStoredProcAtivacaoInativacao.Parameters.ParamByName('@CODIGO').Value := CODIGOPLANTIO;
  ADOStoredProcAtivacaoInativacao.Parameters.ParamByName('@SITUACAO').Value := 0;
  ADOStoredProcAtivacaoInativacao.ExecProc;

  Unit_Plantio.FormPlantio.ADOQueryConsultaPlantio.Close;
  Unit_Plantio.FormPlantio.ADOQueryConsultaPlantio.Open;
  Unit_Plantio.FormPlantio.ADOQueryAplic.Close;
  Unit_Plantio.FormPlantio.ADOQueryAplic.Open;

  Unit_Plantio.FormPlantio.ButtonIniciarPlantio.Enabled := False;
  Unit_Plantio.FormPlantio.ButtonAplicacao.Enabled := False;
  Unit_Plantio.FormPlantio.ButtonAlterarPlantio.Enabled := False;
  Unit_Plantio.FormPlantio.ButtonColheita.Enabled := False;

  Unit_Plantio_Estufa.FormPlantioEstufa.ADOQueryConsultaPlantio.Close;
  Unit_Plantio_Estufa.FormPlantioEstufa.ADOQueryConsultaPlantio.Open;
  Unit_Plantio_Estufa.FormPlantioEstufa.ADOQueryAplic.Close;
  Unit_Plantio_Estufa.FormPlantioEstufa.ADOQueryAplic.Open;

  Unit_Plantio_Estufa.FormPlantioEstufa.ButtonIniciarPlantio.Enabled := False;
  Unit_Plantio_Estufa.FormPlantioEstufa.ButtonAplicacao.Enabled := False;
  Unit_Plantio_Estufa.FormPlantioEstufa.ButtonAlterarPlantio.Enabled := False;
  Unit_Plantio_Estufa.FormPlantioEstufa.ButtonColheita.Enabled := False;



  FormCadastroProduto.Close;
end;

procedure TFormCadastroProduto.ComboBoxUnidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormCadastroProduto.DBLookupComboBoxEstoqueKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     SelectNext(Sender as TWinControl, true, true);
  end;
end;

procedure TFormCadastroProduto.EditPrecoChange(Sender: TObject);
var
  s : string;
  v : double;
  I : integer;
begin
{  If (EditPreco.Text = emptystr) then
  Begin
    EditPreco.Text := '0,00';
    Exit;
  End;

  s := '';
  for I := 1 to length(EditPreco.Text) do
    if (EditPreco.text[I] in ['0'..'9']) then
      s := s + EditPreco.text[I];

      v := strtofloat(s);
      v := (v /100);

    EditPreco.text := FormatFloat('#####0.00',v);
    EditPreco.SelStart := Length(EditPreco.text);
}
end;

procedure TFormCadastroProduto.EditPrecoClick(Sender: TObject);
begin
  EditPreco.SelStart := Length(EditPreco.text);
end;

procedure TFormCadastroProduto.EditPrecoEnter(Sender: TObject);
begin
  EditPreco.SelStart := Length(EditPreco.text);
end;

procedure TFormCadastroProduto.EditPrecoKeyPress(Sender: TObject;
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

procedure TFormCadastroProduto.FormShow(Sender: TObject);
begin
  ADOQueryEstoque.Close;
  ADOQueryEstoque.Open;
  DBLookupComboBoxEstoque.KeyValue := Null;
  //EditPreco.Text := '0,00';
  EditPreco.Clear;
  DatePickerEntrada.Date := Now;
  DatePickerValidade.Date := Now;
end;

procedure TFormCadastroProduto.Panel2Click(Sender: TObject);
begin
  ButtonCadastro2Click(Self);
end;

procedure TFormCadastroProduto.Panel4Click(Sender: TObject);
begin
  ButtonCadastroClick(Self);
end;

end.
