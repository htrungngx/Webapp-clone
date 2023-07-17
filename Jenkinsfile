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
                withDockerRegistry(credentialsId: '6ff6a5fb-aeb1-4e2d-b8d9-94a54da88648', url: 'https://index.docker.io/v1/') {
                    sh 'docker build -t dckb9xz/webpipeline:v1 .'
                    sh 'docker push -t dckb9xz/webpipeline:v1'
                }
            }
        }
    }
 }
