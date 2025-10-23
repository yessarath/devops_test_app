pipeline {
    agent any
//    triggers {
//        pollSCM('*/5 * * * *')
//    }
    stages {
        stage('Checkout') {
        		
            steps {
            	checkout scmGit(branches: [[name: '*/feature-*']], extensions: [[$class: 'RelativeTargetDirectory', relativeTargetDir: 'src']], userRemoteConfigs: [[credentialsId: '', url: 'https://github.com/yessarath/devops_test_app.git']])
            }
                        
        }
        stage('Terraform Initialization') {
        		
            steps {
		sh 'terraform init'
            }
                        
        }
        stage('Terraform Plan') {
        		
            steps {
		sh 'terraform plan'
            }
                        
        }
        stage('Terraform Apply') {
        		
            steps {
		sh 'terraform apply --auto-approve'
            }
                        
        }
   }
}
