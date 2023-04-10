unit UnitDestino;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage,
  UnitDM;

type
  TFormTLDestino = class(TForm)
    Lb_NomeDestino: TLabel;
    Sbt_Novo: TSpeedButton;
    Sbt_Aterar: TSpeedButton;
    Sbt_Salvar: TSpeedButton;
    Sbt_Sair: TSpeedButton;
    Bev_Destinacao: TBevel;
    DBE_Destinacao: TDBEdit;
    Shape1: TShape;
    Bev_ListaDestinacao: TBevel;
    DBGrid_ListaDestinacao: TDBGrid;
    Img_ListaContatos: TImage;
    Lb_ListaDestinacao: TLabel;
    Lb_id: TLabel;
    DBE_id_Destino: TDBEdit;
    Img_Doador: TImage;
    DataSDestinacao: TDataSource;
    procedure Sbt_SairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTLDestino: TFormTLDestino;

implementation

{$R *.dfm}

procedure TFormTLDestino.Sbt_SairClick(Sender: TObject);
begin
 FormTLDestino.Close;
end;

end.
