pipeline {
    agent any

    environment {
        APP_NAME    = "MyJenkinsApp"
        VERSION     = "1.0.${env.BUILD_NUMBER}"
        DEPLOY_DIR  = "${env.WORKSPACE}\\deploy"
        BUILD_DIR   = "${env.WORKSPACE}\\build"
    }

    stages {

        stage('Checkout') {
            steps {
                echo "=============================="
                echo "Pulling code from GitHub..."
                echo "=============================="
                echo "App: ${env.APP_NAME}"
                echo "Version: ${env.VERSION}"
                echo "Branch: ${env.GIT_BRANCH}"
                echo "Commit: ${env.GIT_COMMIT}"
                echo "Build #: ${env.BUILD_NUMBER}"
            }
        }

        stage('Validate') {
            steps {
                echo "=============================="
                echo "Validating project files..."
                echo "=============================="
                bat '''
                    if not exist app.bat (
                        echo ERROR: app.bat is missing!
                        exit /b 1
                    )
                    echo PASS: app.bat found

                    if not exist test.bat (
                        echo ERROR: test.bat is missing!
                        exit /b 1
                    )
                    echo PASS: test.bat found

                    if not exist Jenkinsfile (
                        echo ERROR: Jenkinsfile is missing!
                        exit /b 1
                    )
                    echo PASS: Jenkinsfile found

                    echo All required files validated!
                '''
            }
        }

        stage('Build') {
            steps {
                echo "=============================="
                echo "Building application..."
                echo "=============================="
                bat """
                    if not exist build mkdir build
                    echo App: %APP_NAME% > build\\build-info.txt
                    echo Version: %VERSION% >> build\\build-info.txt
                    echo BuildNumber: %BUILD_NUMBER% >> build\\build-info.txt
                    echo Branch: %GIT_BRANCH% >> build\\build-info.txt
                    echo BuildTime: %DATE% %TIME% >> build\\build-info.txt
                    echo Build info generated!
                    type build\\build-info.txt
                """
                bat 'copy app.bat build\\app.bat'
                echo "Build complete — files copied to build folder"
            }
        }

        stage('Test') {
            steps {
                echo "=============================="
                echo "Running tests..."
                echo "=============================="
                bat 'call test.bat'
                echo "All tests passed!"
            }
        }

        stage('Code Quality') {
            steps {
                echo "=============================="
                echo "Checking code quality..."
                echo "=============================="
                bat '''
                    echo Checking app.bat for required content...
                    findstr /i "echo" app.bat
                    if %errorlevel% equ 0 (
                        echo PASS: app.bat has output statements
                    )
                    echo Counting lines in app.bat...
                    find /c /v "" app.bat
                    echo Code quality check complete!
                '''
            }
        }

        stage('Deploy') {
            steps {
                echo "=============================="
                echo "Deploying application..."
                echo "=============================="
                bat """
                    if not exist deploy mkdir deploy
                    copy build\\app.bat deploy\\app.bat
                    copy build\\build-info.txt deploy\\build-info.txt
                    echo Deployed version: %VERSION% > deploy\\deploy-log.txt
                    echo Deploy time: %DATE% %TIME% >> deploy\\deploy-log.txt
                    echo Status: SUCCESS >> deploy\\deploy-log.txt
                    echo.
                    echo ======= DEPLOY LOG =======
                    type deploy\\deploy-log.txt
                    echo ==========================
                """
                echo "Application deployed successfully!"
            }
        }

    }

    post {
        success {
            echo "=============================="
            echo "PIPELINE SUCCESS!"
            echo "=============================="
            echo "App ${env.APP_NAME} v${env.VERSION} deployed!"
            echo "Build #${env.BUILD_NUMBER} completed"
            echo "All 6 stages passed!"
        }
        failure {
            echo "=============================="
            echo "PIPELINE FAILED!"
            echo "=============================="
            echo "Build #${env.BUILD_NUMBER} failed"
            echo "Check the red stage above"
            echo "Fix the issue and push again"
        }
        always {
            echo "=============================="
            echo "CLEANUP"
            echo "=============================="
            echo "Pipeline finished for ${env.APP_NAME}"
            echo "Workspace: ${env.WORKSPACE}"
        }
    }
}
// ```

// Commit this file.

// ---

// ## Step 2 — Create Jenkins job for this project

// Go to Jenkins → **New Item** → name it `realworld-cicd` → **Pipeline** → **OK**

// Configure exactly like Module 4:
// - **Definition** → `Pipeline script from SCM`
// - **SCM** → `Git`
// - **Repository URL** → your GitHub repo URL
// - **Branch** → `*/main`
// - **Script Path** → `Jenkinsfile`
// - **Poll SCM** → `H/5 * * * *`

// Click **Save** → **Build Now**.

// ---

// ## Step 3 — What to look for

// When it runs successfully you will see in your workspace:
// ```
// your-repo\
// ├── app.bat           ← your application
// ├── test.bat          ← your tests
// ├── Jenkinsfile       ← your pipeline
// ├── build\            ← created by Build stage
// │   ├── app.bat
// │   └── build-info.txt
// └── deploy\           ← created by Deploy stage
//     ├── app.bat
//     └── deploy-log.txt
