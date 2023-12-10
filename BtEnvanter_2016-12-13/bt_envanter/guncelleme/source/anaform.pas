unit anaform;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Forms, sPanel, sSkinProvider, sSkinManager, Vcl.StdCtrls, sButton, acAlphaImageList, sListBox, FireDAC.Phys, FireDAC.Comp.Script, FireDAC.Phys.FB, FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util, FireDAC.VCLUI.Script, FireDAC.Phys.IBBase,
  Data.DB, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  Tanaform_Form = class(TForm)
    sSkinManager1: TsSkinManager;
    sSkinProvider1: TsSkinProvider;
    sPanel1: TsPanel;
    cikis_sButton: TsButton;
    guncelle_sListBox: TsListBox;
    sAlphaImageList1: TsAlphaImageList;
    guncelle_sButton: TsButton;
    FDConnection1: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDScript1: TFDScript;
    FDQuery1: TFDQuery;
    procedure cikis_sButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure guncelle_sButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  anaform_Form: Tanaform_Form;
  appPath: string;

implementation

{$R *.dfm}

procedure Tanaform_Form.cikis_sButtonClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tanaform_Form.FormActivate(Sender: TObject);
begin
  guncelle_sListBox.Items.Add('Bt Envanter yaz�l�m� a��k ise kapat�n�z.');
  guncelle_sListBox.Items.Add('Uygulaman�n "bt_envanter.exe" nin bulundu�u klas�r ile ayn� klas�rde oldu�undan emin olunuz. ');
  guncelle_sListBox.Items.Add('Do�rulama i�in a�a��daki yollar� kontrol ediniz.');
  guncelle_sListBox.Items.Add('-----------------------------------------');
  guncelle_sListBox.Items.Add('Uygulama Yolu: ' + appPath);
  guncelle_sListBox.Items.Add('Data: ' + appPath + 'data');
  guncelle_sListBox.Items.Add('Lib: ' + appPath + 'lib');
  guncelle_sListBox.Items.Add('-----------------------------------------');
  guncelle_sListBox.Items.Add('G�ncelleme i�lemine ba�lamak i�in G�ncelle d��mesine t�klay�n.');
  guncelle_sListBox.Items.Add('-----------------------------------------');
  guncelle_sListBox.Items.Add('');
end;

procedure Tanaform_Form.FormCreate(Sender: TObject);
begin
  appPath := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName));
end;

procedure Tanaform_Form.guncelle_sButtonClick(Sender: TObject);
begin

  guncelle_sListBox.Items.Add('');

  if not DirectoryExists(appPath + 'data') then
  begin
    guncelle_sListBox.Items.Add('!! Uyar� :');
    guncelle_sListBox.Items.Add('Data: ' + appPath + 'data' + ' klas�r� bulunamad�.');
    Exit;
  end
  else
  begin

  end;

  if not DirectoryExists(appPath + 'lib') then
  begin
    guncelle_sListBox.Items.Add('!! Uyar� :');
    guncelle_sListBox.Items.Add('Lib: ' + appPath + 'lib' + ' klas�r� bulunamad�.');
    Exit;
  end
  else
  begin

  end;

  guncelle_sListBox.Items.Add('G�ncelleme ba�l�yor..');
  Sleep(1000);
  Application.ProcessMessages;
  // FDPhysFBDriverLink1.VendorHome := appPath + 'lib';
  if FileExists(appPath + 'lib\fbembed.dll') then
    FDPhysFBDriverLink1.VendorLib := appPath + 'lib\fbembed.dll'
  else
  begin
    guncelle_sListBox.Items.Add(appPath + 'lib\fbembed.dll bulunamad�.');
    Exit;
  end;

  guncelle_sListBox.Items.Add('Veritaban�na ba�lan�l�yor..');
  Sleep(1000);
  Application.ProcessMessages;

  FDConnection1.Params.Clear;

  if FileExists(appPath + 'data\BT.FDB') then
  begin
    FDConnection1.Params.Add('DriverID=BT');
    FDConnection1.Params.Add('Database=' + appPath + 'data\BT.FDB');
    FDConnection1.Params.Add('User_Name=SYSDBA');
    FDConnection1.Params.Add('Password=masterkey');
    FDConnection1.Params.Add('CharacterSet=WIN1254');
  end
  else
  begin
    guncelle_sListBox.Items.Add(appPath + 'data\BT.FDB bulunamad�.');
    Exit;
  end;

  try
    FDConnection1.Connected := True;
    guncelle_sListBox.Items.Add('Veritaban�na ba�lant� sa�land�..');
    Sleep(1000);
    Application.ProcessMessages;

    guncelle_sListBox.Items.Add('Veritaban�na g�ncelleniyor..');
    Sleep(1000);
    Application.ProcessMessages;
    FDScript1.ValidateAll;
    FDScript1.ExecuteAll;
    FDQuery1.ExecSQL;

    guncelle_sListBox.Items.Add('Veritaban� g�ncellendi..');
  except
    on E: Exception do
      guncelle_sListBox.Items.Add('Hata :' + E.Message);
  end;

  FDConnection1.Connected := False;
end;

end.


