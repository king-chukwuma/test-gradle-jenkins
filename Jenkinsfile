pipeline {
    agent any

    tool name: '7.4', type: 'gradle'

    stages {
        stage('Checkout scm') {
            checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/king-chukwuma/test-gradle-jenkins.git']])
        }
    }

    stages {
        stage('poll scm') {
            git 'https://github.com/king-chukwuma/test-gradle-jenkins.git'
        }
    }

    stages {
        stage('build jar') {
            sh './gradlew clean build'
        }
    }

    stages {
        stage('run jar') {
            sh './gradlew run'
        }
    }


}

