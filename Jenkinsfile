pipeline {
    agent any 
    
    stages{
        stage("Clone Code"){
            steps {
                echo "Cloning the code"
                git url:"https://github.com/iamrajputakash/spring-petclinic.git", branch: "main"
            }
        }
         stage("Build"){
            steps {
                echo "Building the image"
                sh "docker build -t petclinicapp ."
            }
        }
