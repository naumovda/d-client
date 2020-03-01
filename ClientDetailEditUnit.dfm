inherited ClientDetailEdit: TClientDetailEdit
  Left = 360
  Top = 303
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1076#1072#1085#1085#1099#1093
  ClientHeight = 195
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    TabOrder = 2
  end
  inherited dxLayoutMain: TdxLayoutControl
    object cxCaption: TcxDBLabel [0]
      Left = 151
      Top = 10
      DataBinding.DataField = 'Attribute'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      Height = 21
      Width = 121
    end
    object cxValue: TcxDBMemo [1]
      Left = 151
      Top = 37
      DataBinding.DataField = 'AttributeValue'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 1
      Height = 89
      Width = 498
    end
    inherited dxLayoutMainGroup_Root: TdxLayoutGroup
      object dxLayoutMainItem1: TdxLayoutItem
        CaptionOptions.Text = #1056#1077#1076#1072#1082#1090#1080#1088#1091#1077#1084#1099#1081' '#1087#1072#1088#1072#1084#1077#1090#1088':'
        Control = cxCaption
        ControlOptions.ShowBorder = False
      end
      object dxLayoutMainItem2: TdxLayoutItem
        CaptionOptions.Text = #1047#1085#1072#1095#1077#1085#1080#1077':'
        Control = cxValue
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tClientAttributeValue
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
  end
end
