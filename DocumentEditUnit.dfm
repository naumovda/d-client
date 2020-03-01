inherited DocumentEdit: TDocumentEdit
  Left = 371
  Top = 128
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1076#1086#1075#1086#1074#1086#1088#1072
  ClientHeight = 654
  ClientWidth = 700
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 401
    Width = 700
    Height = 227
    ClientRectBottom = 223
    ClientRectRight = 696
    inherited cxTable: TcxTabSheet
      Caption = #1055#1083#1072#1090#1077#1078#1080' '#1087#1086' '#1076#1086#1075#1086#1074#1086#1088#1091
      inherited dxBarDockControl: TdxBarDockControl
        Width = 692
      end
      inherited Grid: TcxGrid
        Width = 692
        Height = 173
        inherited tvMain: TcxGridDBTableView
          OptionsData.Editing = False
          object tvMainPaymentDone: TcxGridDBColumn
            DataBinding.FieldName = 'PaymentDone'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = ImageList
            Properties.Items = <
              item
                Description = #1087#1088#1086#1074#1077#1076#1077#1085
                ImageIndex = 0
                Value = True
              end
              item
                Description = #1085#1077' '#1087#1088#1086#1074#1077#1076#1077#1085
                ImageIndex = 1
                Value = False
              end>
            Properties.ReadOnly = True
            Properties.ShowDescriptions = False
            Width = 43
            IsCaptionAssigned = True
          end
          object tvMainPaymentDate: TcxGridDBColumn
            Caption = #1044#1072#1090#1072' '#1087#1083#1072#1090#1077#1078#1072
            DataBinding.FieldName = 'PaymentDate'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ImmediatePost = True
            Properties.SaveTime = False
            Properties.ShowTime = False
          end
          object tvMainPaymentSum: TcxGridDBColumn
            Caption = #1057#1091#1084#1084#1072' '#1087#1083#1072#1090#1077#1078#1072
            DataBinding.FieldName = 'PaymentSum'
            Width = 100
          end
          object tvMainPaymentType: TcxGridDBColumn
            Caption = #1058#1080#1087' '#1086#1087#1083#1072#1090#1099
            DataBinding.FieldName = 'PaymentType'
            Width = 148
          end
          object tvMainPaymentState: TcxGridDBColumn
            Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
            DataBinding.FieldName = 'PaymentState'
            Width = 101
          end
        end
      end
    end
  end
  inherited dxLayoutMain: TdxLayoutControl
    Width = 700
    Height = 376
    object cxGroup: TcxDBButtonEdit [0]
      Left = 157
      Top = 55
      DataBinding.DataField = 'DocumentGroup'
      DataBinding.DataSource = DSMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxGroupPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 2
      Width = 223
    end
    object cxClient: TcxDBButtonEdit [1]
      Left = 157
      Top = 82
      DataBinding.DataField = 'Client'
      DataBinding.DataSource = DSMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxClientPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 4
      Width = 481
    end
    object cxDateStart: TcxDBDateEdit [2]
      Left = 491
      Top = 139
      DataBinding.DataField = 'DocumentStartDate'
      DataBinding.DataSource = DSMaster
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 9
      Width = 145
    end
    object cxDateEnd: TcxDBDateEdit [3]
      Left = 491
      Top = 166
      DataBinding.DataField = 'DocumentDate'
      DataBinding.DataSource = DSMaster
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 10
      Width = 143
    end
    object cxComment: TcxDBMemo [4]
      Left = 10
      Top = 289
      DataBinding.DataField = 'Comment'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 13
      Height = 74
      Width = 505
    end
    object cxDateNearestPayment: TcxDBDateEdit [5]
      Left = 491
      Top = 193
      TabStop = False
      DataBinding.DataField = 'DocumentPaymentDate'
      DataBinding.DataSource = DSMaster
      Properties.ReadOnly = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.Color = clMenuBar
      Style.HotTrack = False
      TabOrder = 11
      Width = 141
    end
    object cxPaymentType: TcxDBButtonEdit [6]
      Left = 453
      Top = 55
      DataBinding.DataField = 'PaymentType'
      DataBinding.DataSource = DSMaster
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
      TabOrder = 3
      Width = 223
    end
    object cxNumber: TcxDBButtonEdit [7]
      Left = 491
      Top = 232
      DataBinding.DataField = 'DocumentNumber'
      DataBinding.DataSource = DSMaster
      Properties.Buttons = <
        item
          Caption = '<-'
          Default = True
          Kind = bkText
        end
        item
          Caption = 'X'
          Kind = bkText
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxNumberPropertiesButtonClick
      Style.Color = clMenuBar
      Style.HotTrack = False
      TabOrder = 12
      Width = 146
    end
    object cxButton1: TcxButton [8]
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = acSetNumber
      TabOrder = 16
      Visible = False
    end
    object cxButton2: TcxButton [9]
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = acClearNumber
      TabOrder = 15
      Visible = False
    end
    object cxState: TcxDBLabel [10]
      Left = 428
      Top = 10
      DataBinding.DataField = 'State'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      Height = 21
      Width = 121
    end
    object cxArcive: TcxDBCheckBox [11]
      Left = 567
      Top = 10
      TabStop = False
      Caption = #1072#1088#1093#1080#1074#1085#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
      DataBinding.DataField = 'IsArchive'
      DataBinding.DataSource = DSMaster
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxSum: TcxDBCalcEdit [12]
      Left = 157
      Top = 139
      DataBinding.DataField = 'DocumentSum'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 5
      Width = 158
    end
    object cxDiscontPercent: TcxDBCalcEdit [13]
      Left = 157
      Top = 166
      DataBinding.DataField = 'DiscontPercent'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object cxDiscontSum: TcxDBCalcEdit [14]
      Left = 157
      Top = 205
      TabStop = False
      DataBinding.DataField = 'DiscontSum'
      DataBinding.DataSource = DSMaster
      Style.Color = clMenuBar
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object cxSumTotal: TcxDBCalcEdit [15]
      Left = 157
      Top = 232
      TabStop = False
      DataBinding.DataField = 'DocumentSumTotal'
      DataBinding.DataSource = DSMaster
      Style.Color = clMenuBar
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    inherited dxLayoutMainGroup_Root: TdxLayoutGroup
      object dxLayoutMainGroup8: TdxLayoutGroup
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutMainItem11: TdxLayoutItem
          AlignHorz = ahRight
          CaptionOptions.Text = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072':'
          Control = cxState
          ControlOptions.ShowBorder = False
        end
        object dxLayoutMainSeparatorItem2: TdxLayoutSeparatorItem
          AlignHorz = ahRight
          CaptionOptions.Text = 'Separator'
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = False
          SizeOptions.SizableVert = False
        end
        object dxLayoutMainItem12: TdxLayoutItem
          AlignHorz = ahRight
          CaptionOptions.Text = #1074' '#1072#1088#1093#1080#1074#1077
          CaptionOptions.Visible = False
          Control = cxArcive
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutMainGroup1: TdxLayoutGroup
        CaptionOptions.Text = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1076#1086#1075#1086#1074#1086#1088#1072
        ButtonOptions.Buttons = <>
        object dxLayoutMainGroup4: TdxLayoutGroup
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutMainItem1: TdxLayoutItem
            CaptionOptions.Text = #1058#1080#1087' '#1076#1086#1075#1086#1074#1086#1088#1072':'
            Control = cxGroup
            ControlOptions.ShowBorder = False
          end
          object dxLayoutMainItem7: TdxLayoutItem
            AlignHorz = ahClient
            CaptionOptions.Text = #1058#1080#1087' '#1086#1087#1083#1072#1090#1099':'
            Control = cxPaymentType
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutMainItem2: TdxLayoutItem
          CaptionOptions.Text = #1050#1083#1080#1077#1085#1090':'
          Control = cxClient
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutMainGroup10: TdxLayoutGroup
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutMainGroup9: TdxLayoutGroup
          CaptionOptions.Text = #1057#1091#1084#1084#1099' '#1080' '#1089#1082#1080#1076#1082#1080
          ButtonOptions.Buttons = <>
          object dxLayoutMainItem13: TdxLayoutItem
            CaptionOptions.Text = #1057#1091#1084#1084#1072' '#1087#1086' '#1076#1086#1075#1086#1074#1086#1088#1091', '#1088#1091#1073':'
            Control = cxSum
            ControlOptions.ShowBorder = False
          end
          object dxLayoutMainItem14: TdxLayoutItem
            CaptionOptions.Text = #1055#1077#1088#1089#1086#1085#1072#1083#1100#1085#1072#1103' '#1089#1082#1080#1076#1082#1072', %:'
            Control = cxDiscontPercent
            ControlOptions.ShowBorder = False
          end
          object dxLayoutMainSeparatorItem3: TdxLayoutSeparatorItem
            CaptionOptions.Text = 'Separator'
            SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
            SizeOptions.SizableHorz = False
            SizeOptions.SizableVert = False
          end
          object dxLayoutMainItem15: TdxLayoutItem
            CaptionOptions.Text = #1057#1091#1084#1084#1072' '#1089#1082#1080#1076#1082#1080', '#1088#1091#1073'.:'
            Control = cxDiscontSum
            ControlOptions.ShowBorder = False
          end
          object dxLayoutMainItem16: TdxLayoutItem
            CaptionOptions.Text = #1057#1091#1084#1084#1072' '#1089#1086' '#1089#1082#1080#1076#1082#1086#1081', '#1088#1091#1073':'
            Control = cxSumTotal
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutMainGroup2: TdxLayoutGroup
          AlignHorz = ahClient
          CaptionOptions.Text = #1053#1086#1084#1077#1088' '#1080' '#1076#1072#1090#1099' '#1076#1086#1075#1086#1074#1086#1088#1072':'
          ButtonOptions.Buttons = <>
          object dxLayoutMainItem3: TdxLayoutItem
            CaptionOptions.Text = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1076#1086#1075#1086#1074#1086#1088#1072':'
            Control = cxDateStart
            ControlOptions.ShowBorder = False
          end
          object dxLayoutMainItem4: TdxLayoutItem
            CaptionOptions.Text = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1076#1086#1075#1086#1074#1086#1088#1072':'
            Control = cxDateEnd
            ControlOptions.ShowBorder = False
          end
          object dxLayoutMainItem6: TdxLayoutItem
            CaptionOptions.Text = #1044#1072#1090#1072' '#1073#1083#1080#1078#1072#1081#1096#1077#1075#1086' '#1087#1083#1072#1090#1077#1078#1072':'
            Control = cxDateNearestPayment
            ControlOptions.ShowBorder = False
          end
          object dxLayoutMainSeparatorItem1: TdxLayoutSeparatorItem
            CaptionOptions.Text = 'Separator'
            SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
            SizeOptions.SizableHorz = False
            SizeOptions.SizableVert = False
          end
          object dxLayoutMainItem8: TdxLayoutItem
            CaptionOptions.Text = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072':'
            Control = cxNumber
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxLayoutMainItem5: TdxLayoutItem
        CaptionOptions.Text = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077':'
        CaptionOptions.Layout = clTop
        Control = cxComment
        ControlOptions.ShowBorder = False
      end
    end
    object dxLayoutMainItem9: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.ShowBorder = False
    end
    object dxLayoutMainItem10: TdxLayoutItem
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.ShowBorder = False
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tDocumentPayment
    Left = 176
    Top = 520
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tDocument
    Left = 208
    Top = 520
  end
  inherited ActionList: TActionList
    Left = 240
    Top = 520
    object acSetNumber: TAction
      Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100
      OnExecute = acSetNumberExecute
    end
    object acClearNumber: TAction
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      OnExecute = acClearNumberExecute
    end
    object acApprove: TAction
      Caption = #1055#1088#1086#1074#1077#1089#1090#1080
      ImageIndex = 0
      OnExecute = acApproveExecute
    end
    object acCancelApprove: TAction
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1077
      ImageIndex = 1
      OnExecute = acCancelApproveExecute
    end
    object acSwitchArcive: TAction
      Caption = #1042' '#1072#1088#1093#1080#1074
      OnExecute = acSwitchArciveExecute
    end
    object acPrint: TAction
      Caption = #1055#1077#1095#1072#1090#1100
      ImageIndex = 9
      OnExecute = acPrintExecute
    end
  end
  inherited ImageList: TImageList
    Left = 144
    Top = 522
  end
  inherited cxStyleRep: TcxStyleRepository
    Left = 272
    Top = 520
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
    Left = 304
    Top = 520
    DockControlHeights = (
      0
      0
      25
      26)
    inherited dxButtons: TdxBar
      DockedLeft = 69
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
          ItemName = 'dxBarButton9'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton7'
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
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end>
    end
    inherited dxAction: TdxBarSubItem
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarPrint'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxSave'
        end
        item
          Visible = True
          ItemName = 'dxOK'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator1'
        end
        item
          Visible = True
          ItemName = 'dxClose'
        end>
    end
    object dxBarButton7: TdxBarButton [12]
      Action = acApprove
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton8: TdxBarButton [13]
      Action = acCancelApprove
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton9: TdxBarButton [14]
      Action = acSwitchArcive
      Category = 0
    end
    object dxBarPrint: TdxBarButton [15]
      Action = acPrint
      Category = 0
    end
  end
  inherited dxBarDB: TdxBarDBNavigator
    Left = 344
    Top = 521
  end
end
