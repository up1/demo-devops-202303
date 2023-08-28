pipeline {
    agent {
        label "docker01"
    }


    stages {
        stage('1. Pull code') {
            steps {
                git branch: 'main', url: 'https://github.com/up1/demo-devops-202303.git'
            }
        }
        stage('2. Build image') {
            steps {
                sh '''docker compose build frontend
                    docker compose build backend'''
            }
        }
        stage('3. Create container') {
            steps {
                sh 'docker compose up -d frontend'
            }
        }
        stage('4. API testing') {
            steps {
                sh 'rm -rf report/'
                sh 'docker compose up api_test --abort-on-container-exit --build'
            }
            post { 
                always {
                    junit 'report/*.xml'
                }
            }
        }
        stage('5. UI testing') {
            steps {
                sh 'docker compose up ui_test --abort-on-container-exit --build'
            }
            post { 
                always {
                    robot archiveDirName: 'robot-plugin', outputPath: 'ui-test-report/', overwriteXAxisLabel: '', passThreshold: 100.0, unstableThreshold: 100.0
                }
            }
        }
    }
    post { 
        always { 
            sh 'docker compose down'
        }
    }
}
