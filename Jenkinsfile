pipeline {
    agent any
    stages {
        stage('Build the mysql docker image') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerHubCreds') {
                        def image = docker.build('jwuebblz/mysql:latest')
                        image.push()
                    }
                }
            }
        }
    }
}
