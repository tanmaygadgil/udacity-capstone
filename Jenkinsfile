
pipeline{
    agent any
    stages{
        stage('Linting') {
            steps {
                sh ''' 
                make install
                make lint
                '''
            }
        }
    }
            

}