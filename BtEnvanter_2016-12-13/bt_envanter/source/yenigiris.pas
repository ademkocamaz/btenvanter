unit yenigiris;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ZDataset, acImage, Vcl.StdCtrls, sLabel, sBitBtn, sEdit, sPanel,
  acPNG, Vcl.ExtCtrls, Vcl.Buttons;

type
  Tyenigiris_Form = class(TForm)
    anapanel_sPanel: TsPanel;
    kullaniciAdi_sEdit: TsEdit;
    sifre_sEdit: TsEdit;
    kaydet_sBitBtn: TsBitBtn;
    iptal_sBitBtn: TsBitBtn;
    ustpanel_sPanel: TsPanel;
    bt_envanter_sLabel: TsLabel;
    bt_envanter_sImage: TsImage;
    procedure kaydet_sBitBtnClick(Sender: TObject);
    procedure iptal_sBitBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  yenigiris_Form: Tyenigiris_Form;

implementation

uses
  datamodule;

{$R *.dfm}

procedure Tyenigiris_Form.iptal_sBitBtnClick(Sender: TObject);
begin
  Self.Close;
end;

procedure Tyenigiris_Form.kaydet_sBitBtnClick(Sender: TObject);
var
  giris_ZReadOnlyQuery: TZReadOnlyQuery;
begin
  if kullaniciAdi_sEdit.Text = '' then
  begin
    MessageDlg('Kullanýcý adý boþ olamaz.', mtError, [mbOK], 0);
  end
  else
  try
    giris_ZReadOnlyQuery := TZReadOnlyQuery.Create(Application);
    giris_ZReadOnlyQuery.Connection := bt_data.bt_ZConnection;
    giris_ZReadOnlyQuery.SQL.Text := 'SELECT * FROM GIRIS WHERE KULLANICI_ADI=' + QuotedStr(kullaniciAdi_sEdit.Text);
    giris_ZReadOnlyQuery.Active := True;
    if giris_ZReadOnlyQuery.RecordCount > 1 then
    begin
      MessageDlg('Kullanýcý zaten var', mtError, [mbOK], 0);
    end
    else
    begin
      giris_ZReadOnlyQuery.Active := False;
      giris_ZReadOnlyQuery.SQL.Text := 'INSERT INTO GIRIS (KULLANICI_ADI,SIFRE) VALUES(' + QuotedStr(kullaniciAdi_sEdit.Text) + ', ' + QuotedStr(sifre_sEdit.Text) + ');';
      giris_ZReadOnlyQuery.ExecSQL;
    end;
  finally
    giris_ZReadOnlyQuery.Active := False;
    FreeAndNil(giris_ZReadOnlyQuery);
    Self.Close;
  end;
end;

end.


