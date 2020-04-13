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
        stage('Ruby-2.5.7') {
          agent {
            docker {
              image 'ruby:2.5.7'
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
    stage('Puppet-6.13') {
      environment {
        PUPPET_VERSION = "~> 6.13"
        STRICT_VARIABLES = "yes"
      }
      parallel {
        stage('Ruby-2.5.7') {
          agent {
            docker {
              image 'ruby:2.5.7'
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
