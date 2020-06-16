pipeline{
    agent any
    stages{
        stage('Lint HTML') {
            steps {
                sh 
                '''make install
                make lint'''
            }
        }
            
    }
    
}