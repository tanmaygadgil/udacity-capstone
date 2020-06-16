
pipeline{
    agent any
    stages{
        stage('Linting') {
            steps {
                sh ''' 
                source source ~/.devops/bin/activate
                make install
                make lint
                '''
            }
        }
    }
            

}