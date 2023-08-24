pipeline {
    agent any

    environment {
        DOCKER_IMAGE_NAME = "mydemoapp"
        CONTAINER_NAME = "mydemocontainer"
	      BUILD_NUMBER = 1.1
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${DOCKER_IMAGE_NAME}:${BUILD_NUMBER}", "-f Dockerfile .")
                }
            }
        }

        stage('Deploy Docker Container') {
            steps {
                script {
                    docker.run("${DOCKER_IMAGE_NAME}:${BUILD_NUMBER}", "--name ${CONTAINER_NAME} -d -p 8087:8080")
                }
            }
        }
    }
    }
}
