inherited ClientEdit: TClientEdit
  Left = 346
  Top = 173
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1076#1072#1085#1085#1099#1093' '#1086' '#1082#1083#1080#1077#1085#1090#1077
  ClientHeight = 527
  ClientWidth = 748
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 128
    Width = 748
    Height = 373
    ActivePage = cxTabSheet1
    ClientRectBottom = 369
    ClientRectRight = 744
    inherited cxTable: TcxTabSheet
      Caption = #1044#1072#1085#1085#1099#1077' '#1082#1083#1080#1077#1085#1090#1072
      inherited dxBarDockControl: TdxBarDockControl
        Width = 740
      end
      inherited Grid: TcxGrid
        Width = 740
        Height = 319
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
    object cxTabSheet1: TcxTabSheet
      Caption = #1056#1077#1082#1074#1080#1079#1080#1090#1099
      ImageIndex = 1
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 740
        Height = 26
        Align = dalTop
        BarManager = dxBarManager
      end
      object cxGridReq: TcxGrid
        Left = 0
        Top = 26
        Width = 740
        Height = 319
        Align = alClient
        TabOrder = 1
        object tvReq: TcxGridDBTableView
          Tag = 1
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.First.Visible = True
          NavigatorButtons.PriorPage.Visible = True
          NavigatorButtons.Prior.Visible = True
          NavigatorButtons.Next.Visible = True
          NavigatorButtons.NextPage.Visible = True
          NavigatorButtons.Last.Visible = True
          NavigatorButtons.Insert.Visible = True
          NavigatorButtons.Append.Visible = False
          NavigatorButtons.Delete.Visible = True
          NavigatorButtons.Edit.Visible = True
          NavigatorButtons.Post.Visible = True
          NavigatorButtons.Cancel.Visible = True
          NavigatorButtons.Refresh.Visible = True
          NavigatorButtons.SaveBookmark.Visible = True
          NavigatorButtons.GotoBookmark.Visible = True
          NavigatorButtons.Filter.Visible = True
          OnCellDblClick = tvReqCellDblClick
          DataController.DataSource = dmPublic.dsClientParameters
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnMRUItemsList = False
          Filtering.ColumnPopup.MaxDropDownItemCount = 0
          Filtering.ColumnPopup.MultiSelect = False
          FilterRow.InfoText = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1092#1080#1083#1100#1090#1088#1072
          NewItemRow.InfoText = #1044#1086#1073#1072#1074#1080#1090#1100
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsSelection.InvertSelect = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.FocusRect = False
          OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
          OptionsView.ExpandButtonsForEmptyDetails = False
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.Selection = cxStyleSel
          object tvReqRowNumber: TcxGridDBColumn
            Caption = #8470
            DataBinding.FieldName = 'RowNumber'
            Width = 44
          end
          object tvReqObjectCode: TcxGridDBColumn
            Caption = #1050#1086#1076
            DataBinding.FieldName = 'ObjectCode'
            Width = 119
          end
          object tvReqObjectName: TcxGridDBColumn
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'ObjectName'
            Width = 168
          end
          object tvReqObjectValue: TcxGridDBColumn
            Caption = #1047#1085#1072#1095#1077#1085#1080#1077
            DataBinding.FieldName = 'ObjectValue'
            Width = 385
          end
        end
        object lvReq: TcxGridLevel
          GridView = tvReq
        end
      end
    end
  end
  inherited dxLayoutMain: TdxLayoutControl
    Width = 748
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
    object acEditReq: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1088#1077#1082#1074#1080#1079#1080#1090#1099
      ImageIndex = 3
      OnExecute = acEditReqExecute
    end
    object acImportReq: TAction
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1080#1079' '#1048#1085#1090#1077#1088#1085#1077#1090
      ImageIndex = 9
      OnExecute = acImportReqExecute
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
      DockedLeft = 350
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
    object dxBarManagerBar2: TdxBar [3]
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 371
      FloatTop = 202
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton9'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton7: TdxBarButton [13]
      Action = acFill
      Category = 0
      Hint = #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1072#1090#1088#1080#1073#1091#1090#1099
    end
    object dxBarButton8: TdxBarButton [14]
      Action = acPrint
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton9: TdxBarButton [15]
      Action = acEditReq
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton10: TdxBarButton [16]
      Action = acImportReq
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
  inherited dxBarDB: TdxBarDBNavigator
    Left = 248
  end
end
