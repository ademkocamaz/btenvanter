unit yenienvanterbilgi;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.DBCtrls, sDBComboBox, Vcl.Mask, sDBEdit, sBitBtn, sPanel, System.UITypes,
  Data.DB, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tyenienvanterbilgi_Form = class(TForm)
    anapanel_sPanel: TsPanel;
    yenienvanterbilgi_kaydet_sBitBtn: TsBitBtn;
    yenienvanterbilgi_iptal_sBitBtn: TsBitBtn;
    yenienvanterbilgi_TIPI_sDBComboBox: TsDBComboBox;
    yenienvanterbilgi_DEGER1_sDBEdit: TsDBEdit;
    yenienvanterbilgi_DEGER2_sDBEdit: TsDBEdit;
    yenienvanterbilgi_DEGER3_sDBEdit: TsDBEdit;
    yenienvanterbilgi_ACIKLAMA_sDBEdit: TsDBEdit;
    procedure yenienvanterbilgi_iptal_sBitBtnClick(Sender: TObject);
    procedure yenienvanterbilgi_kaydet_sBitBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function KontrolEt: Boolean;
  public
    { Public declarations }
  end;

var
  yenienvanterbilgi_Form: Tyenienvanterbilgi_Form;

implementation

uses
  datamodule, envanter, tablo;

{$R *.dfm}

procedure Tyenienvanterbilgi_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if bt_data.bt_envanter_bilgi_ZTable.State in [dsInsert, dsEdit] then
    bt_data.bt_envanter_bilgi_ZTable.Cancel;
end;

procedure Tyenienvanterbilgi_Form.FormCreate(Sender: TObject);
begin
  bt_tablo.TurleriGetir('ENVANTER_BILGI', 'TIPI',
    yenienvanterbilgi_TIPI_sDBComboBox);
end;

function Tyenienvanterbilgi_Form.KontrolEt: Boolean;
begin
  if yenienvanterbilgi_TIPI_sDBComboBox.Text = '' then
  begin
    MessageDlg('Tip bilgisini girmelisiniz.', mtError, [mbOK], 0);
    Result := False;
    Exit;
  end
  else if yenienvanterbilgi_DEGER1_sDBEdit.Text = '' then
  begin
    MessageDlg('Deðer bilgisi girmelisiniz.', mtError, [mbOK], 0);
    Result := False;
    Exit;
  end
  else
    Result := True;
end;

procedure Tyenienvanterbilgi_Form.yenienvanterbilgi_iptal_sBitBtnClick
  (Sender: TObject);
begin
  Self.Close;
end;

procedure Tyenienvanterbilgi_Form.yenienvanterbilgi_kaydet_sBitBtnClick
  (Sender: TObject);
begin
  if KontrolEt then
  begin
    bt_data.bt_envanter_bilgi_ZTable.Post;
    bt_envanter.Yenile;
    Self.Close;
  end;
end;

end.
