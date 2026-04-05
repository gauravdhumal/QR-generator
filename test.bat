@echo off
echo Running test suite...
echo.
echo [TEST 1] Checking app.bat exists...
if exist app.bat (
    echo PASS - app.bat found
) else (
    echo FAIL - app.bat missing
    exit /b 1
)

echo [TEST 2] Checking Jenkinsfile exists...
if exist Jenkinsfile (
    echo PASS - Jenkinsfile found
) else (
    echo FAIL - Jenkinsfile missing
    exit /b 1
)

echo [TEST 3] Checking build folder exists...
if exist build (
    echo PASS - build folder found
) else (
    echo FAIL - build folder missing
    exit /b 1
)

echo.
echo All 3 tests passed!
exit /b 0
