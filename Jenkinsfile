pipeline {
  agent any
  stages {
    stage('Build & Push') {
      parallel {
        stage('Build & Push') {
          steps {
            script {
              script {
                docker.withRegistry( "" ) {
                  dockerImage.push()
                }
              }
            }

            script {
              script {
                kubernetesDeploy(configs: "website.yaml", kubeconfigId: "kubeconfig")
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