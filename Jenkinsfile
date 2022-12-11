pipeline {
  agent any
  stages {
    stage('Docker Image Buil') {
      steps {
        echo 'Docker image Building'
      }
    }

    stage('Push Image to Repository') {
      steps {
        echo 'Pushing to repository'
      }
    }

    stage('Deploy to Kubernetes ') {
      steps {
        echo 'Deploying to Kubernetes '
      }
    }

  }
}