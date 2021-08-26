@ECHO ON
netstat |find "5900" |find "MHS118TW_MACPRO" |find "ESTABLISHED" > output.txt 
set /p connection_status= < output.txt 
del output.txt
IF "%connection_status%" == "" ( call no_connection.bat && EXIT /b
	) Else msg /server:127.0.0.1 <insert your student ID number here> "Eyes up, idiot!" && EXIT /b

