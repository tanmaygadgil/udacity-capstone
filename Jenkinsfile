
pipeline{
    agent any
    stages{
        stage('Linting') {
            steps {
                sh ''' 
                brew install hadolint
                source  ~/.devops/bin/activate
                make install
                make lint
                '''
            }
        }
    }
            

}