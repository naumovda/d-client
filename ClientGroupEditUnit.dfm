inherited ClientGroupEdit: TClientGroupEdit
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1090#1080#1087#1072' '#1082#1083#1080#1077#1085#1090#1072
  ClientHeight = 93
  ClientWidth = 567
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 81
    Width = 567
    Height = 275
    TabOrder = 2
    ClientRectBottom = 271
    ClientRectRight = 563
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 559
      end
      inherited Grid: TcxGrid
        Width = 559
        Height = 221
      end
    end
  end
  inherited dxLayoutMain: TdxLayoutControl
    Width = 567
    Height = 56
    object cxName: TcxDBTextEdit [0]
      Left = 94
      Top = 10
      DataBinding.DataField = 'ClientGroupName'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    inherited dxLayoutMainGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      object dxLayoutMainItem1: TdxLayoutItem
        CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
        Control = cxName
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tClientGroup
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
      DockedLeft = 240
    end
  end
end
