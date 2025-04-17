pipeline {
    agent {
        label "agent"
    }

    stages {    
        stage('Run') {
            steps {
                container('buildah') {
                    sh 'buildah build -t android-build .'
                    sh 'buildah run $(buildah from android-build) -- bash -c "cd /app && ./docker-entrypoint.sh"'
                }
            }
        }
    }
}