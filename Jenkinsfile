pipeline {
    agent any

    stages {
        stage('Sonar Analysis') {
            steps {
                sh 'sudo docker run --rm -e SONAR_HOST_URL="http://54.193.226.10:9000" -v ".:/usr/src" -e SONAR_TOKEN="sqp_c9195f002f8ea6901357069d7ed16fa86d13023e" sonarsource/sonar-scanner-cli -Dsonar.projectKey=ecomm'
            }
        }
    }
}
