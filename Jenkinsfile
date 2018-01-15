node {
    docker.image('golang:1.8').inside {
        stage('Build App') {
            git 'https://gist.github.com/69cad23cd08b069165985e9a5c6dbb18.git'
            sh 'go build -v -o hello'
        }
    }
    stage('Build Docker Image') {
	git 'https://github.com/Feveria/golang-docker.git'
        def golangdemoimage = docker.build("golang-demo")
    }
}
