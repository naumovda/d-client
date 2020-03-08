inherited ClientParameters: TClientParameters
  Left = 265
  Top = 277
  Width = 941
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    Width = 617
    inherited tvMain: TcxGridDBTableView
      object tvMainRowNumber: TcxGridDBColumn
        Caption = #8470
        DataBinding.FieldName = 'RowNumber'
      end
      object tvMainObjectCode: TcxGridDBColumn
        Caption = #1050#1086#1076
        DataBinding.FieldName = 'ObjectCode'
        Width = 68
      end
      object tvMainObjectName: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'ObjectName'
        Width = 168
      end
      object tvMainObjectValue: TcxGridDBColumn
        Caption = #1047#1085#1072#1095#1077#1085#1080#1077
        DataBinding.FieldName = 'ObjectValue'
        Width = 232
      end
    end
  end
  inherited dxLeft: TdxLayoutControl
    object cxValue: TcxTextEdit [0]
      Left = 112
      Top = 28
      Style.HotTrack = False
      TabOrder = 0
      Text = 'cxValue'
      Width = 121
    end
    object cxINN: TcxTextEdit [1]
      Left = 112
      Top = 97
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxFill: TcxButton [2]
      Left = 22
      Top = 124
      Width = 75
      Height = 25
      Action = acFillParameters
      TabOrder = 2
    end
    inherited cxSearch: TcxButton
      Top = 167
      TabOrder = 3
    end
    inherited cxClear: TcxButton
      Top = 167
      TabOrder = 4
    end
    inherited dxLeftGroup_Root: TdxLayoutGroup
      inherited dxLeftGroup: TdxLayoutGroup
        object dxLeftItem1: TdxLayoutItem
          CaptionOptions.Text = #1055#1086#1080#1089#1082' '#1079#1085#1072#1095#1077#1085#1080#1103':'
          Control = cxValue
          ControlOptions.ShowBorder = False
        end
      end
      object dxLeftSeparatorItem1: TdxLayoutSeparatorItem [1]
        CaptionOptions.Text = 'Separator'
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
      end
      object dxLeftGroupReq: TdxLayoutGroup [2]
        CaptionOptions.Text = #1047#1072#1087#1086#1083#1085#1077#1085#1080#1077' '#1088#1077#1082#1074#1080#1079#1080#1090#1086#1074
        ButtonOptions.Buttons = <>
        object dxLeftItem2: TdxLayoutItem
          CaptionOptions.Text = #1042#1074#1077#1076#1080#1090#1077' '#1048#1053#1053':'
          Control = cxINN
          ControlOptions.ShowBorder = False
        end
        object dxLeftItem3: TdxLayoutItem
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = cxFill
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tClientParameters
    Left = 576
    Top = 98
  end
  inherited ImageList: TImageList
    Left = 544
    Top = 98
  end
  inherited Actions: TActionList
    Left = 511
    Top = 98
    inherited acSearch: TAction
      OnExecute = acSearchExecute
    end
    object acFillParameters: TAction
      Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1087#1072#1088#1072#1084#1077#1090#1088#1099
      OnExecute = acFillParametersExecute
    end
  end
  inherited cxStyleRepository: TcxStyleRepository
    Left = 614
    Top = 98
  end
  inherited dxBarManager: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Left = 651
    Top = 97
    DockControlHeights = (
      0
      0
      26
      0)
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 688
    Top = 96
  end
  inherited OpenDialog: TOpenDialog
    Left = 728
    Top = 96
  end
end
