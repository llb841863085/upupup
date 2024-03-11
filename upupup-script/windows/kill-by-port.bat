:: 根据端口号关闭进程：kill-by-port.bat 8080
@echo off
setlocal

:: 获取命令行传入的端口号参数
set PORT=%1
echo kill by port %PORT%
:: 检查是否传入了端口号参数
if "%PORT%" == "" (
    echo Please specify a port number as an argument.
    goto :eof
)

:: 查找占用指定端口的进程PID
for /f "tokens=5" %%P in ('netstat -ano ^| findstr ":%PORT%"') do (
    echo Process ID using port %PORT% is: %%P
    :: 强制结束该进程
    taskkill /F /PID %%P
    if errorlevel 1 (
        echo Failed to kill process with PID %%P.
    ) else (
        echo Successfully killed process with PID %%P.
    )
)
echo kill by port %PORT% successed!
endlocal
