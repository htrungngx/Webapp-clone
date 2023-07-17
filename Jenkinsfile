 pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url:'https://github.com/htrungngx/WebApp_pipeline.git'
            }
        }
        stage('Docker ') {
            steps {
                withDockerRegistry(credentialsId: 'web-app', url: 'https://index.docker.io/v1/') {
                    sh 'docker build -t dckb9xz/webpipeline:v1 .'
                    sh 'docker push -t dckb9xz/webpipeline:v1'
                }
            }
            
        }
    }

 }
