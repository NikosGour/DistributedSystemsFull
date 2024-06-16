
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

		stage('Update git submodules'){
			steps {
				sh '''
					git submodule update --init --recursive
				'''
			}
		}

		stage('Docker compose build'){
			steps {
				sh '''
					docker compose build
				'''
			}
		}

		stage('Docker compose down previous'){
			steps {
				sh '''
					docker compose down
				'''
			}
		}

		stage('Docker compose up'){
			steps {
				sh '''
					docker compose up -d
				'''
			}
		}
	}
}
