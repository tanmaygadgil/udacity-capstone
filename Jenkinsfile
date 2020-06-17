
pipeline{
    agent any
    stages{
        stage('setup') {
            steps {
                sh ''' 
                echo $PATH
                which python
                docker -v
                '''
            }
        }
        stage('Linting') {
            steps {
                sh ''' 
                echo $PATH
                source  ~/.devops/bin/activate
                make install
                make lint
                '''
            }
        }
        stage('Build Docker') {
            steps {
                sh 'docker -v'
                sh ''' 
                ./run_docker.sh
                '''
            }
        }
        stage('Upload Docker') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerCreds', passwordVariable: 'dockerCredsPassword', usernameVariable: 'dockerCredsUser')]){
                    sh "docker login -u ${env.dockerCredsUser} -p ${env.dockerCredsPassword}"
                    sh "docker tag udacity-capstone tanmaygadgil/udacity-capstone"
                    sh "docker push tanmaygadgil/udacity-capstone"
                }
            }
        }
        stage('Deploy Kubernetes') {
            steps {
                withAWS(credentials: 'aws-credentials', region: 'us-west-2'){
                    sh "aws eks --region us-west-2 update-kubeconfig --name udacity-capstone-cluster"
                    sh "kubectl apply -f aws_provision/aws-auth-cm.yml"
                    sh "kubectl apply -f aws_provision/deployment.yml"
                    sh "kubectl apply -f aws_provision/service.yml"
                    sh "kubectl set image deployments/udacity-capstone udacity-capstone=tanmaygadgil/udacity-capstone:latest"
                    sh "kubectl get deployment udacity-capstone"
                    sh "kubectl rollout status deployment udacity-capstone"
                    sh "kubectl get pods"
                    sh "kubectl get deployments"
                }
            }
        }

    }
            

}