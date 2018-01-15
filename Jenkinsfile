pipeline {
    agent none
    stages {
        stage('Build') {
            agent {
                docker { image 'golang:1.8' }
            }
            steps { 
                    git 'https://gist.github.com/69cad23cd08b069165985e9a5c6dbb18.git'
                    sh 'go build -v -o hello' 
            }
        }
    }
}
