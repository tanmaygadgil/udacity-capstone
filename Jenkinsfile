
pipeline{
    agent any
    stages{
        stage('setup') {
            steps {
                sh ''' 
                sh PATH = $PATH:/anaconda3/bin:/anaconda3/bin:/Users/tgadgil001/anaconda3/bin:/anaconda3/bin:/anaconda3/bin:/anaconda3/bin:/Users/tgadgil001/Downloads/google-cloud-sdk/bin:/anaconda3/bin:/anaconda3/bin:/Users/tgadgil001/anaconda3/bin:/Library/Frameworks/Python.framework/Versions/3.5/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

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
        stage('Build Dcoker') {
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
                    sh "docker push tanmaygadgil/udacity-capstone"
                }
            }
        }
    }
            

}