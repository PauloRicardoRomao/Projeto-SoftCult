unit Unit_Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TFormMenu = class(TForm)
    PanelFundo1: TPanel;
    PanelButtonPropriedades: TPanel;
    PanelButtonPlantios: TPanel;
    PanelButtonProdutos: TPanel;
    PanelPropriedadesSuspenso: TPanel;
    PanelPlantiosSuspenso: TPanel;
    PanelProdutosSuspenso: TPanel;
    PanelMenuSuperior: TPanel;
    PanelButtonEstoqueProduzido: TPanel;
    PanelButtonEstoqueInsumos: TPanel;
    PanelButtonEstufas: TPanel;
    PanelButtonAreas: TPanel;
    PanelButtonPlantiosEstufas: TPanel;
    PanelButtonPlantiosAreas: TPanel;
    PanelButtonInsumosEstoque: TPanel;
    PanelButtonProdutosEstoque: TPanel;
    ImageFUNDO: TImage;
    PanelInferior: TPanel;
    procedure PanelButtonPropriedadesClick(Sender: TObject);
    procedure PanelButtonPlantiosClick(Sender: TObject);
    procedure PanelButtonProdutosClick(Sender: TObject);
    procedure PanelButtonEstoqueProduzidoClick(Sender: TObject);
    procedure PanelButtonEstoqueInsumosClick(Sender: TObject);
    procedure PanelButtonEstufasClick(Sender: TObject);
    procedure PanelButtonAreasClick(Sender: TObject);
    procedure PanelButtonPlantiosEstufasClick(Sender: TObject);
    procedure PanelButtonPlantiosAreasClick(Sender: TObject);
    procedure PanelButtonProdutosEstoqueClick(Sender: TObject);
    procedure PanelButtonInsumosEstoqueClick(Sender: TObject);
    procedure PanelButtonPropriedadesMouseEnter(Sender: TObject);
    procedure PanelButtonPropriedadesMouseLeave(Sender: TObject);
    procedure PanelButtonPlantiosMouseEnter(Sender: TObject);
    procedure PanelButtonProdutosMouseEnter(Sender: TObject);
    procedure PanelButtonPlantiosMouseLeave(Sender: TObject);
    procedure PanelButtonProdutosMouseLeave(Sender: TObject);
    procedure PanelMenuSuperiorClick(Sender: TObject);
    procedure PanelFundo1Click(Sender: TObject);
    procedure PanelButtonEstoqueProduzidoMouseEnter(Sender: TObject);
    procedure PanelButtonEstoqueInsumosMouseEnter(Sender: TObject);
    procedure PanelButtonEstufasMouseEnter(Sender: TObject);
    procedure PanelButtonAreasMouseEnter(Sender: TObject);
    procedure PanelButtonAreasMouseLeave(Sender: TObject);
    procedure PanelButtonEstufasMouseLeave(Sender: TObject);
    procedure PanelButtonEstoqueInsumosMouseLeave(Sender: TObject);
    procedure PanelButtonEstoqueProduzidoMouseLeave(Sender: TObject);
    procedure PanelButtonPlantiosEstufasMouseLeave(Sender: TObject);
    procedure PanelButtonPlantiosAreasMouseLeave(Sender: TObject);
    procedure PanelButtonPlantiosAreasMouseEnter(Sender: TObject);
    procedure PanelButtonPlantiosEstufasMouseEnter(Sender: TObject);
    procedure PanelButtonProdutosEstoqueMouseEnter(Sender: TObject);
    procedure PanelButtonInsumosEstoqueMouseEnter(Sender: TObject);
    procedure PanelButtonInsumosEstoqueMouseLeave(Sender: TObject);
    procedure PanelButtonProdutosEstoqueMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenu: TFormMenu;

implementation

{$R *.dfm}

uses Unit_Area, Unit_Estoque_Insumos, Unit_Estoque_producao, Unit_Estufa,
  Unit_Plantio, Unit_Plantio_Estufa, Unit_Produtos_Estoque,
  Unit_Produtos_Insumos_Estoque;

