pipeline {
  agent any
  stages {
    stage('Build & Push') {
      parallel {
        stage('Build & Push') {
          steps {
            script {
              dockerImage = docker.build registry + ":$BUILD_NUMBER"
            }

            script {

              docker.withRegistry( "" ) {
                dockerImage.push()
              }
            }

          }
        }

        stage('Wait') {
          steps {
            sleep 30
          }
        }

      }
    }

    stage('Deploy to Kubernetes') {
      steps {
        kubernetesDeploy(configs: 'website.yaml', kubeconfigId: 'kubeconfig')
      }
    }

  }
}