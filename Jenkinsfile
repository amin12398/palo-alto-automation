pipeline {
    agent any

    stages {
        stage('Setup Python Env') {
            steps {
                bat '''
                call C:\\Users\\essao\\test-palo\\Scripts\\activate.bat
                where ansible-playbook
                '''
            }
        }

        stage('Run Ansible Playbook') {
            steps {
                bat '''
                call C:\\Users\\essao\\test-palo\\Scripts\\activate.bat
                ansible-playbook -i hosts.ini ikegateway.yml
                '''
            }
        }
    }
}
