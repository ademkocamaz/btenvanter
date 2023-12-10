unit yenienvantergirisbilgi;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.DBCtrls, sDBEdit, sDBComboBox, sBitBtn, sPanel, Data.DB, System.UITypes,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tyenienvantergirisbilgi_Form = class(TForm)
    anapanel_sPanel: TsPanel;
    yenienvantegirisbilgi_kaydet_sBitBtn: TsBitBtn;
    yenienvantergirisbilgi_iptal_sBitBtn: TsBitBtn;
    yenienvantergirisbilgi_TIPI_sDBComboBox: TsDBComboBox;
    yenienvantergirisbilgi_SIFRE_sDBEdit: TsDBEdit;
    yenienvantergirisbilgi_ACIKLAMA_sDBEdit: TsDBEdit;
    yenienvantergirisbilgi_KULLANICI_ADI_sDBEdit: TsDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure yenienvantergirisbilgi_iptal_sBitBtnClick(Sender: TObject);
    procedure yenienvantegirisbilgi_kaydet_sBitBtnClick(Sender: TObject);
  private
    { Private declarations }
    function KontrolEt: Boolean;
  public
    { Public declarations }
  end;

var
  yenienvantergirisbilgi_Form: Tyenienvantergirisbilgi_Form;

implementation

uses
  datamodule, tablo, envanter;

{$R *.dfm}

procedure Tyenienvantergirisbilgi_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if bt_data.bt_envanter_giris_bilgi_ZTable.State in [dsInsert, dsEdit] then
    bt_data.bt_envanter_giris_bilgi_ZTable.Cancel;
end;

procedure Tyenienvantergirisbilgi_Form.FormCreate(Sender: TObject);
begin
  bt_tablo.TurleriGetir('ENVANTER_GIRIS_BILGI', 'TIPI',
    yenienvantergirisbilgi_TIPI_sDBComboBox);
end;

function Tyenienvantergirisbilgi_Form.KontrolEt: Boolean;
begin
  if yenienvantergirisbilgi_TIPI_sDBComboBox.Text = '' then
  begin
    MessageDlg('Tip bilgisini girmelisiniz.', mtError, [mbOK], 0);
    Result := False;
    Exit
  end;
  Result := True;
end;

procedure Tyenienvantergirisbilgi_Form.yenienvantegirisbilgi_kaydet_sBitBtnClick
  (Sender: TObject);
begin
  if KontrolEt then
  begin
    bt_data.bt_envanter_giris_bilgi_ZTable.Post;
    bt_envanter.Yenile;
    Self.Close;
  end;
end;

procedure Tyenienvantergirisbilgi_Form.yenienvantergirisbilgi_iptal_sBitBtnClick
  (Sender: TObject);
begin
  Self.Close;
end;

end.
