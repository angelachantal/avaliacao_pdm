@echo off
echo Verificando configuracoes do Flutter e Java...
echo.

echo === JAVA_HOME ===
echo %JAVA_HOME%
echo.

echo === Java Version ===
"C:\Program Files\Java\jdk-17\bin\java.exe" -version
echo.

echo === Flutter Doctor ===
flutter doctor -v
echo.

echo === Localizacao do Android SDK ===
echo %ANDROID_HOME%
echo %ANDROID_SDK_ROOT%

pause
