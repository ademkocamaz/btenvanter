object kullaniciliste_Form: Tkullaniciliste_Form
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Kullan'#305'c'#305' Listesi'
  ClientHeight = 461
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object kullanici_SMDBGrid: TSMDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 578
    Height = 455
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnDblClick = kullanici_SMDBGridDblClick
    Flat = True
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'Tahoma'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = 12111064
    GridStyle.EvenColor = 6851744
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoAutoWidth, eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoRowSizing, eoShowLookup, eoShowRecNo, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar, eoAnyKeyFilter, eoFilterAutoApply, eoCellWordWrap]
    RegistryKey = 'Software\BtEnvanter'
    RegistrySection = 'kullanici_SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssVertical
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Caption = 'No'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ADI'
        Title.Caption = 'Ad'#305
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOYADI'
        Title.Caption = 'Soyad'#305
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BIRIM'
        Title.Caption = 'Birim'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNVAN'
        Title.Caption = #220'nvan'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Title.Caption = 'E-Mail'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFON_DAHILI'
        Title.Caption = 'Telefon (Dahili)'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFON_GSM'
        Title.Caption = 'Telefon (GSM)'
        Width = 97
        Visible = True
      end>
  end
end
