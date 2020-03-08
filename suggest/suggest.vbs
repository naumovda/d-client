On Error Resume Next

If WScript.Arguments.Count <> 1 Then
	'MsgBox "Нет обязательного параметра или параметров слишком много!", vbCritical
	WScript.Quit 2
End If

Dim http
Set http = CreateObject("WinHttp.WinHttpRequest.5.1")
timeout = 2000  'milliseconds
http.SetTimeouts timeout, timeout, timeout, timeout

query = WScript.Arguments(0) ' test - "7719402047; 623410415606"
request = "{ ""query"": "" " & query & " "" } "

http.Open "POST", "https://suggestions.dadata.ru/suggestions/api/4_1/rs/suggest/party"
http.SetRequestHeader "Content-Type", "application/json"
http.SetRequestHeader "Authorization", "Token 47c765822f48177f851040d5af5be2a110089302"
http.setRequestHeader "Accept", "application/xml"
http.Send request

Set str = CreateObject("ADODB.Stream")
str.Charset = "UTF-8"
str.Open()
str.WriteText("<?xml version='1.0' encoding='utf-8'?>")

If Err.Number <> 0 then
	'MsgBox "Error " & Err.Number & ": cannot connect to suggestions.dadata.ru. Check your Internet connection!", vbCritical
	resp = "<ConnectionError/>"
Else
	resp = http.ResponseText	
End If

str.WriteText(resp)
str.SaveToFile "suggest\" & query & ".xml", 2
str.Close()		
