node {
    def registry = 'fabiotavarespr/udacity-devopsenginner-capstone'
    stage('Checking out git repo') {
      echo 'Checkout...'
      checkout scm
    }
    stage("Linting") {
      echo 'Linting...'
      sh '/home/ubuntu/.local/bin/hadolint Dockerfile'
    }
    stage("Cleaning up") {
      echo 'Cleaning up...'
      sh "docker system prune"
    }
}
