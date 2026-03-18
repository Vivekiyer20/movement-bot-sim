pipeline {
    agent any

    stages {

        stage('Clone Repo') {
            steps {
                git 'https://github.com/Vivekiyer20/movement-bot-sim.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t movement-bot:latest .'
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                docker stop movement-bot || true
                docker rm movement-bot || true
                docker run -d -p 80:80 --name movement-bot movement-bot:latest
                '''
            }
        }

    }
}
