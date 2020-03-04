inherited Client: TClient
  Left = 281
  Top = 196
  Width = 994
  Height = 481
  Caption = #1050#1083#1080#1077#1085#1090#1099
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    Width = 670
    Height = 416
    inherited tvMain: TcxGridDBTableView
      OptionsView.GroupByBox = True
      object tvMainClientType: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1082#1083#1080#1077#1085#1090#1072
        DataBinding.FieldName = 'ClientType'
        Width = 122
      end
      object tvMainClientGroup: TcxGridDBColumn
        Caption = #1043#1088#1091#1087#1087#1072
        DataBinding.FieldName = 'ClientGroup'
        Visible = False
        GroupIndex = 0
        Width = 118
      end
      object tvMainClientName: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1082#1083#1080#1077#1085#1090#1072
        DataBinding.FieldName = 'ClientName'
        Width = 444
      end
      object tvMainClientTypeId: TcxGridDBColumn
        DataBinding.FieldName = 'ClientTypeId'
        Visible = False
      end
      object tvMainClientGroupId: TcxGridDBColumn
        DataBinding.FieldName = 'ClientGroupId'
        Visible = False
      end
    end
  end
  inherited dxLeft: TdxLayoutControl
    Height = 416
    inherited cxSearch: TcxButton
      Top = 133
      TabOrder = 3
    end
    inherited cxClear: TcxButton
      Top = 133
      TabOrder = 4
    end
    object cxName: TcxTextEdit [2]
      Left = 109
      Top = 28
      Properties.OnChange = cxNamePropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxType: TcxButtonEdit [3]
      Left = 109
      Top = 67
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end
        item
          Caption = 'X'
          Kind = bkText
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxTypePropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxGroup: TcxButtonEdit [4]
      Left = 109
      Top = 94
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end
        item
          Caption = 'X'
          Kind = bkText
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxGroupPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    inherited dxLeftGroup_Root: TdxLayoutGroup
      inherited dxLeftGroup: TdxLayoutGroup
        object dxLeftItem1: TdxLayoutItem
          CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
          Control = cxName
          ControlOptions.ShowBorder = False
        end
        object dxLeftSeparatorItem1: TdxLayoutSeparatorItem
          CaptionOptions.Text = 'Separator'
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = False
          SizeOptions.SizableVert = False
        end
        object dxLeftItem2: TdxLayoutItem
          CaptionOptions.Text = #1058#1080#1087' '#1082#1083#1080#1077#1085#1090#1072':'
          Control = cxType
          ControlOptions.ShowBorder = False
        end
        object dxLeftItem3: TdxLayoutItem
          CaptionOptions.Text = #1043#1088#1091#1087#1087#1072' '#1082#1083#1080#1077#1085#1090#1072':'
          Control = cxGroup
          ControlOptions.ShowBorder = False
        end
      end
      inherited dxLeftButtonGroup: TdxLayoutGroup
        inherited dxLeftSearch: TdxLayoutItem
          Visible = False
        end
      end
    end
  end
  inherited cxSplitterMain: TcxSplitter
    Height = 416
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tClient
  end
  inherited Actions: TActionList
    inherited acSearch: TAction
      OnExecute = acSearchExecute
    end
    object acPrintClients: TAction
      Caption = #1055#1077#1095#1072#1090#1100' '#1082#1083#1080#1077#1085#1090#1086#1074
      ImageIndex = 9
      OnExecute = acPrintClientsExecute
    end
  end
  inherited dxBarManager: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    DockControlHeights = (
      0
      0
      26
      0)
    inherited dxBarManagerBar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxNew'
        end
        item
          Visible = True
          ItemName = 'dxEdit'
        end
        item
          Visible = True
          ItemName = 'dxDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxPost'
        end
        item
          Visible = True
          ItemName = 'dxCancel'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end>
    end
    object dxBarButton1: TdxBarButton
      Action = acPrint
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton2: TdxBarButton
      Action = acPrintClients
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
end