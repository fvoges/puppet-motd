pipeline {
  agent any
  environment {
    PATH = "/opt/puppetlabs/bin:/opt/puppetlabs/puppet/bin:${env.PATH}"
  }
  stages {
    stage('Puppet-4.10') {
      environment {
        PUPPET_VERSION = "~> 4.10"
        STRICT_VARIABLES = "yes"
      }
      parallel {
        stage('Ruby-2.5.1') {
          agent {
            docker {
              image 'ruby:2.5.1'
              args '-v=/etc/passwd:/etc/passwd'
            }
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
        stage('Ruby-2.4.4') {
          agent {
            docker {
              image 'ruby:2.4.4'
              args '-v=/etc/passwd:/etc/passwd'
            }
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
      }
    }
    stage('Puppet-5.3') {
      environment {
        PUPPET_VERSION = "~> 5.3"
        STRICT_VARIABLES = "yes"
      }
      parallel {
        stage('Ruby-2.5.1') {
          agent {
            docker {
              image 'ruby:2.5.1'
              args '-v=/etc/passwd:/etc/passwd'
            }
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
        stage('Ruby-2.4.4') {
          agent {
            docker {
              image 'ruby:2.4.4'
              args '-v=/etc/passwd:/etc/passwd'
            }
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
      }
    }
  }
}
