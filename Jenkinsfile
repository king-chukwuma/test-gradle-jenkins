pipeline {
    agent any


    stages {
        stage('Checkout scm') {
        steps {
            checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/king-chukwuma/test-gradle-jenkins.git']])
        }
        }




        stage('build jar') {
        steps {

            sh './gradlew clean build'
        }
        }



        stage('run jar') {
        steps {

            sh './gradlew run'
        }
        }
    }


}

