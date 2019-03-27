inherited Saldo: TSaldo
  Left = 202
  Width = 1159
  Caption = #1056#1072#1089#1095#1077#1090' '#1089#1072#1083#1100#1076#1086
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    Top = 233
    Width = 1143
    Height = 273
    inherited tvMain: TcxGridDBTableView
      DataController.DataSource = dmPublic.dsSaldo
    end
    object tvGridTable: TcxGridDBBandedTableView [1]
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
      DataController.DataSource = dmPublic.dsSaldo
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
      OptionsBehavior.ExpandMasterRowOnDblClick = False
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnHiding = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.FocusRect = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Bands = <
        item
          Caption = #1054#1073#1098#1077#1082#1090
          Width = 238
        end
        item
          Caption = #1053#1072#1095#1072#1083#1086
        end
        item
          Caption = #1055#1077#1088#1080#1086#1076
        end
        item
          Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
        end>
      object tvGridTableObjectCode: TcxGridDBBandedColumn
        Caption = #1050#1086#1076
        DataBinding.FieldName = 'ObjectCode'
        Visible = False
        Width = 156
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvGridTableObjectName: TcxGridDBBandedColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'ObjectName'
        Width = 257
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvGridTableD0: TcxGridDBBandedColumn
        Caption = #1044#1077#1073#1077#1090
        DataBinding.FieldName = 'D0'
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvGridTableD1: TcxGridDBBandedColumn
        Caption = #1044#1077#1073#1077#1090
        DataBinding.FieldName = 'D1'
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvGridTableK0: TcxGridDBBandedColumn
        Caption = #1050#1088#1077#1076#1080#1090
        DataBinding.FieldName = 'K0'
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvGridTableK1: TcxGridDBBandedColumn
        Caption = #1050#1088#1077#1076#1080#1090
        DataBinding.FieldName = 'K1'
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvGridTableD2: TcxGridDBBandedColumn
        Caption = #1044#1077#1073#1077#1090
        DataBinding.FieldName = 'D2'
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tvGridTableK2: TcxGridDBBandedColumn
        Caption = #1050#1088#1077#1076#1080#1090
        DataBinding.FieldName = 'K2'
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tvGridTableB0: TcxGridDBBandedColumn
        Caption = #1041#1072#1083#1072#1085#1089
        DataBinding.FieldName = 'B0'
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tvGridTableB2: TcxGridDBBandedColumn
        Caption = #1041#1072#1083#1072#1085#1089
        DataBinding.FieldName = 'B2'
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tvGridTableB1: TcxGridDBBandedColumn
        Caption = #1041#1072#1083#1072#1085#1089
        DataBinding.FieldName = 'B1'
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    inherited lvMain: TcxGridLevel
      GridView = tvGridTable
    end
  end
  inherited dxLayout: TdxLayoutControl
    Width = 1143
    Height = 199
    object cxDateStart: TcxDateEdit [0]
      Left = 142
      Top = 46
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDateEnd: TcxDateEdit [1]
      Left = 142
      Top = 73
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxClient: TcxButtonEdit [2]
      Left = 369
      Top = 73
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
      Properties.OnButtonClick = cxClientPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 3
      Text = 'cxClient'
      Width = 368
    end
    object cxDocument: TcxButtonEdit [3]
      Left = 369
      Top = 100
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
      Properties.OnButtonClick = cxDocumentPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 4
      Text = 'cxDocument'
      Width = 121
    end
    object cxPaymentType: TcxButtonEdit [4]
      Left = 369
      Top = 46
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
      Properties.OnButtonClick = cxPaymentTypePropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 2
      Text = 'cxPaymentType'
      Width = 121
    end
    object cxDetailType: TcxComboBox [5]
      Left = 369
      Top = 139
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        #1073#1077#1079' '#1076#1077#1090#1072#1083#1080#1079#1072#1094#1080#1080
        #1087#1086' '#1076#1086#1075#1086#1074#1086#1088#1072#1084
        #1087#1086' '#1082#1083#1080#1077#1085#1090#1072#1084
        #1087#1086' '#1074#1080#1076#1072#1084' '#1086#1087#1083#1072#1090#1099)
      Style.HotTrack = False
      TabOrder = 5
      Text = #1073#1077#1079' '#1076#1077#1090#1072#1083#1080#1079#1072#1094#1080#1080
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      object dxLayoutGroup2: TdxLayoutGroup
        AlignHorz = ahClient
        CaptionOptions.Text = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1088#1072#1089#1095#1077#1090#1072' '#1089#1072#1083#1100#1076#1086
        ButtonOptions.Buttons = <>
        object dxLayoutGroup5: TdxLayoutGroup
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutGroup3: TdxLayoutGroup
            AlignHorz = ahLeft
            CaptionOptions.Text = #1055#1077#1088#1080#1086#1076' '#1088#1072#1089#1095#1077#1090#1072
            ButtonOptions.Buttons = <>
            object dxLayoutItem1: TdxLayoutItem
              CaptionOptions.Text = #1053#1072#1095#1072#1083#1086' '#1087#1077#1088#1080#1086#1076#1072':'
              Control = cxDateStart
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem2: TdxLayoutItem
              CaptionOptions.Text = #1054#1082#1086#1085#1095#1072#1085#1080#1077' '#1087#1077#1088#1080#1086#1076#1072':'
              Control = cxDateEnd
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutGroup4: TdxLayoutGroup
            AlignHorz = ahLeft
            CaptionOptions.Text = #1055#1088#1086#1095#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099
            ButtonOptions.Buttons = <>
            object dxLayoutItem5: TdxLayoutItem
              CaptionOptions.Text = #1042#1080#1076' '#1086#1087#1083#1072#1090#1099':'
              Control = cxPaymentType
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem3: TdxLayoutItem
              CaptionOptions.Text = #1050#1083#1080#1077#1085#1090':'
              Control = cxClient
              ControlOptions.ShowBorder = False
            end
            object dxLayoutItem4: TdxLayoutItem
              CaptionOptions.Text = #1044#1086#1075#1086#1074#1086#1088':'
              Control = cxDocument
              ControlOptions.ShowBorder = False
            end
            object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
              CaptionOptions.Text = 'Separator'
              SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
              SizeOptions.SizableHorz = False
              SizeOptions.SizableVert = False
            end
            object dxLayoutItem6: TdxLayoutItem
              CaptionOptions.Text = #1044#1077#1090#1072#1083#1080#1079#1072#1094#1080#1103':'
              Control = cxDetailType
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
  end
  inherited cxSplitter: TcxSplitter
    Top = 225
    Width = 1143
  end
  inherited ActionList: TActionList
    inherited acReset: TAction
      OnExecute = acResetExecute
    end
    inherited acRefresh: TAction
      OnExecute = acRefreshExecute
    end
    inherited acExcel: TAction
      OnExecute = acExcelExecute
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
    inherited dxActions: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
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
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
        end>
    end
  end
end
