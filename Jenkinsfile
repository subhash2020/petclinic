pipeline{
    agent any
    tools{
        maven 'maven-3.9.5'
    }
    environment{
        cred=credentials('docker_hub')
    }
    stages{
        stage('git checkout'){
            steps{
            git branch: 'main', changelog: false, poll: false, url: ' https://github.com/spring-projects/spring-petclinic'
            }
        }
        stage('build'){
            steps{
                sh 'mvn clean package'
            }
        }
        stage('Build image using dockerfile and upload it in dockerhub'){
            steps{
                sh '''
                cp -r /var/lib/jenkins/workspace/petclinic/target/*.jar .
                cat <<EOF> Dockerfile
                docker build . -t subhashdocker2020/petclinic:latest
                '''
            }
        }
        stage('push image to dockerhub'){
            steps{
                sh'''
                echo ${cred_PSW} | docker login -u ${cred_USR} --password-stdin
                docker push subhashdocker2020/petclinic:latest
                '''
            }
        }
        stage('Deploy the application'){
            steps{
                sh '''
                 kubectl apply -f mysqldb.yaml
                 kubectl apply -f main.yaml
                '''
            }
        }
    }
}
