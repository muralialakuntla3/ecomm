pipeline{
  agent any
  stages {
    stage ('web server') {
      steps {
        sh 'sudo apt install nginx -y'
      }
    }
    stage ('location') {
      steps{
        sh 'pwd'
      }
    }
  }
}
