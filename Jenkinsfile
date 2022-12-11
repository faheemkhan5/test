pipeline {
  agent any
  stages {
    stage('Docker Image Buil') {
      parallel {
        stage('Docker Image Buil') {
          steps {
            echo 'Docker image Building'
          }
        }

        stage('Build Image') {
          steps {
            sshCommand(sudo: true, command: 'cd /var/lib/jenkins/workspace/website-k8s/')
            sshCommand(command: 'docker build -t docreg.eprocure.gov.pk:latest .', sudo: true)
          }
        }

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