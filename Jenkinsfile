pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        stage('install nginx') {
            steps {
                sh 'sudo apt update'
                sh 'sudo apt install nginx -y'
            }
        }
    }
}
