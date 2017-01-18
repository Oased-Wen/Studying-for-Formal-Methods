@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  css-analyser-master startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and CSS_ANALYSER_MASTER_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\css-analyser-master-0.1.jar;%APP_HOME%\lib\choco-solver-3.3.2-j7.jar;%APP_HOME%\lib\crawljax-core-3.6.jar;%APP_HOME%\lib\crawloverview-plugin-3.6.jar;%APP_HOME%\lib\less4j-1.15.4.jar;%APP_HOME%\lib\sac-1.3.jar;%APP_HOME%\lib\args4j-2.33.jar;%APP_HOME%\lib\automaton-1.11-8.jar;%APP_HOME%\lib\jgrapht-core-0.9.3.jar;%APP_HOME%\lib\cpprof-java-1.1.0.jar;%APP_HOME%\lib\trove4j-3.0.3.jar;%APP_HOME%\lib\commons-math-1.2.jar;%APP_HOME%\lib\jgrapht-0.8.3.jar;%APP_HOME%\lib\xmlunit-1.5.jar;%APP_HOME%\lib\nekohtml-1.9.21.jar;%APP_HOME%\lib\jcip-annotations-1.0.jar;%APP_HOME%\lib\selenium-firefox-driver-3.0.1.jar;%APP_HOME%\lib\selenium-chrome-driver-3.0.1.jar;%APP_HOME%\lib\selenium-ie-driver-3.0.1.jar;%APP_HOME%\lib\selenium-support-3.0.1.jar;%APP_HOME%\lib\selenium-remote-driver-3.0.1.jar;%APP_HOME%\lib\guice-3.0.jar;%APP_HOME%\lib\guice-assistedinject-3.0.jar;%APP_HOME%\lib\commons-lang3-3.3.2.jar;%APP_HOME%\lib\metrics-core-3.0.2.jar;%APP_HOME%\lib\phantomjsdriver-1.2.1.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.7.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.7.jar;%APP_HOME%\lib\logback-classic-1.1.2.jar;%APP_HOME%\lib\jsr305-3.0.0.jar;%APP_HOME%\lib\velocity-1.7.jar;%APP_HOME%\lib\commons-io-2.4.jar;%APP_HOME%\lib\jackson-databind-2.4.4.jar;%APP_HOME%\lib\jackson-datatype-guava-2.4.1.jar;%APP_HOME%\lib\antlr-runtime-3.5.2.jar;%APP_HOME%\lib\commons-beanutils-1.8.3.jar;%APP_HOME%\lib\json-20090211.jar;%APP_HOME%\lib\jeromq-0.3.4.jar;%APP_HOME%\lib\xercesImpl-2.10.0.jar;%APP_HOME%\lib\junit-4.12.jar;%APP_HOME%\lib\selenium-api-3.0.1.jar;%APP_HOME%\lib\cglib-nodep-3.2.4.jar;%APP_HOME%\lib\commons-exec-1.3.jar;%APP_HOME%\lib\gson-2.3.1.jar;%APP_HOME%\lib\httpmime-4.5.2.jar;%APP_HOME%\lib\jna-platform-4.1.0.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\cglib-2.2.1-v20090111.jar;%APP_HOME%\lib\selenium-java-2.44.0.jar;%APP_HOME%\lib\logback-core-1.1.2.jar;%APP_HOME%\lib\commons-collections-3.2.1.jar;%APP_HOME%\lib\commons-lang-2.4.jar;%APP_HOME%\lib\jackson-annotations-2.4.0.jar;%APP_HOME%\lib\jackson-core-2.4.4.jar;%APP_HOME%\lib\xml-apis-1.4.01.jar;%APP_HOME%\lib\hamcrest-core-1.3.jar;%APP_HOME%\lib\asm-3.1.jar;%APP_HOME%\lib\selenium-safari-driver-2.44.0.jar;%APP_HOME%\lib\webbit-0.4.14.jar;%APP_HOME%\lib\netty-3.5.2.Final.jar;%APP_HOME%\lib\guava-19.0.jar;%APP_HOME%\lib\protobuf-java-2.6.1.jar;%APP_HOME%\lib\httpclient-4.5.2.jar;%APP_HOME%\lib\jna-4.1.0.jar;%APP_HOME%\lib\httpcore-4.4.4.jar;%APP_HOME%\lib\commons-codec-1.9.jar;%APP_HOME%\lib\slf4j-api-1.7.7.jar;%APP_HOME%\lib\commons-logging-1.2.jar

@rem Execute css-analyser-master
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %CSS_ANALYSER_MASTER_OPTS%  -classpath "%CLASSPATH%" ca.concordia.cssanalyser.app.CSSAnalyserCLI %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable CSS_ANALYSER_MASTER_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%CSS_ANALYSER_MASTER_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
