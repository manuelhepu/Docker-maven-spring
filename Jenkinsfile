pipeline {
    agent any

    
    stages {
        
        stage('Build') {
            steps {
                withGradle {
                    sh 'chmod +x ./gradlew'
                    sh './gradlew assemble'

                }
            }

            post {
                success {
                    archiveArtifacts 'build/libs/*.jar'
                }
            }

        }
        





       

        }
    }
}