procedure TFormMenu.PanelButtonAreasClick(Sender: TObject);
begin
  PanelMenuSuperiorClick(Self);

  Unit_Area.FormArea.ShowModal;
end;

procedure TFormMenu.PanelButtonAreasMouseEnter(Sender: TObject);
begin
  PanelButtonEstoqueProduzido.font.Style := [];
  PanelButtonEstoqueInsumos.font.Style := [];
  PanelButtonEstufas.font.Style := [];
  PanelButtonAreas.font.Style := [fsBold];

  PanelButtonAreas.BevelOuter := bvRaised;
end;

procedure TFormMenu.PanelButtonAreasMouseLeave(Sender: TObject);
begin
  PanelButtonEstoqueProduzido.font.Style := [];
  PanelButtonEstoqueInsumos.font.Style := [];
  PanelButtonEstufas.font.Style := [];
  PanelButtonAreas.font.Style := [];

  PanelButtonAreas.BevelOuter := bvNone;
end;

procedure TFormMenu.PanelButtonEstoqueInsumosClick(Sender: TObject);
begin
  PanelMenuSuperiorClick(Self);

  Unit_Estoque_Insumos.FormEstoqueInsumos.ShowModal;
end;

procedure TFormMenu.PanelButtonEstoqueInsumosMouseEnter(Sender: TObject);
begin
  PanelButtonEstoqueProduzido.font.Style := [];
  PanelButtonEstoqueInsumos.font.Style := [fsBold];
  PanelButtonEstufas.font.Style := [];
  PanelButtonAreas.font.Style := [];

  PanelButtonEstoqueInsumos.BevelOuter := bvRaised;
end;

procedure TFormMenu.PanelButtonEstoqueInsumosMouseLeave(Sender: TObject);
begin
  PanelButtonEstoqueProduzido.font.Style := [];
  PanelButtonEstoqueInsumos.font.Style := [];
  PanelButtonEstufas.font.Style := [];
  PanelButtonAreas.font.Style := [];

  PanelButtonEstoqueInsumos.BevelOuter := bvNone;
end;

procedure TFormMenu.PanelButtonEstoqueProduzidoClick(Sender: TObject);
begin
  PanelMenuSuperiorClick(Self);

  Unit_Estoque_producao.FormEstoqueProduzido.ShowModal;
end;

procedure TFormMenu.PanelButtonEstoqueProduzidoMouseEnter(Sender: TObject);
begin
  PanelButtonEstoqueProduzido.font.Style := [fsBold];
  PanelButtonEstoqueInsumos.font.Style := [];
  PanelButtonEstufas.font.Style := [];
  PanelButtonAreas.font.Style := [];

  panelbuttonestoqueproduzido.BevelOuter := bvRaised;
end;

procedure TFormMenu.PanelButtonEstoqueProduzidoMouseLeave(Sender: TObject);
begin
  PanelButtonEstoqueProduzido.font.Style := [];
  PanelButtonEstoqueInsumos.font.Style := [];
  PanelButtonEstufas.font.Style := [];
  PanelButtonAreas.font.Style := [];

  panelbuttonestoqueproduzido.BevelOuter := bvNone;
end;

procedure TFormMenu.PanelButtonEstufasClick(Sender: TObject);
begin
  PanelMenuSuperiorClick(Self);

  Unit_Estufa.FormEstufa.ShowModal;
end;

procedure TFormMenu.PanelButtonEstufasMouseEnter(Sender: TObject);
begin
  PanelButtonEstoqueProduzido.font.Style := [];
  PanelButtonEstoqueInsumos.font.Style := [];
  PanelButtonEstufas.font.Style := [fsBold];
  PanelButtonAreas.font.Style := [];

  PanelButtonEstufas.BevelOuter := bvRaised;
end;

