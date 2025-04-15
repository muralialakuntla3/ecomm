pipeline{
  agent any
  stages {
    stage ('build') {
      steps {
        echo 'build completed'
      }
    }
    stage ('Test') {
      steps{
        echo 'Test completed'
      }
    }
    stage ('location') {
      steps{
        sh 'pwd'
      }
    }
  }
}
