pipeline {
  agent any
  tools {
    maven 'MavenLatest' 
  }
  stages {
    stage ('Build') {
      steps {
        sh 'mvn clean package'
      }
    }
  }
}
