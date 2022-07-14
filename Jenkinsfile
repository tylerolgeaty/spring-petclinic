pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh './mvnw -DskiipTests package'
            }
        }
        stage('Test') {
            steps {
                sh './mvnw test'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}