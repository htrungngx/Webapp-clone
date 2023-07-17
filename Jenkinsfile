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
                withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'dockerhubPassword', usernameVariable: 'dockerhubPassword')]) {
                    sh 'docker build -t dckb9xz/webpipeline:v1 .'
                    sh 'docker push -t dckb9xz/webpipeline:v1'
                }
            }
        }
    }
 }
