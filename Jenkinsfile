pipeline {
  agent {
    dockerfile {
        filename 'Dockerfile.build'
        args ' -v /root/.m2:/root/.m2'
    }
  }
  
  stages {
    stage ('Build') {
      steps {
        sh 'mvn clean package'
      }
    }
  }
}
