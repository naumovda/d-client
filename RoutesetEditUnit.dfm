inherited RoutesetEdit: TRoutesetEdit
  Left = 308
  Top = 84
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1074#1072#1088#1080#1072#1085#1090#1072
  ClientHeight = 499
  ClientWidth = 987
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 81
    Width = 987
    Height = 392
    TabOrder = 2
    ClientRectBottom = 388
    ClientRectRight = 983
    inherited cxTable: TcxTabSheet
      Caption = #1042#1099#1073#1088#1072#1085#1085#1099#1077' '#1084#1072#1088#1096#1088#1091#1090#1099
      inherited dxBarDockControl: TdxBarDockControl
        Width = 979
      end
      inherited Grid: TcxGrid
        Width = 768
        Height = 338
      end
      object cxSplitterMain: TcxSplitter
        Left = 768
        Top = 26
        Width = 8
        Height = 338
        HotZoneClassName = 'TcxSimpleStyle'
        AlignSplitter = salRight
        Control = dxLayoutDetail
        Visible = False
      end
      object dxLayoutDetail: TdxLayoutControl
        Left = 776
        Top = 26
        Width = 203
        Height = 338
        Align = alRight
        TabOrder = 3
        TabStop = False
        object cxLabel1: TcxLabel
          Left = 10
          Top = 10
          Caption = #1042#1099#1073#1086#1088' '#1084#1072#1088#1096#1088#1091#1090#1086#1074
          Style.HotTrack = False
        end
        object cxGridRoutes: TcxGrid
          Left = 10
          Top = 33
          Width = 169
          Height = 295
          Align = alClient
          TabOrder = 1
          object tvRoutes: TcxGridDBTableView
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
            OnCellDblClick = tvMainCellDblClick
            DataController.DataSource = dmPublic.dsRoute
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
            object tvRoutesObjectCode: TcxGridDBColumn
              Caption = #8470' '#1084#1072#1088#1096#1088#1091#1090#1072
              DataBinding.FieldName = 'ObjectCode'
              Width = 116
            end
          end
          object lvRoutes: TcxGridLevel
            GridView = tvRoutes
          end
        end
        object dxLayoutDetailGroup_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          object dxLayoutDetailItem1: TdxLayoutItem
            CaptionOptions.Text = 'cxLabel1'
            CaptionOptions.Visible = False
            Control = cxLabel1
            ControlOptions.ShowBorder = False
          end
          object dxLayoutDetailItem2: TdxLayoutItem
            AlignVert = avClient
            Control = cxGridRoutes
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited dxLayoutMain: TdxLayoutControl
    Width = 987
    Height = 56
    object cxName: TcxDBTextEdit [0]
      Left = 91
      Top = 10
      DataBinding.DataField = 'Name'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 0
      Width = 523
    end
    inherited dxLayoutMainGroup_Root: TdxLayoutGroup
      AlignHorz = ahParentManaged
      object dxLayoutMainItem1: TdxLayoutItem
        CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Control = cxName
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tRouteset
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
      DockedLeft = 660
    end
  end
end
