pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        stage('storage details') {
            steps {
                sh 'df -h'
            }
        }
    }
}
