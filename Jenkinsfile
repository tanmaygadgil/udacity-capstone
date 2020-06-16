
pipeline{
    agent any
    stages{
        stage('Linting') {
            steps {
                sh ''' 
                make setup
                make install
                make lint
                '''
            }
        }
    }
            

}