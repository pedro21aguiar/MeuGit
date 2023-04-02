unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage;

type
  TFormTLPrincipal = class(TForm)
    Pn_MenuTopo: TPanel;
    Bt_Doador: TSpeedButton;
    Bt_Doar: TSpeedButton;
    Bt_Relatorios: TSpeedButton;
    Pn_LogoSistemaPrincipal: TPanel;
    Img_LogoSistema: TImage;
    Bt_Fechar: TSpeedButton;
    Pn_BotaoFechar: TPanel;
    Pn_ImagemFundo: TPanel;
    Img_LogoFundo: TImage;
    Pn_Rodape1: TPanel;
    Lb_Frase1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure BtFecharClick(Sender: TObject);
    procedure Bt_FecharClick(Sender: TObject);
    procedure Bt_DoadorClick(Sender: TObject);
    procedure Bt_DoarClick(Sender: TObject);
    procedure Bt_RelatoriosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTLPrincipal: TFormTLPrincipal;

implementation

{$R *.dfm}

uses UnitCadDoador, UnitDoacao, UnitTLRelatorios;

procedure TFormTLPrincipal.BtFecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormTLPrincipal.Bt_DoadorClick(Sender: TObject);
begin
  formTLCadDoador.ShowModal;
end;

procedure TFormTLPrincipal.Bt_DoarClick(Sender: TObject);
begin
  formTLDoacao.ShowModal;
end;

procedure TFormTLPrincipal.Bt_FecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormTLPrincipal.Bt_RelatoriosClick(Sender: TObject);
begin
  formTLRelatorios.ShowModal;
end;

end.
