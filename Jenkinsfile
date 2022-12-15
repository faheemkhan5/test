pipeline {
    environment {
        registry = "docreg.eprocure.gov.pk:5000/test"
        dockerImage = ""
    }
    agent any
    stages {
        }
        stage('docker build and push') {
            steps{
                  script {
                     dockerImage = docker.build registry + ":$BUILD_NUMBER"
            }
            }
        }
        stage('Push Image') {
      steps{
        script {
          docker.withRegistry( "" ) {
            dockerImage.push()
          }
        }
      }
    }
        stage('Deploy App') {
      steps {
        script {
          kubernetesDeploy(configs: "website.yaml", kubeconfigId: "kubeconfig")
        }
      }
    }
    }
