unit yenilisansbilgi;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Mask, Vcl.DBCtrls, sDBEdit, sDBComboBox, sBitBtn, sPanel, Data.DB,
  System.UITypes, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tyenilisansbilgi_Form = class(TForm)
    anapanel_sPanel: TsPanel;
    yenilisansbilgi_kaydet_sBitBtn: TsBitBtn;
    yenienvanterbilgi_iptal_sBitBtn: TsBitBtn;
    yenilisansbilgi_TIPI_sDBComboBox: TsDBComboBox;
    yenilisansbilgi_DEGER1_sDBEdit: TsDBEdit;
    yenilisansbilgi_DEGER2_sDBEdit: TsDBEdit;
    yenilisansbilgi_DEGER3_sDBEdit: TsDBEdit;
    yenilisansbilgi_ACIKLAMA_sDBEdit: TsDBEdit;
    procedure yenienvanterbilgi_iptal_sBitBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure yenilisansbilgi_kaydet_sBitBtnClick(Sender: TObject);
  private
    { Private declarations }
    function KontrolEt: Boolean;
  public
    { Public declarations }
  end;

var
  yenilisansbilgi_Form: Tyenilisansbilgi_Form;

implementation

uses
  datamodule, tablo, lisans;

{$R *.dfm}

procedure Tyenilisansbilgi_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if bt_data.bt_lisans_bilgi_ZTable.State in [dsInsert, dsEdit] then
    bt_data.bt_lisans_bilgi_ZTable.Cancel;
end;

procedure Tyenilisansbilgi_Form.FormCreate(Sender: TObject);
begin
  bt_tablo.TurleriGetir('LISANS_BILGI', 'TIPI',
    yenilisansbilgi_TIPI_sDBComboBox);
end;

function Tyenilisansbilgi_Form.KontrolEt: Boolean;
begin
  if yenilisansbilgi_TIPI_sDBComboBox.Text = '' then
  begin
    MessageDlg('Tip bilgisini girmelisiniz.', mtError, [mbOK], 0);
    Result := False;
    Exit;
  end
  else if yenilisansbilgi_DEGER1_sDBEdit.Text = '' then
  begin
    MessageDlg('Deðer bilgisi girmelisiniz.', mtError, [mbOK], 0);
    Result := False;
    Exit;
  end
  else
    Result := True;
end;

procedure Tyenilisansbilgi_Form.yenienvanterbilgi_iptal_sBitBtnClick
  (Sender: TObject);
begin
  Self.Close;
end;

procedure Tyenilisansbilgi_Form.yenilisansbilgi_kaydet_sBitBtnClick
  (Sender: TObject);
begin
  if KontrolEt then
  begin
    bt_data.bt_lisans_bilgi_ZTable.Post;
    bt_lisans.Yenile;
    Self.Close;
  end;
end;

end.
