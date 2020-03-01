inherited ClientEdit: TClientEdit
  Left = 404
  Top = 264
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1076#1072#1085#1085#1099#1093' '#1086' '#1082#1083#1080#1077#1085#1090#1077
  ClientWidth = 538
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 128
    Width = 538
    Height = 228
    ClientRectBottom = 224
    ClientRectRight = 534
    inherited cxTable: TcxTabSheet
      Caption = #1044#1072#1085#1085#1099#1077' '#1082#1083#1080#1077#1085#1090#1072
      inherited dxBarDockControl: TdxBarDockControl
        Width = 530
      end
      inherited Grid: TcxGrid
        Width = 530
        Height = 174
        inherited tvMain: TcxGridDBTableView
          object tvMainNumber: TcxGridDBColumn
            Caption = #8470' '#1087'/'#1087
            DataBinding.FieldName = 'Number'
            Options.Editing = False
            Styles.Content = cxStyleDis
          end
          object tvMainAttribute: TcxGridDBColumn
            Caption = #1040#1090#1088#1080#1073#1091#1090
            DataBinding.FieldName = 'Attribute'
            Options.Editing = False
            Styles.Content = cxStyleDis
            Width = 189
          end
          object tvMainAttributeValue: TcxGridDBColumn
            Caption = #1047#1085#1072#1095#1077#1085#1080#1077
            DataBinding.FieldName = 'AttributeValue'
            Width = 72
          end
        end
      end
    end
  end
  inherited dxLayoutMain: TdxLayoutControl
    Width = 538
    Height = 103
    object cxGroup: TcxDBButtonEdit [0]
      Left = 94
      Top = 10
      DataBinding.DataField = 'ClientGroup'
      DataBinding.DataSource = DSMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxGroupPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 0
      Width = 211
    end
    object cxClientType: TcxDBButtonEdit [1]
      Left = 94
      Top = 37
      DataBinding.DataField = 'ClientType'
      DataBinding.DataSource = DSMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxClientTypePropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 1
      Width = 211
    end
    object cxClientName: TcxDBTextEdit [2]
      Left = 94
      Top = 64
      DataBinding.DataField = 'ClientName'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 2
      Width = 417
    end
    inherited dxLayoutMainGroup_Root: TdxLayoutGroup
      object dxLayoutMainItem1: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = #1043#1088#1091#1087#1087#1072':'
        Control = cxGroup
        ControlOptions.ShowBorder = False
      end
      object dxLayoutMainItem2: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = #1058#1080#1087' '#1082#1083#1080#1077#1085#1090#1072':'
        Control = cxClientType
        ControlOptions.ShowBorder = False
      end
      object dxLayoutMainItem3: TdxLayoutItem
        CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
        Control = cxClientName
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tClientAttributeValue
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tClient
  end
  inherited ActionList: TActionList
    object acFill: TAction
      Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100
      ImageIndex = 9
      OnExecute = acFillExecute
    end
    object acPrint: TAction
      Caption = #1055#1077#1095#1072#1090#1100
      ImageIndex = 9
      OnExecute = acPrintExecute
    end
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
      DockedLeft = 140
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarDBNavFirst1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavPrev1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavNext1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavLast1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxSaveButton'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxOKButton'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxCloseButton'
        end>
    end
    inherited dxBarManagerBar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end>
    end
    object dxBarButton7: TdxBarButton [12]
      Action = acFill
      Category = 0
      Hint = #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1072#1090#1088#1080#1073#1091#1090#1099
    end
    object dxBarButton8: TdxBarButton [13]
      Action = acPrint
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
  inherited dxBarDB: TdxBarDBNavigator
    Left = 248
  end
end
