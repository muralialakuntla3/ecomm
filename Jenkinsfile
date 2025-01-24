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
        stage('Deploying Ecomm') {
            steps {
                sh 'sudo rm -rf /var/www/html/*'
                sh 'sudo cp -r /var/lib/jenkins/workspace/ecomm/* /var/www/html'
                sh 'sudo systemctl restart nginx'
            }
        }
    }
}
