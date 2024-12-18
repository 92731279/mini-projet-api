pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                // Récupérer le code depuis le repo Git
                git branch: 'main', url: 'https://github.com/92731279/mini-projet-api.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                // Construire l'image Docker
                script {
                    docker.build('wided2002/mini-projet-api')
                }
            }
        }
        stage('Push to DockerHub') {
            steps {
                // Pousser l'image sur DockerHub
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub-credentials') {
                        docker.image('wided2002/mini-projet-api').push()
                    }
                }
            }
        }
        stage('Deploy Container') {
            steps {
                // Déployer un conteneur à partir de l'image
                sh 'docker run -d -p 3000:3000 wided2002/mini-projet-api'
            }
        }
    }
}
