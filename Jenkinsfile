podTemplate(yaml: '''
    apiVersion: v1
    kind: Pod
    spec:
      containers:
      - name: jnlp
        image: jenkins:agent-jdk21
#      - name: trivy
#        image: 058264170697.dkr.ecr.ap-south-1.amazonaws.com/jenkins:trivy-0.49.1
#        command:
#        - sleep
#        args:
#        - 9999999
#      - name: kaniko
#        image: 058264170697.dkr.ecr.ap-south-1.amazonaws.com/jenkins:kaniko-debug
#        command:
#        - sleep
#        args:
#        - 9999999
#        volumeMounts:
#        - name: kaniko-secret
#          mountPath: /kaniko/.docker
#      serviceAccount: jenkins-admin
#      restartPolicy: Never
#      volumes:
#      - name: kaniko-secret
#        secret:
#            secretName: regcred
#            items:
#            - key: .dockerconfigjson
#              path: config.json
''') {

  // properties([
  //     parameters([
  //         string(name: 'NAMESPACE', defaultValue: 'gems2', description: 'Kubernetes namespace'),
  //        string(name: 'DEPLOYMENT_NAME', defaultValue: 'usermanagement-deployment', description: 'Application deployment name')
  //     ])
  // ])

node(POD_LABEL) {
    
    // environment{
    // REGISTRY = "058264170697.dkr.ecr.ap-south-1.amazonaws.com/jenkins"
    // }
    
    stage('checkout SCM') {
      git url: 'https://github.com/rahulv2367/simplecode.git', branch: 'main'
      container('jnlp') {
          sh '''
            ls
          '''
      }
    }
    
    // stage('Build and Push Artifacts') {
    //   container('jnlp') {
    //       configFileProvider([configFile(fileId: 'f6f4cf8c-90e5-42e4-84ae-4084e175a09e', variable: 'MavenCustomSettings')]) {
    //           script {
    //                     // generate a new authorization token with the access and secret key
    //                     env.CODEARTIFACT_AUTH_TOKEN = sh (script: 'aws codeartifact get-authorization-token --domain gati-allcargo --domain-owner 058264170697 --region ap-south-1 --query authorizationToken --output text',returnStdout: true).trim()
    //                 }
    //           sh '''
    //           mvn -s $MavenCustomSettings clean install -DskipTests=true
    //           mvn -s $MavenCustomSettings clean deploy -DskipTests=true
    //           '''
    //     }
    //   }
    // }
    
    //  stage('Code Scan') {
    //    container('jnlp') {
    //        withSonarQubeEnv() {
    //        sh "mvn clean verify sonar:sonar -Dsonar.projectKey=gems2.0 -Dsonar.projectName='gems2.0'"
    //  }
    //    }
    //  }
    
    //  stage('Build Image') {
    //    container('kaniko') {
    //        sh '''
    //          /kaniko/executor --context $WORKSPACE --tarPath image.tar --no-push --destination image
    //          ls
    //        '''
    //    }
    //  }
    
    //  stage('Vulnerability Scan') {
    //    container('trivy') {
          
    //      sh '''
    //        apk add --no-cache wget
    //        wget https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/html.tpl
    //        mkdir -p reports
    //        trivy image --input image.tar --severity CRITICAL --format template --template @./html.tpl -o reports/report.html
    //      '''
    //      publishHTML(target: [
    //      allowMissing: true,
    //      alwaysLinkToLastBuild: true,
    //      keepAll: true,
    //      reportDir: 'reports',
    //      reportFiles: 'report.html',
    //      reportName: 'Trivy Scan',
    //      reportTitles: 'Trivy Scan'
    //      ])
        
    //     // script {
    //     //     def trivyCommand = 'trivy image --input image.tar --exit-code 1 --severity CRITICAL'
    //     //     def exitCode = sh(script: trivyCommand, returnStatus: true)
    //     //     if (exitCode != 0) {
    //     //         error("Trivy scan failed with CRITICAL vulnerabilities. Please check the scan report for details.")
    //     //     } else {
    //     //         echo "Trivy scan completed successfully."
    //     //     }
    //     // }
    //     }
    //   }

    //  stage('Push Image') {
    //    container('kaniko') {
    //        sh '''
    //          /kaniko/executor --context $WORKSPACE --destination 058264170697.dkr.ecr.ap-south-1.amazonaws.com/gems2.0:gems2.0-${BUILD_NUMBER}
    //        '''
    //    }
    //  }

     
    
    //  stage('Deploy') {
    //    container('jnlp') {
    //        withAWS(roleAccount:'058264170697', role:'jenkinsServiceAccountRole') {
    //            withAWS(roleAccount:'058264376926', role:'jenkins-dev-execution-role') {
    //              sh "aws sts get-caller-identity"
    //              sh "aws eks update-kubeconfig --name gem2-dev-eks-cluster --region ap-south-1"
    //             //  sh "kubectl delete deployment usermanagement-deployment -n ${params.NAMESPACE}"
    //              sh "kubectl apply -f templates/. -n ${params.NAMESPACE}"
    //             //  sh "kubectl describe pod usermanagement-deployment-cd4467869-g46xp -n ${params.NAMESPACE}" 
    //             //  sh "kubectl describe pod usermanagement-deployment-cd4467869-nctwt -n ${params.NAMESPACE}"
    //             //  sh "kubectl logs usermanagement-deployment-cd4467869-nctwt"
    //             //  sh "kubectl logs usermanagement-deployment-cd4467869-g46xp"
    //             //  sh "kubectl set image deployment/${params.DEPLOYMENT_NAME} springboot-app=058264170697.dkr.ecr.ap-south-1.amazonaws.com/gems2.0:gems2.0-${BUILD_NUMBER} -n ${params.NAMESPACE}"
    //              sh "kubectl get secret,pods,svc,deployment -n ${params.NAMESPACE}"
    //              sh "kubectl get ns"
    //             //  sh "kubectl rollout status deployment/${params.DEPLOYMENT_NAME} -n ${params.NAMESPACE}"
    //          }
    //      }
    //   }
    //  }

  }
}
