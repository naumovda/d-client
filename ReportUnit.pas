unit ReportUnit;

interface

uses
  SysUtils, Classes, WordXP, ActiveX, ComObj, Variants;

type
  TWordExport = class(TDataModule)
  public
    MSWord: Variant;

    procedure Replace(Stroke:string; Rpl:string);
    procedure CreateDocument();
  end;

var
  WordExport: TWordExport;

implementation

{$R *.dfm}

procedure TWordExport.Replace(Stroke:string; Rpl:string);
const
  wdFindContinue = 1;
  wdReplaceOne = 1;
  wdReplaceAll = 2;
  wdDoNotSaveChanges = 0;
var
  pth,fnn:string;
begin
  MSWord.Selection.Find.ClearFormatting;

  MSWord.Selection.Find.Text := stroke;
  MSWord.Selection.Find.Replacement.Text := rpl;
  MSWord.Selection.Find.Forward := True;
  MSWord.Selection.Find.Wrap := wdFindContinue;
  MSWord.Selection.Find.Format := False;
  MSWord.Selection.Find.MatchCase := False;
  MSWord.Selection.Find.MatchWholeWord := False;
  MSWord.Selection.Find.MatchWildcards := False;
  MSWord.Selection.Find.MatchSoundsLike := False;
  MSWord.Selection.Find.MatchAllWordForms := False;
  MSWord.Selection.Find.Execute(Replace := wdReplaceAll);
end;

procedure TWordExport.CreateDocument();
var
  pth:string;
begin
  MSWord:=CreateOLEObject('Word.Application');
  pth:=ExtractFilePath(ParamStr(0));
  try
    MsWord.Documents.Open(FileName:=pth+'report\Contract.docx', ReadOnly:=False);
    Replace('{%DATE%}',DateToStr(Now));
  finally
    MsWord.Visible := true;
    MsWord := Unassigned;
  end;
end;

end.
