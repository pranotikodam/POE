pipeline {
    environment
    {
        registry = "pranoti15/poeimage"
        registryCredential ="dockerid"
        dockerImage = ' '
    }
    agent any
    
    stages
    {
        stage('Build Image')
        {
            steps
            {
                script
                {
                    dockerImage = docker.build registry + "$BUILD_NUMBER"
                }
            }
        }
        stage('Deploy Image')
        {
            steps
            {
                script
                {
                    docker.withRegistry('',registryCredential)
                    {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}
