unit Unit_Aplicacao_plantio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids, DateUtils,
  Vcl.DBGrids, Vcl.WinXPickers, Vcl.StdCtrls, Data.Win.ADODB;

type
  TFormAplicacaoPlantio = class(TForm)
    Panel1: TPanel;
    PanelCampos: TPanel;
    DBGrid1: TDBGrid;
    EditQuantidade: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    DatePickerAplicacao: TDatePicker;
    Label3: TLabel;
    EditInsumo: TEdit;
    ButtonCadastrar: TButton;
    ADOStoredProcCadastroAplicacao: TADOStoredProc;
    ADOQueryConsultaAplicacao: TADOQuery;
    DataSourceConsultaAplicacao: TDataSource;
    ADOQueryConsultaAplicacaoCODIGO_INS_ESTOQUE: TAutoIncField;
    ADOQueryConsultaAplicacaoDESCRICAO_INS_ESTOQUE: TStringField;
    ADOQueryConsultaAplicacaoQUANTIDADE_INS_ESTOQUE: TBCDField;
    ADOQueryConsultaAplicacaoUNIDADE_INS_ESTOQUE: TStringField;
    ADOQueryConsultaAplicacaoESTOQUE_INS_ESTOQUE: TIntegerField;
    ADOQueryConsultaAplicacaoDATA_ENTRADA_INS_ESTOQUE: TWideStringField;
    ADOQueryConsultaAplicacaoDATA_VALIDADE_INS_ESTOQUE: TWideStringField;
    ADOQueryConsultaAplicacaoPRECO_INSUMO: TBCDField;
    ADOStoredProcAtualizacaoInsumo: TADOStoredProc;
    ComboBoxUnidade: TComboBox;
    PanelDB: TPanel;
    Label4: TLabel;
    ButtonCadastrar2: TButton;
    Panel4: TPanel;
    Panel2: TPanel;
    ADOConnection1: TADOConnection;
    procedure ButtonCadastrarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure ButtonCadastrar2Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CODIGOPLANTIO, CODIGOINSUMO : integer;
    QUANTIDADE : currency;
  end;

var
  FormAplicacaoPlantio: TFormAplicacaoPlantio;

implementation

{$R *.dfm}

uses Unit_Plantio, Unit_Plantio_Estufa;