procedure TFormMenu.PanelButtonEstufasMouseLeave(Sender: TObject);
begin
  PanelButtonEstoqueProduzido.font.Style := [];
  PanelButtonEstoqueInsumos.font.Style := [];
  PanelButtonEstufas.font.Style := [];
  PanelButtonAreas.font.Style := [];

  PanelButtonEstufas.BevelOuter := bvNone;
end;

procedure TFormMenu.PanelButtonInsumosEstoqueClick(Sender: TObject);
begin
  PanelMenuSuperiorClick(Self);

  Unit_Produtos_Insumos_Estoque.FormProdutosInsumos.ShowModal;
end;

procedure TFormMenu.PanelButtonInsumosEstoqueMouseEnter(Sender: TObject);
begin
  PanelButtonProdutosEstoque.font.Style := [];
  PanelButtonInsumosEstoque.font.Style := [fsBold];

  PanelButtonInsumosEstoque.BevelOuter := bvRaised;
end;

procedure TFormMenu.PanelButtonInsumosEstoqueMouseLeave(Sender: TObject);
begin
  PanelButtonProdutosEstoque.font.Style := [];
  PanelButtonInsumosEstoque.font.Style := [];

  PanelButtonInsumosEstoque.BevelOuter := bvNone;
end;

procedure TFormMenu.PanelButtonPlantiosAreasClick(Sender: TObject);
begin
  PanelMenuSuperiorClick(Self);

  Unit_Plantio.FormPlantio.ShowModal;
end;

procedure TFormMenu.PanelButtonPlantiosAreasMouseEnter(Sender: TObject);
begin
  PanelButtonPlantiosEstufas.font.Style := [];
  PanelButtonPlantiosAreas.font.Style := [fsBold];

  PanelButtonPlantiosAreas.BevelOuter := bvRaised;
end;

procedure TFormMenu.PanelButtonPlantiosAreasMouseLeave(Sender: TObject);
begin
  PanelButtonPlantiosEstufas.font.Style := [];
  PanelButtonPlantiosAreas.font.Style := [];

  PanelButtonPlantiosAreas.BevelOuter := bvNone;
end;

procedure TFormMenu.PanelButtonPlantiosClick(Sender: TObject);
begin
  if PanelPlantiosSuspenso.Visible = False then
  begin
    PanelPlantiosSuspenso.Visible := True;
    PanelPropriedadesSuspenso.Visible := False;
    PanelProdutosSuspenso.Visible := False;
    PanelButtonPlantios.Font.Style := [fsbold];
    PanelButtonPropriedades.Font.Style := [];
    PanelButtonProdutos.Font.Style := [];
  end
  else if PanelPlantiosSuspenso.Visible = True then
  begin
    PanelPlantiosSuspenso.Visible := False;
    PanelButtonPlantios.Font.Style := [];
  end;
end;

procedure TFormMenu.PanelButtonPlantiosEstufasClick(Sender: TObject);
begin
  PanelMenuSuperiorClick(Self);

  Unit_Plantio_Estufa.FormPlantioEstufa.ShowModal;
end;

procedure TFormMenu.PanelButtonPlantiosEstufasMouseEnter(Sender: TObject);
begin
  PanelButtonPlantiosEstufas.font.Style := [fsBold];
  PanelButtonPlantiosAreas.font.Style := [];

  PanelButtonPlantiosEstufas.BevelOuter := bvRaised;
end;

procedure TFormMenu.PanelButtonPlantiosEstufasMouseLeave(Sender: TObject);
begin
  PanelButtonPlantiosEstufas.font.Style := [];
  PanelButtonPlantiosAreas.font.Style := [];

  PanelButtonPlantiosEstufas.BevelOuter := bvNone;
end;

procedure TFormMenu.PanelButtonPlantiosMouseEnter(Sender: TObject);
begin
//  PanelButtonPlantios.Font.Style := [fsbold];
end;

