pipeline {
  agent any
  stages {
    stage('Docker Image Buil') {
      steps {
        script {
                 dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }

    stage('Push Image to Repository') {
      steps {
        script {
          docker.withRegistry( "" ) {
            dockerImage.push()
          }
        }
      }
    }

    stage('Deploy to Kubernetes ') {
      steps {
         script {
          kubernetesDeploy(configs: "website.yaml", kubeconfigId: "kubeconfig")
        } 
      }
    }

  }
}
