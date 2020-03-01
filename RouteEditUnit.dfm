inherited RouteEdit: TRouteEdit
  Left = 424
  Top = 231
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1084#1072#1088#1096#1088#1091#1090#1072
  ClientHeight = 97
  ClientWidth = 474
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 81
    Width = 474
    Height = 275
    TabOrder = 2
    ClientRectBottom = 271
    ClientRectRight = 470
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 466
      end
      inherited Grid: TcxGrid
        Width = 466
        Height = 221
      end
    end
  end
  inherited dxLayoutMain: TdxLayoutControl
    Width = 474
    Height = 56
    object cxRouteEdit: TcxDBTextEdit [0]
      Left = 102
      Top = 10
      DataBinding.DataField = 'ObjectCode'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    inherited dxLayoutMainGroup_Root: TdxLayoutGroup
      object dxLayoutMainItem1: TdxLayoutItem
        CaptionOptions.Text = #1053#1086#1084#1077#1088' '#1084#1072#1088#1096#1088#1091#1090#1072
        Control = cxRouteEdit
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited DS: TDataSource
    Left = 320
    Top = 24
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tRoute
    Left = 352
    Top = 24
  end
  inherited ActionList: TActionList
    Left = 384
    Top = 24
  end
  inherited ImageList: TImageList
    Left = 288
    Top = 26
  end
  inherited cxStyleRep: TcxStyleRepository
    Left = 416
    Top = 24
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
    Left = 448
    Top = 24
    DockControlHeights = (
      0
      0
      25
      26)
    inherited dxButtons: TdxBar
      DockedLeft = 147
    end
  end
  inherited dxBarDB: TdxBarDBNavigator
    Left = 488
    Top = 25
  end
end
