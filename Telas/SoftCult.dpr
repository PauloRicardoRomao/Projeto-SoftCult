program SoftCult;

uses
  Vcl.Forms,
  Unit_Aplicacao_plantio in 'Unit_Aplicacao_plantio.pas' {FormAplicacaoPlantio},
  Unit_Area in 'Unit_Area.pas' {FormArea},
  Unit_Cadastro_Produto in 'Unit_Cadastro_Produto.pas' {FormCadastroProduto},
  Unit_Estoque_Insumos in 'Unit_Estoque_Insumos.pas' {FormEstoqueInsumos},
  Unit_Estoque_producao in 'Unit_Estoque_producao.pas' {FormEstoqueProduzido},
  Unit_Estufa in 'Unit_Estufa.pas' {FormEstufa},
  Unit_Menu in 'Unit_Menu.pas' {FormMenu},
  Unit_Plantio in 'Unit_Plantio.pas' {FormPlantio},
  Unit_Plantio_Estufa in 'Unit_Plantio_Estufa.pas' {FormPlantioEstufa},
  Unit_Produtos_Estoque in 'Unit_Produtos_Estoque.pas' {FormProdutosEstoque},
  Unit_Produtos_Insumos_Estoque in 'Unit_Produtos_Insumos_Estoque.pas' {FormProdutosInsumos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'SoftCult-1.0.0.0';
  Application.CreateForm(TFormMenu, FormMenu);
  Application.CreateForm(TFormAplicacaoPlantio, FormAplicacaoPlantio);
  Application.CreateForm(TFormArea, FormArea);
  Application.CreateForm(TFormCadastroProduto, FormCadastroProduto);
  Application.CreateForm(TFormEstoqueInsumos, FormEstoqueInsumos);
  Application.CreateForm(TFormEstoqueProduzido, FormEstoqueProduzido);
  Application.CreateForm(TFormEstufa, FormEstufa);
  Application.CreateForm(TFormPlantio, FormPlantio);
  Application.CreateForm(TFormPlantioEstufa, FormPlantioEstufa);
  Application.CreateForm(TFormProdutosEstoque, FormProdutosEstoque);
  Application.CreateForm(TFormProdutosInsumos, FormProdutosInsumos);
  Application.Run;
end.
