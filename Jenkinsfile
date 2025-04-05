pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh './gradlew clean build'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t my-jenkins-app .'
            }
        }

        stage('Docker Run') {
            steps {
                sh '''
                    docker stop my-jenkins-app || true
                    docker rm my-jenkins-app || true
                    docker run -d -p 8081:8080 --name my-jenkins-app my-jenkins-app
                '''
            }
        }
    }
}
