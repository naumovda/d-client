inherited DocumentPartEdit: TDocumentPartEdit
  Left = 484
  Top = 188
  Caption = #1055#1091#1085#1082#1090' '#1076#1086#1075#1086#1074#1086#1088#1072
  ClientHeight = 563
  ClientWidth = 471
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 471
    Height = 210
    object cxLabel1: TcxLabel
      Left = 16
      Top = 8
      Caption = #8470' '#1087#1091#1085#1082#1090#1072
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 96
      Top = 8
      DataBinding.DataField = 'DocumentPartNumber'
      DataBinding.DataSource = DSMaster
      TabOrder = 1
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 16
      Top = 32
      Caption = #1057#1086#1076#1077#1088#1078#1072#1085#1080#1077':'
    end
    object cxDBMemo1: TcxDBMemo
      Left = 96
      Top = 32
      DataBinding.DataField = 'DocumentPartText'
      DataBinding.DataSource = DSMaster
      TabOrder = 3
      Height = 161
      Width = 353
    end
  end
  inherited cxPageControl: TcxPageControl
    Top = 233
    Width = 471
    Height = 304
    ClientRectBottom = 304
    ClientRectRight = 471
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 471
      end
      inherited Grid: TcxGrid
        Width = 471
        Height = 254
        inherited tvMain: TcxGridDBTableView
          object tvMainServiceKind: TcxGridDBColumn
            Caption = #1042#1080#1076' '#1091#1089#1083#1091#1075#1080
            DataBinding.FieldName = 'ServiceKind'
            Width = 128
          end
          object tvMainPerson: TcxGridDBColumn
            Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
            DataBinding.FieldName = 'Person'
            Width = 84
          end
          object tvMainServiceDate: TcxGridDBColumn
            Caption = #1044#1072#1090#1072
            DataBinding.FieldName = 'ServiceDate'
            PropertiesClassName = 'TcxDateEditProperties'
          end
          object tvMainServiceSum: TcxGridDBColumn
            Caption = #1057#1091#1084#1084#1072', '#1088#1091#1073'.'
            DataBinding.FieldName = 'ServiceSum'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 99
          end
        end
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tServiceDone
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tDocumentPart
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
      23
      26)
    inherited dxButtons: TdxBar
      DockedLeft = 152
    end
  end
end
