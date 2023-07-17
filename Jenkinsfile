 pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url:'https://github.com/htrungngx/WebApp_pipeline.git'
            }
        }
         stage('Initialize'){
        def dockerHome = tool 'myDocker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
    }
        stage('Docker ') {
            steps {
                
                    sh 'docker build -t dckb9xz/webpipeline:v1 .'
            }
            
        }
    }

 }