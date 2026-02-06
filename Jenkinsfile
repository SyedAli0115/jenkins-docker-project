pipeline {
    agent any

    environment {
        IMAGE_NAME = "sheeeeeeeeeeeeeeeeeeeeeeeeeeep/project-pipeline"
        IMAGE_TAG  = "latest"
    }

    stages {
        stage('Syed Ali - Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME:$IMAGE_TAG .'
            }
        }
        stage('Syed Ali - Login to DockerHub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-cred', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    sh '''
                    export DOCKER_CONFIG=/var/lib/jenkins/.docker
                    mkdir -p $DOCKER_CONFIG
                    echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin
                    '''
                }
            }
        }
        stage('Syed Ali - Push Image to Dockerhub') {
            steps {
                sh 'docker push sheeeeeeeeeeeeeeeeeeeeeeeeeeep/project-pipeline:tagname'
            }
        }
    }
}