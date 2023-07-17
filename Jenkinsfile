 pipeline {
    environment {
    registryCredential = 'dockerHub'
    dockerImage = ''
    }
    agent any
    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url:'https://github.com/htrungngx/WebApp_pipeline.git'
            }
        }
        stage('Building image') {
            steps {
                    sh 'docker build -t dckb9xz/webpipeline:v1 .'
            }
        }
        stage('Deploy image') {
            steps {
                    docker.withRegistry( '', registryCredential ) {
                        dockerImage.push()
                    }
            }
        }
    }
 }
    