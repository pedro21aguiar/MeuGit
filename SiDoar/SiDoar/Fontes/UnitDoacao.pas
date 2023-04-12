unit UnitDoacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ButtonGroup,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,
  UnitDM, Data.DB;

type
  TFormTLDoacao = class(TForm)
    Sbt_Novo: TSpeedButton;
    Sbt_Aterar: TSpeedButton;
    Sbt_Salvar: TSpeedButton;
    Sbt_Sair: TSpeedButton;
    Bev_Doacao: TBevel;
    Lb_Doador: TLabel;
    Lb_Valor: TLabel;
    DBE_ValorDoado: TDBEdit;
    Lb_id_doacao: TLabel;
    DBE_id_doacao: TDBEdit;
    Img_Doador: TImage;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Image2: TImage;
    DataSFiltraDestino: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    DataSFiltraDoador: TDataSource;
    procedure Sbt_SairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTLDoacao: TFormTLDoacao;

implementation

{$R *.dfm}

uses UnitTLRelatorios;

procedure TFormTLDoacao.Sbt_SairClick(Sender: TObject);
begin
  FormTLDoacao.Close;
end;

end.
