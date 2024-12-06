pipeline {
    agent any
 
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_REGION = 'us-east-1'
        ECR_REPO_URL = '1116981771758.dkr.ecr.us-east-1.amazonaws.com/flask-app-repo'
        IMAGE_TAG = 'latest'
    }
 
    stages {
        stage('Build and Push to ECR') {
            steps {
                ansiblePlaybook(
                    playbook: 'build_and_push_to_ecr.yml',
                    extraVars: [
                        aws_region       : "${AWS_REGION}",
                        ecr_repository_url: "${ECR_REPO_URL}",
                        image_tag         : "${IMAGE_TAG}"
                    ]
                )
            }
        }
 
        stage('Deploy to EKS') {
            steps {
                ansiblePlaybook(
                    playbook: 'deploy_to_eks.yml',
                    extraVars: [
                        ecr_repository_url: "${ECR_REPO_URL}",
                        image_tag         : "${IMAGE_TAG}"
                    ]
                )
            }
        }
    }
}