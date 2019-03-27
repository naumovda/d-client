inherited PaymentEdit: TPaymentEdit
  Left = 379
  Top = 215
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1072#1082#1090#1072' '#1086#1087#1083#1072#1090#1099' '#1087#1086' '#1076#1086#1075#1086#1074#1086#1088#1091
  ClientHeight = 231
  ClientWidth = 577
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 217
    Width = 577
    Height = 6
    ClientRectBottom = 9
    ClientRectRight = 573
    ClientRectTop = 9
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 569
      end
      inherited Grid: TcxGrid
        Width = 569
      end
    end
  end
  inherited dxLayoutMain: TdxLayoutControl
    Width = 577
    Height = 192
    object cxDate: TcxDBDateEdit [0]
      Left = 95
      Top = 76
      DataBinding.DataField = 'PaymentDate'
      DataBinding.DataSource = DSMaster
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 2
      Width = 155
    end
    object cxSum: TcxDBCalcEdit [1]
      Left = 95
      Top = 103
      DataBinding.DataField = 'PaymentSum'
      DataBinding.DataSource = DSMaster
      Properties.ImmediatePost = True
      Style.HotTrack = False
      TabOrder = 3
      Width = 155
    end
    object cxIsApproved: TcxDBCheckBox [2]
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'PaymentDone'
      DataBinding.DataSource = DSMaster
      Properties.ImmediatePost = True
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 9
      Visible = False
      Width = 121
    end
    object cxPaymentType: TcxDBButtonEdit [3]
      Left = 95
      Top = 49
      DataBinding.DataField = 'PaymentType'
      DataBinding.DataSource = DSMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxPaymentTypePropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 1
      Width = 203
    end
    object cxNumber: TcxDBButtonEdit [4]
      Left = 95
      Top = 142
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
      TabOrder = 4
      Width = 146
    end
    object cxButton1: TcxButton [5]
      Left = 247
      Top = 142
      Width = 75
      Height = 25
      Action = acSetNumber
      TabOrder = 5
    end
    object cxButton2: TcxButton [6]
      Left = 328
      Top = 142
      Width = 75
      Height = 25
      Action = acClearNumber
      TabOrder = 6
    end
    object cxState: TcxDBLabel [7]
      Left = 446
      Top = 10
      DataBinding.DataField = 'PaymentState'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      Height = 21
      Width = 121
    end
    inherited dxLayoutMainGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      object dxLayoutMainItem8: TdxLayoutItem
        AlignHorz = ahRight
        CaptionOptions.Text = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1087#1083#1072#1090#1077#1078#1072':'
        Control = cxState
        ControlOptions.ShowBorder = False
      end
      object dxLayoutMainSeparatorItem2: TdxLayoutSeparatorItem
        CaptionOptions.Text = 'Separator'
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
      end
      object dxLayoutMainItem4: TdxLayoutItem
        CaptionOptions.Text = #1058#1080#1087' '#1086#1087#1083#1072#1090#1099':'
        Control = cxPaymentType
        ControlOptions.ShowBorder = False
      end
      object dxLayoutMainItem1: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = #1044#1072#1090#1072' '#1086#1087#1083#1072#1090#1099':'
        Control = cxDate
        ControlOptions.ShowBorder = False
      end
      object dxLayoutMainItem2: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = #1057#1091#1084#1084#1072':'
        Control = cxSum
        ControlOptions.ShowBorder = False
      end
      object dxLayoutMainSeparatorItem3: TdxLayoutSeparatorItem
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
        object dxLayoutMainItem5: TdxLayoutItem
          CaptionOptions.Text = #8470' '#1072#1082#1090#1072' '#1086#1087#1083#1072#1090#1099':'
          Control = cxNumber
          ControlOptions.ShowBorder = False
        end
        object dxLayoutMainItem6: TdxLayoutItem
          CaptionOptions.Visible = False
          Control = cxButton1
          ControlOptions.ShowBorder = False
        end
        object dxLayoutMainItem7: TdxLayoutItem
          CaptionOptions.Visible = False
          Control = cxButton2
          ControlOptions.ShowBorder = False
        end
      end
    end
    object dxLayoutMainItem3: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Text = #1055#1083#1072#1090#1077#1078' '#1074#1099#1087#1086#1083#1085#1077#1085':'
      Control = cxIsApproved
      ControlOptions.ShowBorder = False
    end
    object dxLayoutMainSeparatorItem1: TdxLayoutSeparatorItem
      CaptionOptions.Text = 'Separator'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
    end
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tDocumentPayment
  end
  inherited ActionList: TActionList
    Left = 8
    Top = 24
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
      DockedLeft = 30
      FloatLeft = 1251
      FloatTop = 443
      FloatClientWidth = 130
      FloatClientHeight = 157
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
    inherited dxOKButton: TdxBarButton
      Align = iaRight
    end
    object dxBarButton7: TdxBarButton [12]
      Action = acApprove
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton8: TdxBarButton [13]
      Action = acCancelApprove
      Category = 0
      PaintStyle = psCaption
    end
  end
end
