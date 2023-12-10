unit giris;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, sPanel, Vcl.StdCtrls, sBitBtn, sEdit, sLabel, acImage, ZDataset, System.UITypes, sComboBox,
  acPNG, Vcl.ExtCtrls, Vcl.Buttons;

type
  Tgiris_Form = class(TForm)
    anapanel_sPanel: TsPanel;
    bt_envanter_sImage: TsImage;
    bt_envanter_sLabel: TsLabel;
    ustpanel_sPanel: TsPanel;
    sifre_sEdit: TsEdit;
    giris_sBitBtn: TsBitBtn;
    iptal_sBitBtn: TsBitBtn;
    kullaniciAdi_sComboBox: TsComboBox;
    procedure FormCreate(Sender: TObject);
    procedure iptal_sBitBtnClick(Sender: TObject);
    procedure giris_sBitBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    girisOnay: Boolean;
  end;

var
  giris_Form: Tgiris_Form;

implementation

uses
  datamodule, yenigiris;

{$R *.dfm}

procedure Tgiris_Form.FormCreate(Sender: TObject);
var
  giris_ZReadOnlyQuery: TZReadOnlyQuery;
begin
  girisOnay := False;

  giris_ZReadOnlyQuery := TZReadOnlyQuery.Create(Application);
  giris_ZReadOnlyQuery.Connection := bt_data.bt_ZConnection;
  giris_ZReadOnlyQuery.SQL.Text := 'SELECT * FROM GIRIS';
  giris_ZReadOnlyQuery.Active := True;
  if giris_ZReadOnlyQuery.RecordCount = 0 then
  begin
    MessageDlg('BT Envanter Yazýlýmý''na Hoþgeldiniz.' + #13 + #10 + #13 + #10 + 'Ýlk kullanýmda yeni kullanýcý eklemeniz gerekir.' + #13 + #10 + 'Kullanýcý ekleme ekranýna yönlendirileceksiniz.' + #13 + #10 + 'Kullanýcý ekleme iþleminden sonra yeniden çalýþtýrýnýz.', mtInformation, [mbOK], 0);

    Application.CreateForm(Tyenigiris_Form, yenigiris_Form);
    yenigiris_Form.ShowModal;
    FreeAndNil(yenigiris_Form);
    Application.Terminate;
  end
  else
  begin
    //bt_tablo.TurleriGetir('GIRIS', 'KULLANICI_ADI', kullaniciAdi_sComboBox);
    giris_ZReadOnlyQuery.First;
    while (not giris_ZReadOnlyQuery.Eof) do
    begin
      kullaniciAdi_sComboBox.Items.Add(giris_ZReadOnlyQuery.FieldByName('KULLANICI_ADI').AsString);
      giris_ZReadOnlyQuery.Next;
    end;
  end;
  giris_ZReadOnlyQuery.Active := False;
  FreeAndNil(giris_ZReadOnlyQuery);
end;

procedure Tgiris_Form.giris_sBitBtnClick(Sender: TObject);
var
  giris_ZReadOnlyQuery: TZReadOnlyQuery;
begin
  giris_ZReadOnlyQuery := TZReadOnlyQuery.Create(Application);
  giris_ZReadOnlyQuery.Connection := bt_data.bt_ZConnection;
  giris_ZReadOnlyQuery.SQL.Text := 'SELECT * FROM GIRIS WHERE KULLANICI_ADI=' + QuotedStr(kullaniciAdi_sComboBox.Text);
  giris_ZReadOnlyQuery.Active := True;

  if giris_ZReadOnlyQuery.RecordCount = 0 then
  begin
    MessageDlg('Kullanýcý Adý veya Þifre yanlýþ.', mtError, [mbOK], 0)
  end
  else
  begin
    if giris_ZReadOnlyQuery.FieldByName('SIFRE').AsString = sifre_sEdit.Text then
    begin
      girisOnay := True;
      Self.Close;
    end
    else
      MessageDlg('Kullanýcý Adý veya Þifre yanlýþ.', mtError, [mbOK], 0);

  end;
  giris_ZReadOnlyQuery.Active := False;
  FreeAndNil(giris_ZReadOnlyQuery);
end;

procedure Tgiris_Form.iptal_sBitBtnClick(Sender: TObject);
begin
  Self.Close;
end;

end.


