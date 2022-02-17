pipeline {
    agent any
    triggers {
        pollSCM(* * * * *)
    }

     stages {

         stage('Checkout'){
             steps{
                 git credentialsId: '6fe59273-53f3-4b8b-a886-1ca1511919fd', url: 'https://github.com/ankushchauhan9/TestingJenkins.git'
             }
         }
        stage('Gradle Build') {
            steps {
                bat 'gradlew clean build'
            }
            post {
                always{
                    junit 'build/test-results/test/*.xml'
                    archiveArtifacts 'build/libs/*.jar'
                }
            }
        }
	}

}
