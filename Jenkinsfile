node {
    docker.image('golang:1.8').inside {
        stage('Build app in container') {
            git 'https://gist.github.com/69cad23cd08b069165985e9a5c6dbb18.git'
            sh 'go build -v -o hello'
        }
    }
    stage('Build app Docker image') {
	git 'https://github.com/Feveria/golang-docker.git'
        def golangdemoimage = docker.build("golang-demo:${env.BUILD_ID}")
    }
    stage('Run Docker image in Minikube') {
	sh 'kubectl run golang-demo --image=golang-demo --port=8000'
	}
}