procedure TFormMenu.PanelButtonPlantiosMouseLeave(Sender: TObject);
begin
//  PanelButtonPlantios.Font.Style := [];
end;

procedure TFormMenu.PanelButtonProdutosClick(Sender: TObject);
begin
  if PanelProdutosSuspenso.Visible = False then
  begin
    PanelProdutosSuspenso.Visible := True;
    PanelPropriedadesSuspenso.Visible := False;
    PanelPlantiosSuspenso.Visible := False;
    PanelButtonProdutos.Font.Style := [fsbold];
    PanelButtonPropriedades.Font.Style := [];
    PanelButtonPlantios.Font.Style := [];
  end
  else if PanelProdutosSuspenso.Visible = True then
  begin
    PanelProdutosSuspenso.Visible := False;
    PanelButtonProdutos.Font.Style := [];
  end;
end;

procedure TFormMenu.PanelButtonProdutosEstoqueClick(Sender: TObject);
begin
  PanelMenuSuperiorClick(Self);

  Unit_Produtos_Estoque.FormProdutosEstoque.ShowModal;
end;

procedure TFormMenu.PanelButtonProdutosEstoqueMouseEnter(Sender: TObject);
begin
  PanelButtonProdutosEstoque.font.Style := [fsBold];
  PanelButtonInsumosEstoque.font.Style := [];

  PanelButtonProdutosEstoque.BevelOuter := bvRaised;
end;

procedure TFormMenu.PanelButtonProdutosEstoqueMouseLeave(Sender: TObject);
begin
  PanelButtonProdutosEstoque.font.Style := [];
  PanelButtonInsumosEstoque.font.Style := [];

  PanelButtonProdutosEstoque.BevelOuter := bvNone;
end;

procedure TFormMenu.PanelButtonProdutosMouseEnter(Sender: TObject);
begin
  //PanelButtonProdutos.Font.Style := [fsbold];
end;

procedure TFormMenu.PanelButtonProdutosMouseLeave(Sender: TObject);
begin
  //PanelButtonProdutos.Font.Style := [];
end;

procedure TFormMenu.PanelButtonPropriedadesClick(Sender: TObject);
begin
  if PanelPropriedadesSuspenso.Visible = False then
  begin
    PanelPropriedadesSuspenso.Visible := True;
    PanelPlantiosSuspenso.Visible := False;
    PanelProdutosSuspenso.Visible := False;
    PanelButtonPropriedades.Font.Style := [fsbold];
    PanelButtonPlantios.Font.Style := [];
    PanelButtonProdutos.Font.Style := [];
  end
  else if PanelPropriedadesSuspenso.Visible = True then
  begin
    PanelPropriedadesSuspenso.Visible := False;
    PanelButtonPropriedades.Font.Style := [];
  end;
end;

procedure TFormMenu.PanelButtonPropriedadesMouseEnter(Sender: TObject);
begin
  //PanelButtonPropriedades.Font.Style := [fsbold];
end;

procedure TFormMenu.PanelButtonPropriedadesMouseLeave(Sender: TObject);
begin
  //PanelButtonPropriedades.Font.Style := [];
end;

procedure TFormMenu.PanelFundo1Click(Sender: TObject);
begin
  PanelPropriedadesSuspenso.Visible := False;
  PanelPlantiosSuspenso.Visible := False;
  PanelProdutosSuspenso.Visible := False;
  PanelButtonPropriedades.Font.Style := [];
  PanelButtonPlantios.Font.Style := [];
  PanelButtonProdutos.Font.Style := [];
end;

procedure TFormMenu.PanelMenuSuperiorClick(Sender: TObject);
begin
  PanelPropriedadesSuspenso.Visible := False;
  PanelPlantiosSuspenso.Visible := False;
  PanelProdutosSuspenso.Visible := False;
  PanelButtonPropriedades.Font.Style := [];
  PanelButtonPlantios.Font.Style := [];
  PanelButtonProdutos.Font.Style := [];
end;

end.
