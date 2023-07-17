 pipeline {
    agent {label 'docker' }
    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url:'https://github.com/htrungngx/WebApp_pipeline.git'
            }
        }
        stage('Docker build ') {
            steps {
                script {
                    sh 'docker build -t dckb9xz/webpipeline:v1 .'

                }
                }
            
            
        }
    }

 }
