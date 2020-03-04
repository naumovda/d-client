inherited RoutesetDetailEdit: TRoutesetDetailEdit
  Left = 439
  Top = 273
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072
  ClientHeight = 153
  ClientWidth = 353
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 129
    Width = 353
    Height = 227
    TabOrder = 2
    ClientRectBottom = 223
    ClientRectRight = 349
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 345
      end
      inherited Grid: TcxGrid
        Width = 345
        Height = 173
      end
    end
  end
  inherited dxLayoutMain: TdxLayoutControl
    Width = 353
    Height = 104
    object cxRoute: TcxDBLabel [0]
      Left = 122
      Top = 10
      DataBinding.DataField = 'Route'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      Height = 21
      Width = 121
      AnchorX = 243
    end
    object cxCarCount: TcxDBSpinEdit [1]
      Left = 122
      Top = 37
      DataBinding.DataField = 'CarCount'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    inherited dxLayoutMainGroup_Root: TdxLayoutGroup
      object dxLayoutMainItem1: TdxLayoutItem
        CaptionOptions.Text = #1052#1072#1088#1096#1088#1091#1090':'
        Control = cxRoute
        ControlOptions.ShowBorder = False
      end
      object dxLayoutMainItem2: TdxLayoutItem
        CaptionOptions.Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1101#1082#1088#1072#1085#1086#1074':'
        Control = cxCarCount
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tRoutesetDetail
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
      DockedLeft = 26
    end
  end
end
