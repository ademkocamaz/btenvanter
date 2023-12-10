object envanterdetay_Form: Tenvanterdetay_Form
  Left = 0
  Top = 0
  Caption = 'Envanter/Detay'
  ClientHeight = 729
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object envanter_envanterler_sPanel: TsPanel
    Left = 0
    Top = 0
    Width = 1008
    Height = 267
    Align = alClient
    ShowCaption = False
    TabOrder = 0
    object envanter_menu_sPanel: TsPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 1000
      Height = 34
      Align = alTop
      ShowCaption = False
      TabOrder = 0
      SkinData.SkinSection = 'PANEL'
      object envanter_sLabel: TsLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 752
        Height = 26
        Align = alClient
        Alignment = taCenter
        Caption = 'Envanterler'
        ParentFont = False
        Layout = tlCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ExplicitWidth = 66
        ExplicitHeight = 13
      end
      object sDBNavigator1: TsDBNavigator
        Left = 759
        Top = 1
        Height = 32
        Align = alRight
        FullRepaint = False
        TabOrder = 0
      end
    end
    object envanter_SMDBGrid: TSMDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 44
      Width = 1000
      Height = 219
      Align = alClient
      DataSource = bt_data.bt_envanter_DataSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
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
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPI'
          Title.Caption = 'Envanter Tipi'
          Width = 186
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MARKA'
          Title.Caption = 'Marka'
          Width = 124
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MODEL'
          Title.Caption = 'Model'
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DURUM'
          Title.Caption = 'Durum'
          Width = 131
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'YERI'
          Title.Caption = 'Yeri'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ACIKLAMA'
          Title.Caption = 'A'#231#305'klama'
          Width = 179
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BIRIM'
          Title.Caption = 'Birim'
          Width = 100
          Visible = True
        end>
    end
  end
  object envanter_lisans_sPanel: TsPanel
    AlignWithMargins = True
    Left = 3
    Top = 576
    Width = 1002
    Height = 150
    Align = alBottom
    ShowCaption = False
    TabOrder = 3
    object envanter_lisans_menu_sPanel: TsPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 994
      Height = 34
      Align = alTop
      ShowCaption = False
      TabOrder = 0
      object envanter_lisans_sLabel: TsLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 746
        Height = 26
        Align = alClient
        Alignment = taCenter
        Caption = 'Lisans'
        ParentFont = False
        Layout = tlCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ExplicitWidth = 35
        ExplicitHeight = 13
      end
      object sDBNavigator3: TsDBNavigator
        Left = 753
        Top = 1
        Height = 32
        Align = alRight
        FullRepaint = False
        TabOrder = 0
      end
    end
    object envanter_lisans_SMDBGrid: TSMDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 44
      Width = 994
      Height = 102
      Align = alClient
      DataSource = bt_data.bt_envanter_lisans_DataSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
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
          FieldName = 'TIPI'
          Title.Caption = 'Lisans Tipi'
          Width = 211
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BASLANGIC_TARIHI'
          Title.Caption = 'Ba'#351'lang'#305#231' Tarihi'
          Width = 311
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BITIS_TARIHI'
          Title.Caption = 'Biti'#351' Tarihi'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ACIKLAMA'
          Title.Caption = 'A'#231#305'klama'
          Width = 289
          Visible = True
        end>
    end
  end
  object envanter_bilgi_sPanel: TsPanel
    Left = 0
    Top = 267
    Width = 1008
    Height = 150
    Align = alBottom
    ShowCaption = False
    TabOrder = 1
    object envanter_bilgi_menu_sPanel: TsPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 1000
      Height = 34
      Align = alTop
      ShowCaption = False
      TabOrder = 0
      object envanter_bilgi_sLabel: TsLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 752
        Height = 26
        Align = alClient
        Alignment = taCenter
        Caption = 'Bilgiler'
        ParentFont = False
        Layout = tlCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ExplicitWidth = 38
        ExplicitHeight = 13
      end
      object envanter_bilgi_sDBNavigator: TsDBNavigator
        Left = 759
        Top = 1
        Height = 32
        Align = alRight
        FullRepaint = False
        TabOrder = 0
      end
    end
    object envanter_bilgi_SMDBGrid: TSMDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 44
      Width = 1000
      Height = 102
      Align = alClient
      DataSource = bt_data.bt_envanter_bilgi_DataSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
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
          FieldName = 'TIPI'
          Title.Caption = 'Bilgi Tipi'
          Width = 183
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ACIKLAMA'
          Title.Caption = 'A'#231#305'klama'
          Width = 367
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEGER1'
          Title.Caption = 'De'#287'erler'
          Width = 345
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEGER2'
          Title.Caption = '-'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEGER3'
          Title.Caption = '-'
          Width = 35
          Visible = True
        end>
    end
  end
  object envanter_giris_bilgi_sPanel: TsPanel
    AlignWithMargins = True
    Left = 3
    Top = 420
    Width = 1002
    Height = 150
    Align = alBottom
    ShowCaption = False
    TabOrder = 2
    object envanter_giris_bilgi_menu_sPanel: TsPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 994
      Height = 34
      Align = alTop
      ShowCaption = False
      TabOrder = 0
      object envanter_giris_bilgi_sLabel: TsLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 746
        Height = 26
        Align = alClient
        Alignment = taCenter
        Caption = 'Giri'#351' Bilgileri'
        ParentFont = False
        Layout = tlCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ExplicitWidth = 69
        ExplicitHeight = 13
      end
      object sDBNavigator2: TsDBNavigator
        Left = 753
        Top = 1
        Height = 32
        Align = alRight
        FullRepaint = False
        TabOrder = 0
      end
    end
    object envanter_giris_bilgi_SMDBGrid: TSMDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 44
      Width = 994
      Height = 102
      Align = alClient
      DataSource = bt_data.bt_envanter_giris_bilgi_DataSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
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
          FieldName = 'TIPI'
          Title.Caption = 'Giri'#351' Tipi'
          Width = 261
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KULLANICI_ADI'
          Title.Caption = 'Kullan'#305'c'#305' Ad'#305
          Width = 458
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SIFRE'
          Title.Caption = #350'ifre'
          Width = 243
          Visible = True
        end>
    end
  end
end
