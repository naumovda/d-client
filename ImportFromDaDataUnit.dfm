inherited ImportFromDaData: TImportFromDaData
  Left = 317
  Top = 236
  Caption = #1048#1084#1087#1086#1088#1090' '#1076#1072#1085#1085#1099#1093' '#1087#1086' '#1048#1053#1053
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    Top = 297
    Height = 183
    inherited tvMain: TcxGridDBTableView
      DataController.DataSource = DS
      Preview.Column = tvMainAddress
      Preview.Visible = True
      object tvMainRecId: TcxGridDBColumn
        DataBinding.FieldName = 'RecId'
        Visible = False
      end
      object tvMainRowNumber: TcxGridDBColumn
        Caption = #8470
        DataBinding.FieldName = 'RowNumber'
      end
      object tvMainINN: TcxGridDBColumn
        Caption = #1048#1053#1053
        DataBinding.FieldName = 'INN'
        Width = 98
      end
      object tvMainName: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'Name'
        Width = 209
      end
      object tvMainAddress: TcxGridDBColumn
        DataBinding.FieldName = 'Address'
        Width = 44
      end
      object tvMainType: TcxGridDBColumn
        Caption = #1058#1080#1087
        DataBinding.FieldName = 'Type'
        Width = 113
      end
      object tvMainKPP: TcxGridDBColumn
        Caption = #1050#1055#1055
        DataBinding.FieldName = 'KPP'
        Visible = False
        Width = 94
      end
      object tvMainOGRN: TcxGridDBColumn
        Caption = #1054#1043#1056#1053
        DataBinding.FieldName = 'OGRN'
        Width = 114
      end
      object tvMainOKVED: TcxGridDBColumn
        Caption = #1054#1050#1042#1069#1044
        DataBinding.FieldName = 'OKVED'
        Width = 89
      end
    end
  end
  inherited dxLayout: TdxLayoutControl
    Height = 263
    object cxCode: TcxTextEdit [0]
      Left = 87
      Top = 10
      Style.HotTrack = False
      TabOrder = 0
      Width = 234
    end
    object cxButtonRefresh: TcxButton [1]
      Left = 327
      Top = 10
      Width = 154
      Height = 25
      Action = acRefresh
      Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1087#1086#1080#1089#1082
      TabOrder = 1
    end
    object cxLog: TcxMemo [2]
      Left = 10
      Top = 71
      Lines.Strings = (
        'cxLog')
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      TabOrder = 2
      Height = 130
      Width = 185
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      object dxLayoutGroup2: TdxLayoutGroup
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutItem1: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = #1042#1074#1077#1076#1080#1090#1077' '#1048#1053#1053':'
          Control = cxCode
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem2: TdxLayoutItem
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = cxButtonRefresh
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
        CaptionOptions.Text = 'Separator'
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
      end
      object dxLayoutItem3: TdxLayoutItem
        AlignVert = avClient
        CaptionOptions.Text = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1087#1086#1080#1089#1082#1072':'
        CaptionOptions.AlignVert = tavTop
        CaptionOptions.Layout = clTop
        Control = cxLog
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited cxSplitter: TcxSplitter
    Top = 289
  end
  inherited ActionList: TActionList
    inherited acReset: TAction
      OnExecute = acResetExecute
    end
    inherited acRefresh: TAction
      Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
      OnExecute = acRefreshExecute
    end
    inherited acExcel: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 5
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
      26)
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
      NotDocking = [dsNone, dsLeft, dsRight, dsBottom]
    end
    object dxBarManagerBarBottom: TdxBar [1]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsBottom
      DockedLeft = 637
      DockedTop = 0
      DockingStyle = dsBottom
      FloatLeft = 295
      FloatTop = 257
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight]
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    inherited dxBarButton4: TdxBarButton
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton5: TdxBarButton
      Action = acExcel
      Align = iaRight
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
  object dxData: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 624
    Top = 10
    object dxDataRowNumber: TIntegerField
      FieldName = 'RowNumber'
    end
    object dxDataINN: TStringField
      FieldName = 'INN'
      Size = 255
    end
    object dxDataName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object dxDataAddress: TStringField
      FieldName = 'Address'
      Size = 255
    end
    object dxDataType: TStringField
      FieldName = 'Type'
      Size = 50
    end
    object dxDataKPP: TStringField
      FieldName = 'KPP'
      Size = 50
    end
    object dxDataOGRN: TStringField
      FieldName = 'OGRN'
    end
    object dxDataOKVED: TStringField
      FieldName = 'OKVED'
    end
    object dxDataFNameOPF: TStringField
      FieldName = 'FNameOPF'
      Size = 255
    end
    object dxDataSNameOPF: TStringField
      FieldName = 'SNameOPF'
      Size = 255
    end
    object dxDataFName: TStringField
      FieldName = 'FName'
      Size = 255
    end
    object dxDataSName: TStringField
      FieldName = 'SName'
      Size = 255
    end
  end
  object DS: TDataSource
    DataSet = dxData
    Left = 664
    Top = 10
  end
  object XMLDocument: TXMLDocument
    Left = 704
    Top = 8
    DOMVendorDesc = 'MSXML'
  end
end
