unit acilis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, sSkinProvider, sSkinManager, ExtCtrls, sPanel, StdCtrls, Buttons, sLabel, acImage,
  acPNG;

type
  Tacilis_Form = class(TForm)
    anapanel_sPanel: TsPanel;
    sSkinManager1: TsSkinManager;
    sSkinProvider1: TsSkinProvider;
    durum_sLabel: TsLabel;
    bt_envanter_sImage: TsImage;
    bt_envanter_sLabel: TsLabel;
    procedure FormHide(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sSkinProvider1AfterAnimation(AnimType: TacAnimEvent);
  end;

var
  acilis_Form: Tacilis_Form;
  acilisKapat: Boolean;

implementation

uses
  tablo;

{$R *.dfm}

procedure Tacilis_Form.FormCreate(Sender: TObject);
begin
  acilisKapat := False;
  sSkinManager1.SkinName := sSkinManager1.InternalSkins.Items[Random(sSkinManager1.InternalSkins.Count)].Name;
  Self.Caption := 'Tema: ' + sSkinManager1.SkinName;
end;

procedure Tacilis_Form.FormHide(Sender: TObject);
begin
  Self.Close;
end;

procedure Tacilis_Form.sSkinProvider1AfterAnimation(AnimType: TacAnimEvent);
begin
  Application.ProcessMessages;
  durum_sLabel.Caption := 'Tablolar Kontrol Ediliyor..';
  Application.ProcessMessages;
  Sleep(1000);

  Application.ProcessMessages;
  durum_sLabel.Caption := 'Kayýt Numaralarý sýralanýyor..';
  bt_tablo.BosIDleriKontrolEt;
  Application.ProcessMessages;



//  Sleep(1000);
//  Application.ProcessMessages;
//  durum_sLabel.Caption := '1';
//  Application.ProcessMessages;
//
//  Sleep(1000);
//  Application.ProcessMessages;
//  durum_sLabel.Caption := '2';
//  Application.ProcessMessages;
//
//  Sleep(1000);
//  Application.ProcessMessages;
//  durum_sLabel.Caption := '3';
//  Application.ProcessMessages;

  Sleep(1000);
  acilisKapat := True;
end;

end.


