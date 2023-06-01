pipeline {
    agent any
    stages {
        stage("Clone Git Repository") {
            steps {
                dir('temp_repo') {
                    git(
                        url: "https://github.com/benjamindavisdc/may23pipeline01.git",
                        branch: "main"
                    )
                }
            }
        }
        
        stage('Copy Files') {
            steps {
                script {
                    sh '''
                    # Html site, doesn't need any packaging
                    docker cp temp_repo/. my-apache-container:/var/www/html/
                    '''
                }
            }
        }
        
        stage('Clean Up') {
            steps {
                sh 'rm -rf temp_repo'
            }
        }
    }
}
