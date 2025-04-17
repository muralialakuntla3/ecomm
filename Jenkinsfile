pipeline{
  agent {
    node{
      label 'slave'
    }
  }
  stages {
    stage('Notification') {
      steps {
          slackSend channel: 'deployment-team', color: '#439FE0', message: 'Ecomm deployment job started', teamDomain: 'project-ste2943', tokenCredentialId: 'slack'
            }
        }
    stage ('web server') {
      steps {
        sh 'sudo apt install nginx -y'
      }
    }
    stage ('default page removel') {
      steps{
        sh 'sudo rm -rf /var/www/html/*'
      }
    }
    stage ('deployment') {
      steps{
        sh 'sudo cp -rf  /home/ubuntu/workspace/ecomm/* /var/www/html/'
      }
    }
    stage ('restart') {
      steps{
        sh 'sudo systemctl restart nginx'
      }
    }
    stage ('Testing') {
      parallel{
          stage('andraiod'){
            steps{
              echo "testing on andraiod Phone"
             }
          }
         stage('I Phone'){
            steps{
              echo "testing on Apple Phone"
             }
          }
          stage('Linux'){
            steps{
              echo "testing on Linux"
             }
          }
         stage('Windows'){
            steps{
              echo "testing on windows"
             }
          }
      }
    }
    stage('Email Notification') {
      steps {
          emailext body: 'Ecomm application deployed successfully into Prod Environment', subject: 'Ecomm Deployment', to: 'murali@digitaledify.ai'
          }
      }  
  }
}
