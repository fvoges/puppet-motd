pipeline {
  agent {
    docker {
      image 'ruby:2.5.1'
      args '-v=/etc/passwd:/etc/passwd'
    }
  }
  environment {
    PATH = "/opt/puppetlabs/bin:/opt/puppetlabs/puppet/bin:${env.PATH}"
  }
  stages {
    stage('Init') {
      steps {
        sh 'echo $PATH'
        sh 'bundle -v'
        sh 'rm Gemfile.lock || true'
        sh 'gem update --system'
        sh 'gem update bundler'
        sh 'gem --version'
        sh 'bundle -v'
        sh 'bundle install --without development'
        sh 'bundle exec rake -T'
      }
    }
    stage('Validate') {
      steps {
        sh 'bundle exec rake validate'
      }
    }
    stage('Unit Tests') {
      steps {
        sh 'bundle exec rake spec'
      }
    }
  }
}
