inherited PaymentTypeEdit: TPaymentTypeEdit
  Left = 439
  Top = 291
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1074#1080#1076#1072' '#1086#1087#1083#1072#1090#1099' '#1076#1086#1075#1086#1074#1086#1088#1072
  ClientHeight = 183
  ClientWidth = 460
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 161
    Width = 460
    Height = 23
    ClientRectBottom = 24
    ClientRectRight = 456
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 452
      end
      inherited Grid: TcxGrid
        Width = 452
      end
    end
  end
  inherited dxLayoutMain: TdxLayoutControl
    Width = 460
    Height = 136
    object cxCode: TcxDBSpinEdit [0]
      Left = 94
      Top = 10
      DataBinding.DataField = 'ObjectCode'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxName: TcxDBTextEdit [1]
      Left = 94
      Top = 37
      DataBinding.DataField = 'ObjectName'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxPrefix: TcxDBTextEdit [2]
      Left = 94
      Top = 76
      DataBinding.DataField = 'Prefix'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxLabel1: TcxLabel [3]
      Left = 221
      Top = 76
      Caption = #1085#1086#1084#1077#1088#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      Style.HotTrack = False
    end
    inherited dxLayoutMainGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      object dxLayoutMainItem1: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = #1050#1086#1076':'
        Control = cxCode
        ControlOptions.ShowBorder = False
      end
      object dxLayoutMainItem2: TdxLayoutItem
        CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
        Control = cxName
        ControlOptions.ShowBorder = False
      end
      object dxLayoutMainSeparatorItem1: TdxLayoutSeparatorItem
        CaptionOptions.Text = 'Separator'
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
      end
      object dxLayoutMainGroup1: TdxLayoutGroup
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutMainItem3: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = #1055#1088#1077#1092#1080#1082#1089':'
          Control = cxPrefix
          ControlOptions.ShowBorder = False
        end
        object dxLayoutMainItem4: TdxLayoutItem
          CaptionOptions.Text = 'cxLabel1'
          CaptionOptions.Visible = False
          Control = cxLabel1
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tPaymentType
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
      DockedLeft = 133
    end
  end
end
