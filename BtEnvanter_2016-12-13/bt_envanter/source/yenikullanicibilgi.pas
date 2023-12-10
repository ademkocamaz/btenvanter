unit yenikullanicibilgi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, ExtCtrls, sPanel, System.UITypes,
  Vcl.Mask, Vcl.DBCtrls, sDBEdit, sDBComboBox, Data.DB;

type
  Tyenikullanicibilgi_Form = class(TForm)
    anapanel_sPanel: TsPanel;
    yenikullanicibilgi_kaydet_sBitBtn: TsBitBtn;
    yenikullanicibilgi_iptal_sBitBtn: TsBitBtn;
    yenikullanicibilgi_TIPI_sDBComboBox: TsDBComboBox;
    yenikullanicibilgi_DEGER1_sDBEdit: TsDBEdit;
    yenikullanicibilgi_DEGER2_sDBEdit: TsDBEdit;
    yenikullanicibilgi_DEGER3_sDBEdit: TsDBEdit;
    yenikullanicibilgi_ACIKLAMA_sDBEdit: TsDBEdit;
    procedure yenikullanicibilgi_kaydet_sBitBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure yenikullanicibilgi_iptal_sBitBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function KontrolEt: Boolean;
  public
    { Public declarations }
  end;

var
  yenikullanicibilgi_Form: Tyenikullanicibilgi_Form;

implementation

uses
  datamodule, tablo;

{$R *.dfm}

procedure Tyenikullanicibilgi_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if bt_data.bt_kullanici_bilgi_ZTable.State in [dsInsert, dsEdit] then
    bt_data.bt_kullanici_bilgi_ZTable.Cancel;
end;

procedure Tyenikullanicibilgi_Form.FormCreate(Sender: TObject);
begin
  bt_tablo.TurleriGetir('KULLANICI_BILGI', 'TIPI',
    yenikullanicibilgi_TIPI_sDBComboBox);
end;

function Tyenikullanicibilgi_Form.KontrolEt: Boolean;
begin
  if yenikullanicibilgi_TIPI_sDBComboBox.Text = '' then
  begin
    MessageDlg('Tip bilgisini girmelisiniz.', mtError, [mbOK], 0);
    Result := False;
    Exit;
  end
  else if yenikullanicibilgi_DEGER1_sDBEdit.Text = '' then
  begin
    MessageDlg('Deðer bilgisi girmelisiniz.', mtError, [mbOK], 0);
    Result := False;
    Exit;
  end
  else
    Result := True;
end;

procedure Tyenikullanicibilgi_Form.yenikullanicibilgi_iptal_sBitBtnClick
  (Sender: TObject);
begin
  Self.Close;
end;

procedure Tyenikullanicibilgi_Form.yenikullanicibilgi_kaydet_sBitBtnClick
  (Sender: TObject);
begin
  if KontrolEt then
  begin
    bt_data.bt_kullanici_bilgi_ZTable.Post;
    bt_data.bt_kullanici_bilgi_ZTable.Refresh;
    Self.Close;
  end;

end;

end.
