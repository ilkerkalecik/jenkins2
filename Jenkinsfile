pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/yourusername/yourrepository.git'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    // Docker build komutunu çalıştır
                    sh 'docker build -t myapp .'
                }
            }
        }

stage('Run Docker Container') {
    steps {
        script {
            // Docker container başlat
            sh 'docker run -d -p 9090:8080 -p 50000:50000 myapp'
        }
    }
}
