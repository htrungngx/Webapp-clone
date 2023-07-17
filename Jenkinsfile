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
           withDockerRegistry([credentialsId: 'dockerHub', url: 'https://index.docker.io/v1/']) {
            sh 'docker push -t dckb9xz/webpipeline:v1'
        }
      }
    }
  }
}
