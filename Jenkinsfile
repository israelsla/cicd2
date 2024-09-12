pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/yourusername/flask-app.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('flask-app')
                }
            }
        }
        stage('Deploy App') {
            steps {
                script {
                    sh 'docker stop flask-container || true'
                    sh 'docker rm flask-container || true'
                    sh 'docker run -d -p 5000:5000 --name flask-container flask-app'
                }
            }
        }
    }
}

