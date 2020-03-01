inherited Documents: TDocuments
  Left = 309
  Top = 193
  Width = 1307
  Height = 596
  Caption = #1044#1086#1075#1086#1074#1086#1088#1072
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    Width = 983
    Height = 531
    inherited tvMain: TcxGridDBTableView
      OptionsCustomize.ColumnFiltering = False
      OptionsView.GroupByBox = True
      Styles.OnGetContentStyle = tvMainStylesGetContentStyle
      object tvMainIsApproved: TcxGridDBColumn
        DataBinding.FieldName = 'IsApproved'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = ImageList
        Properties.Items = <
          item
            Description = #1085#1077' '#1087#1088#1086#1074#1077#1076#1077#1085
            ImageIndex = 1
            Value = False
          end
          item
            Description = #1087#1088#1086#1074#1077#1076#1077#1085
            ImageIndex = 0
            Value = True
          end>
        Properties.ShowDescriptions = False
        IsCaptionAssigned = True
      end
      object tvMainIsArchive: TcxGridDBColumn
        Caption = #1040
        DataBinding.FieldName = 'IsArchive'
        Width = 31
      end
      object tvMainClientGroupCalc: TcxGridDBColumn
        Caption = #1042#1080#1076' '#1082#1083#1080#1077#1085#1090#1072
        DataBinding.FieldName = 'ClientGroupCalc'
        Visible = False
        GroupIndex = 0
      end
      object tvMainClient: TcxGridDBColumn
        Caption = #1050#1083#1080#1077#1085#1090
        DataBinding.FieldName = 'Client'
        Width = 117
      end
      object tvMainDocumentNumber: TcxGridDBColumn
        Caption = #8470
        DataBinding.FieldName = 'DocumentNumber'
        Width = 73
      end
      object tvMainDocumentStartDate: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
        DataBinding.FieldName = 'DocumentStartDate'
        Width = 92
      end
      object tvMainDocumentDate: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
        DataBinding.FieldName = 'DocumentDate'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.SaveTime = False
        Properties.ShowTime = False
        Width = 93
      end
      object tvMainDaysCount: TcxGridDBColumn
        Caption = #1055#1088#1086#1084#1077#1078#1091#1090#1086#1082
        DataBinding.FieldName = 'DaysCount'
        Visible = False
        Width = 124
      end
      object tvMainComment: TcxGridDBColumn
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        DataBinding.FieldName = 'Comment'
        Width = 157
      end
      object tvMainDocumentPaymentDate: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1073#1083#1080#1078#1072#1081#1096#1077#1075#1086' '#1087#1083#1072#1090#1077#1078#1072
        DataBinding.FieldName = 'DocumentPaymentDate'
        Width = 159
      end
      object tvMainDocumentGroup: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1076#1086#1075#1086#1074#1086#1088#1072
        DataBinding.FieldName = 'DocumentGroup'
        Width = 136
      end
      object tvMainPaymentType: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1086#1087#1083#1072#1090#1099
        DataBinding.FieldName = 'PaymentType'
        Width = 93
      end
      object tvMainClientId: TcxGridDBColumn
        DataBinding.FieldName = 'ClientId'
        Visible = False
      end
      object tvMainGroupId: TcxGridDBColumn
        DataBinding.FieldName = 'GroupId'
        Visible = False
      end
      object tvMainPaymentTypeId: TcxGridDBColumn
        DataBinding.FieldName = 'PaymentTypeId'
        Visible = False
      end
      object tvMainDiscontPercent: TcxGridDBColumn
        Caption = '% '#1089#1082#1080#1076#1082#1080
        DataBinding.FieldName = 'DiscontPercent'
      end
      object tvMainDocumentSum: TcxGridDBColumn
        Caption = #1057#1091#1084#1084#1072', '#1088#1091#1073'.'
        DataBinding.FieldName = 'DocumentSum'
      end
      object tvMainDocumentSumTotal: TcxGridDBColumn
        Caption = #1057#1091#1084#1084#1072' '#1089#1086' '#1089#1082#1080#1076#1082#1086#1081', '#1088#1091#1073'.'
        DataBinding.FieldName = 'DocumentSumTotal'
      end
    end
  end
  inherited dxLeft: TdxLayoutControl
    Height = 531
    inherited cxSearch: TcxButton
      Top = 469
      TabOrder = 9
    end
    inherited cxClear: TcxButton
      Top = 469
      TabOrder = 10
    end
    object cxState: TcxRadioGroup [2]
      Left = 22
      Top = 28
      Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1076#1086#1075#1086#1074#1086#1088#1072
      Properties.Items = <
        item
          Caption = #1087#1088#1086#1074#1077#1076#1077#1085#1085#1099#1077
          Value = True
        end
        item
          Caption = #1085#1077' '#1087#1088#1086#1074#1077#1076#1077#1085#1085#1099#1077
          Value = False
        end
        item
          Caption = #1074#1089#1077
        end>
      Properties.OnChange = cxStatePropertiesChange
      TabOrder = 0
      Height = 93
      Width = 256
    end
    object cxIsArchive: TcxRadioGroup [3]
      Left = 22
      Top = 346
      Caption = #1055#1088#1080#1079#1085#1072#1082' '#1072#1088#1093#1080#1074#1085#1086#1075#1086' '#1076#1086#1075#1086#1074#1086#1088#1072
      Properties.Items = <
        item
          Caption = #1085#1077' '#1072#1088#1093#1080#1074#1085#1099#1077
          Value = False
        end
        item
          Caption = #1072#1088#1093#1080#1074#1085#1099#1077
          Value = True
        end
        item
          Caption = #1074#1089#1077
        end>
      Properties.OnChange = cxIsArchivePropertiesChange
      TabOrder = 8
      Height = 105
      Width = 185
    end
    object cxClient: TcxButtonEdit [4]
      Left = 99
      Top = 154
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
      Properties.OnChange = cxClientPropertiesChange
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxNumber: TcxTextEdit [5]
      Left = 99
      Top = 181
      Properties.OnChange = cxNumberPropertiesChange
      Style.HotTrack = False
      TabOrder = 3
      Text = 'cxNumber'
      Width = 121
    end
    object cxType: TcxButtonEdit [6]
      Left = 99
      Top = 208
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end
        item
          Caption = 'X'
          Kind = bkText
        end>
      Properties.OnButtonClick = cxTypePropertiesButtonClick
      Properties.OnChange = cxTypePropertiesChange
      Style.HotTrack = False
      TabOrder = 4
      Width = 187
    end
    object cxPayment: TcxButtonEdit [7]
      Left = 99
      Top = 235
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end
        item
          Caption = 'X'
          Kind = bkText
        end>
      Properties.OnButtonClick = cxPaymentPropertiesButtonClick
      Properties.OnChange = cxPaymentPropertiesChange
      Style.HotTrack = False
      TabOrder = 5
      Width = 280
    end
    object cxDays: TcxSpinEdit [8]
      Left = 34
      Top = 307
      Properties.ImmediatePost = True
      Properties.OnChange = cxDaysPropertiesChange
      Style.HotTrack = False
      TabOrder = 7
      Value = 7
      Width = 159
    end
    object cxSetDays: TcxCheckBox [9]
      Left = 34
      Top = 280
      Caption = #1087#1088#1086#1080#1079#1074#1086#1083#1100#1085#1086#1075#1086' '#1087#1077#1088#1080#1086#1076#1072
      Properties.OnChange = cxSetDaysPropertiesChange
      Style.HotTrack = False
      TabOrder = 6
      OnClick = cxSetDaysClick
      Width = 121
    end
    object cxGroup: TcxButtonEdit [10]
      Left = 99
      Top = 127
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
      TabOrder = 1
      Width = 179
    end
    inherited dxLeftGroup_Root: TdxLayoutGroup
      inherited dxLeftGroup: TdxLayoutGroup
        object dxLeftItem1: TdxLayoutItem
          CaptionOptions.Text = 'cxRadioGroup1'
          CaptionOptions.Visible = False
          Control = cxState
          ControlOptions.ShowBorder = False
        end
        object dxLeftItem9: TdxLayoutItem
          CaptionOptions.Text = #1042#1080#1076' '#1082#1083#1080#1077#1085#1090#1072':'
          Control = cxGroup
          ControlOptions.ShowBorder = False
        end
        object dxLeftItem3: TdxLayoutItem
          CaptionOptions.Text = #1050#1083#1080#1077#1085#1090':'
          Control = cxClient
          ControlOptions.ShowBorder = False
        end
        object dxLeftItem4: TdxLayoutItem
          CaptionOptions.Text = #8470' '#1076#1086#1075#1086#1074#1086#1088#1072':'
          Control = cxNumber
          ControlOptions.ShowBorder = False
        end
        object dxLeftItem5: TdxLayoutItem
          CaptionOptions.Text = #1058#1080#1087' '#1076#1086#1075#1086#1074#1086#1088#1072':'
          Control = cxType
          ControlOptions.ShowBorder = False
        end
        object dxLeftItem6: TdxLayoutItem
          CaptionOptions.Text = #1058#1080#1087' '#1086#1087#1083#1072#1090#1099':'
          Control = cxPayment
          ControlOptions.ShowBorder = False
        end
        object dxLeftGroup1: TdxLayoutGroup
          CaptionOptions.Text = #1041#1083#1080#1078#1072#1081#1096#1080#1081' '#1087#1083#1072#1090#1077#1078' '#1074' '#1090#1077#1095#1077#1085#1080#1077
          ButtonOptions.Buttons = <>
          object dxLeftItem8: TdxLayoutItem
            CaptionOptions.Text = 'cxCheckBox1'
            CaptionOptions.Visible = False
            CaptionOptions.Layout = clRight
            Control = cxSetDays
            ControlOptions.ShowBorder = False
          end
          object dxLeftItem7: TdxLayoutItem
            CaptionOptions.Text = #1076#1085#1077#1081
            CaptionOptions.Layout = clRight
            Control = cxDays
            ControlOptions.ShowBorder = False
          end
        end
        object dxLeftItem2: TdxLayoutItem
          CaptionOptions.Text = 'cxRadioGroup1'
          CaptionOptions.Visible = False
          Control = cxIsArchive
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
    Height = 531
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tDocument
    Left = 672
    Top = 34
  end
  inherited ImageList: TImageList
    Left = 640
    Top = 34
  end
  inherited Actions: TActionList
    Left = 607
    Top = 34
    inherited acSearch: TAction
      OnExecute = acSearchExecute
    end
    object acAddToArchive: TAction
      Caption = '+ '#1074' '#1072#1088#1093#1080#1074
      OnExecute = acAddToArchiveExecute
    end
    object acDelFromArchive: TAction
      Caption = '- '#1080#1079' '#1072#1088#1093#1080#1074#1072
      OnExecute = acDelFromArchiveExecute
    end
  end
  inherited cxStyleRepository: TcxStyleRepository
    Left = 710
    Top = 34
    object cxStyleRed: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clRed
      TextColor = clWhite
    end
    object cxStyleYellow: TcxStyle
      AssignedValues = [svColor]
      Color = clYellow
    end
    object cxStyleGreen: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clMoneyGreen
      TextColor = clBlack
    end
  end
  inherited dxBarManager: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Left = 747
    Top = 33
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
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
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
    object cxArchive: TcxBarEditItem
      Caption = #1054#1090#1086#1073#1088#1072#1078#1072#1090#1100' '#1072#1088#1093#1080#1074
      Category = 0
      Hint = #1054#1090#1086#1073#1088#1072#1078#1072#1090#1100' '#1072#1088#1093#1080#1074
      Visible = ivAlways
      ShowCaption = True
      Width = 100
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
    end
    object dxBarButton2: TdxBarButton
      Action = acAddToArchive
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = acDelFromArchive
      Category = 0
    end
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Top = 80
  end
  inherited OpenDialog: TOpenDialog
    Left = 608
    Top = 80
  end
end
