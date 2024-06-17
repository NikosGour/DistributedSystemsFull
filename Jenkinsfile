
pipeline {
	agent any
	stages {
		// stage('Hello World') {
		// 	steps {
		// 		echo 'Hello World'
		// 	}
		// }
		stage('Get ansible playbooks'){
			steps {
				build job: 'ansible'
			}
		}

		stage('Get ansible roles'){
			steps {
				sh '''
					ansible-galaxy role install geerlingguy.docker
				'''
			}
		}

		stage('Playbook main_docker_compose.yaml') {
			steps {
				sh '''
					ansible-playbook -i ~/workspace/ansible/hosts.yaml ~/workspace/ansible/playbooks/main_docker_compose.yaml
				'''
			}
		}
}
