inherited DocumentGroupEdit: TDocumentGroupEdit
  Left = 472
  Top = 264
  Caption = #1056#1077#1076#1072#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1075#1088#1091#1087#1087#1099
  ClientHeight = 123
  ClientWidth = 497
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 89
    Width = 497
    Height = 8
    TabOrder = 2
    ClientRectBottom = 11
    ClientRectRight = 493
    ClientRectTop = 11
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 489
      end
      inherited Grid: TcxGrid
        Width = 489
        Height = 213
      end
    end
  end
  inherited dxLayoutMain: TdxLayoutControl
    Width = 497
    Height = 64
    object cxName: TcxDBTextEdit [0]
      Left = 94
      Top = 10
      DataBinding.DataField = 'GroupName'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    inherited dxLayoutMainGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      object dxLayoutMainItem1: TdxLayoutItem
        AlignHorz = ahClient
        CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
        Control = cxName
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tDocumentGroup
  end
  inherited dxBarManager: TdxBarManager
    Categories.ItemsVisibles = (
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True)
    DockControlHeights = (
      0
      0
      25
      26)
    inherited dxButtons: TdxBar
      DockedLeft = 170
    end
  end
end
