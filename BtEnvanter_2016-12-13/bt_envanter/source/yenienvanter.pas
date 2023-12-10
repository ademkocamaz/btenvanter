unit yenienvanter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, sPanel, ComCtrls, StdCtrls, Vcl.DBCtrls, sDBEdit, sBitBtn,
  sDBComboBox, Data.DB, System.UITypes, Vcl.Mask, Vcl.Buttons;

type
  Tyenienvanter_Form = class(TForm)
    anapanel_sPanel: TsPanel;
    yenienvanter_kaydet_sBitBtn: TsBitBtn;
    yenienvanter_iptal_sBitBtn: TsBitBtn;
    yenienvanter_ACIKLAMA_sDBEdit: TsDBEdit;
    yenienvanter_YERI_sDBEdit: TsDBEdit;
    yenienvanter_TIPI_sDBComboBox: TsDBComboBox;
    yenienvanter_BIRIM_sDBComboBox: TsDBComboBox;
    yenienvanter_MARKA_sDBEdit: TsDBEdit;
    yenienvanter_MODEL_sDBEdit: TsDBEdit;
    yenienvanter_DURUM_sDBEdit: TsDBEdit;
    procedure yenienvanter_kaydet_sBitBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure yenienvanter_iptal_sBitBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function KontrolEt: Boolean;
  public
    { Public declarations }
  end;

var
  yenienvanter_Form: Tyenienvanter_Form;

implementation

uses
  datamodule, tablo, envanter;

{$R *.dfm}

procedure Tyenienvanter_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if bt_data.bt_envanter_ZTable.State in [dsInsert, dsEdit] then
    bt_data.bt_envanter_ZTable.Cancel;
end;

procedure Tyenienvanter_Form.FormCreate(Sender: TObject);
begin
  bt_tablo.TurleriGetir('ENVANTER', 'TIPI', yenienvanter_TIPI_sDBComboBox);
  bt_tablo.TurleriGetir('ENVANTER', 'BIRIM', yenienvanter_BIRIM_sDBComboBox);
end;

function Tyenienvanter_Form.KontrolEt: Boolean;
begin
  if yenienvanter_TIPI_sDBComboBox.Text = '' then
  begin
    MessageDlg('Tip bilgisini girmelisiniz.', mtError, [mbOK], 0);
    Result := False;
    Exit
  end
  else
    Result := True;
end;

procedure Tyenienvanter_Form.yenienvanter_iptal_sBitBtnClick(Sender: TObject);
begin
  Self.Close;
end;

procedure Tyenienvanter_Form.yenienvanter_kaydet_sBitBtnClick(Sender: TObject);
begin
  if KontrolEt then
  begin
    bt_data.bt_envanter_ZTable.Post;
    bt_envanter.Yenile;
    Self.Close;
  end;
end;

end.
