
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
	}
}
