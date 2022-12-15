pipeline {
  agent any
  stages {
    stage('Build and Push') {
      steps {
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }

        script {
          docker.withRegistry( "" )
        }

        script {
          dockerImage.push()
        }

      }
    }

    stage('Deploy to K8s') {
      steps {
        kubernetesDeploy(configs: 'website.yaml', kubeconfigId: 'kubeconfig')
      }
    }

  }
}