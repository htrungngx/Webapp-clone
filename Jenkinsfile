pipeline {
  agent any
  stages {
    stage('Clone') {
      steps {
        git branch: 'main', url: 'https://github.com/htrungngx/WebApp_pipeline.git'
      }
    }
    stage('Building image') {
      steps {
        sh 'docker build -t dckb9xz/webpipeline:v1 .'
      }
    }
    stage('Deploy image') {
      steps {
        script {
            withCredentials([string(credentialsId: 'dockerPass', variable: 'dockerHubID')]) {
                sh 'docker login -u dckb9xz -p ${dockerHubID}'
                sh 'docker push -t -t dckb9xz/webpipeline:v1'
            }
        }
      }
    }
  }
}

       