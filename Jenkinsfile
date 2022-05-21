pipeline{
    agent{
        
            label 'docker'
        
    }
    stages{
        stage ('scm') {
            steps{
              
                   sh 'sudo docker container ls'
                    
            }
        stage ('build') {
            steps {
                sh 'sudo docker image build -t webserver'
            }

        }
        stage ('deploy') {
            steps {
                sh 'sudo docker container run -dit --name web -p 9000:80' webserver'
            }
        }
        }
    }
}
