pipeline {
    agent any


    stages {
        stage('Checkout scm') {
            checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/king-chukwuma/test-gradle-jenkins.git']])
        }



        stage('poll scm') {
            git 'https://github.com/king-chukwuma/test-gradle-jenkins.git'
        }



        stage('build jar') {
            sh './gradlew clean build'
        }



        stage('run jar') {
            sh './gradlew run'
        }
    }


}

