
pipeline{
    agent any
    stages{
        def docker_hub = 'tanmaygadgil/udacity-capstone'
        stage('Linting') {
            steps {
                sh ''' 
                source  ~/.devops/bin/activate
                make install
                make lint
                '''
            }
        }
        stage('Build Dcoker') {
            steps {
                sh ''' 
                ./run_docker.sh
                '''
            }
        }
        stage('Upload Docker') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerCreds', passwordVariable: 'dockerCredsPassword', usernameVariable: 'dockerCredsUser')]){
                    sh "docker login -u ${env.dockerCredsUser} -p ${env.dockerCredsPassword}"
                    sh "docker push tanmaygadgil/udacity-capstone"
                }
            }
        }
    }
            

}