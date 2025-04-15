pipeline{
  agent any
  stages {
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
    stage ('deploy') {
      steps{
        sh 'sudo cp -rf /var/lib/jenkins/workspace/ecomm/* /var/www/html'
      }
    }
    stage ('restart') {
      steps{
        sh 'sudo systemctl restart nginx'
      }
    }
    stage ('Testing') {
      parallel{
          stage(andraiod){
            steps{
              echo "testing on andraiod Phone"
          }
         }
         stage(I Phone){
            steps{
              echo "testing on Apple Phone"
         }
        }
      }
    }
  }
}
