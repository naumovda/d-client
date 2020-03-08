unit Suggest;

interface

uses
  Classes, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  IdIOHandler, IdIOHandlerSocket, IdSSLOpenSSL;
  
function GetSuggest(DictionaryType, ContentType, Accept, Token,
  Body: string): string;

function SuggestTest: string;

implementation

function GetSuggest(DictionaryType, ContentType, Accept, Token,
  Body: string): string;
var
  Url: string;
  IdHTTP1: TIdHTTP;
  //StringStream: TStringStream;
  ABody: TStringList;
begin
  IdHTTP1 := TIdHTTP.Create(nil);
  ABody := TStringList.Create;
  //StringStream := TStringStream.Create('');
  //StringStream.TEncoding.UTF8);
  try
    IdHTTP1.HTTPOptions := [hoKeepOrigProtocol, hoForceEncodeParams];
      //hoNoProtocolErrorException, hoWantProtocolErrorContent];
    IdHTTP1.Request.ContentEncoding := 'UTF-8';
    IdHTTP1.Request.ContentType := ContentType;
    IdHTTP1.Request.Accept := Accept;

    IdHTTP1.Request.CustomHeaders.Add('Authorization: Token ' + Token);
    ABody.Add(Body);
    //StringStream.WriteString(Body);

    Url := 'https://suggestions.dadata.ru/suggestions/api/4_1/rs/suggest/'
      + DictionaryType;
    //Result := IdHTTP1.Post(Url, StringStream);
    Result := IdHTTP1.Post(Url, ABody);
  finally
    //StringStream.Free;
    ABody.Free;
    IdHTTP1.Free;
  end;
end;

function SuggestTest: string;
var
  DictionaryType: string;
  ContentType: string;
  Accept: string;
  Token: string;
  Body: string;
begin
  DictionaryType := 'party';
  ContentType := 'application/json';
  Accept := 'application/json';
  Token := '47c765822f48177f851040d5af5be2a110089302';
  Body := '5408110390';

  Result := GetSuggest(DictionaryType, ContentType, Accept, Token, Body);
end;

end.