procedure TFormAplicacaoPlantio.ButtonCadastrar2Click(Sender: TObject);
begin

  if EditInsumo.Text = '' then
  begin
    Application.MessageBox('É necessário inserir o campo INSUMO','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    EditInsumo.SetFocus;
    Exit;
  end;

  if (EditQuantidade.Text = '') or (EditQuantidade.Text = '0') then
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

  QUANTIDADE := StrToCurr(EditQuantidade.Text);

  with ADOStoredProcCadastroAplicacao.Parameters do
  begin
    ParamByName('@INSUMO').Value := CODIGOINSUMO;
    ParamByName('@DESCRICAO').Value := EditInsumo.Text;
    ParamByName('@QUANTIDADE').Value := QUANTIDADE;
    ParamByName('@UNIDADE').Value := ComboBoxUnidade.Text;
    ParamByName('@PLANTIO').Value := Null;
    ParamByName('@PLANTIOESTUFA').Value := CODIGOPLANTIO;
    ParamByName('@DATA').Value := FormatDateTime('yyyy/MM/DD',DatePickerAplicacao.Date);
  end;
  ADOStoredProcCadastroAplicacao.ExecProc;
  Application.MessageBox('Cadastrado com sucesso!','Confirmação',MB_ICONINFORMATION);
  Unit_Plantio.FormPlantio.ADOQueryConsultaPlantio.Close;
  Unit_Plantio.FormPlantio.ADOQueryConsultaPlantio.Open;
  ADOStoredProcAtualizacaoInsumo.Parameters.ParamByName('@CODIGO').Value := CODIGOINSUMO;
  ADOStoredProcAtualizacaoInsumo.Parameters.ParamByName('@QUANTIDADE').Value := QUANTIDADE;
  ADOStoredProcAtualizacaoInsumo.ExecProc;
  ADOQueryConsultaAplicacao.Close;
  ADOQueryConsultaAplicacao.Open;
  Unit_Plantio.FormPlantio.ADOQueryAplic.Close;
  Unit_Plantio.FormPlantio.ADOQueryAplic.Open;
  Unit_Plantio_Estufa.FormPlantioEstufa.ADOQueryAplic.Close;
  Unit_Plantio_Estufa.FormPlantioEstufa.ADOQueryAplic.Open;
  EditQuantidade.Clear;
end;

procedure TFormAplicacaoPlantio.ButtonCadastrarClick(Sender: TObject);
begin

  if EditInsumo.Text = '' then
  begin
    Application.MessageBox('É necessário inserir o campo INSUMO','Atenção!',MB_ICONEXCLAMATION+MB_OK);
    EditInsumo.SetFocus;
    Exit;
  end;

  if (EditQuantidade.Text = '') or (EditQuantidade.Text = '0') then
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

  QUANTIDADE := StrToCurr(EditQuantidade.Text);

  with ADOStoredProcCadastroAplicacao.Parameters do
  begin
    ParamByName('@INSUMO').Value := CODIGOINSUMO;
    ParamByName('@DESCRICAO').Value := EditInsumo.Text;
    ParamByName('@QUANTIDADE').Value := QUANTIDADE;
    ParamByName('@UNIDADE').Value := ComboBoxUnidade.Text;
    ParamByName('@PLANTIO').Value := CODIGOPLANTIO;
    ParamByName('@PLANTIOESTUFA').Value := Null;
    ParamByName('@DATA').Value := FormatDateTime('yyyy/MM/DD',DatePickerAplicacao.Date);
  end;
  ADOStoredProcCadastroAplicacao.ExecProc;
  Application.MessageBox('Cadastrado com sucesso!','Confirmação',MB_ICONINFORMATION);
  Unit_Plantio.FormPlantio.ADOQueryConsultaPlantio.Close;
  Unit_Plantio.FormPlantio.ADOQueryConsultaPlantio.Open;
  ADOStoredProcAtualizacaoInsumo.Parameters.ParamByName('@CODIGO').Value := CODIGOINSUMO;
  ADOStoredProcAtualizacaoInsumo.Parameters.ParamByName('@QUANTIDADE').Value := QUANTIDADE;
  ADOStoredProcAtualizacaoInsumo.ExecProc;
  ADOQueryConsultaAplicacao.Close;
  ADOQueryConsultaAplicacao.Open;
  Unit_Plantio.FormPlantio.ADOQueryAplic.Close;
  Unit_Plantio.FormPlantio.ADOQueryAplic.Open;
  Unit_Plantio_Estufa.FormPlantioEstufa.ADOQueryAplic.Close;
  Unit_Plantio_Estufa.FormPlantioEstufa.ADOQueryAplic.Open;
  EditQuantidade.Clear;
  //ComboBoxUnidade.Clear;
end;

procedure TFormAplicacaoPlantio.DBGrid1CellClick(Column: TColumn);
begin
  CODIGOINSUMO := ADOQueryConsultaAplicacaoCODIGO_INS_ESTOQUE.AsInteger;
  EditInsumo.Text := ADOQueryConsultaAplicacaoDESCRICAO_INS_ESTOQUE.AsString;
  ComboBoxUnidade.Text := ADOQueryConsultaAplicacaoUNIDADE_INS_ESTOQUE.AsString;
end;

procedure TFormAplicacaoPlantio.FormShow(Sender: TObject);
begin
  ADOQueryConsultaAplicacao.Close;
  ADOQueryConsultaAplicacao.Open;
  EditQuantidade.Clear;
  DatePickerAplicacao.Date := Now;
end;

procedure TFormAplicacaoPlantio.Panel2Click(Sender: TObject);
begin
  ButtonCadastrarClick(Self);
end;

procedure TFormAplicacaoPlantio.Panel4Click(Sender: TObject);
begin
  ButtonCadastrar2Click(Self);
end;

end.
