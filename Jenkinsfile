pipeline {
    agent any

    stages {
        stage('Install System Tools') {
            steps {
                sh '''
                    set -e
                    echo "Updating packages..."
                    sudo apt-get update -y
                    sudo apt-get install -y git
                '''
            }
        }
    }
}
