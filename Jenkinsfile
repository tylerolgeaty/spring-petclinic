pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
    stage ('Checkout') {
        svn 'https://svn.mycorp/trunk/'
        stage 'Build'
        sh 'make all'
        stage 'Test'
        sh 'make test'
  }
} 