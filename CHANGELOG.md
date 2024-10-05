
2.0.0 / 2020-04-13
==================

  * update docs
  * update dependencies verions
  * update class to use better data type
  * update fixture to use latest forge module versions
  * add pdk tuning
  * remove Gemfile.lock for PDK compatibility
  * update Jenkins test to match PDK
  * convert to PDK and drop support for Puppet 3.x
  * Merge pull request #16 from fvoges/2.x
  * Merge branch 'master' into 2.x
  * Merge pull request #19 from fvoges/update
  * add parallel stages
  * bump ruby to 2.5.1
  * Merge branch 'master' into update
  * Merge branch 'update' of github.com:fvoges/fvoges-motd into update
  * ignore .DS_Store files
  * [blacksmith] Bump version to 2.0.0
  * update supported puppet/ruby versions
  * convert to puppet 4 including puppet strings docs
  * Merge pull request #15 from fvoges/fix_unit_tests
  * fix broken unit tests for Puppet < 4.9.0
  * Merge pull request #14 from fvoges/jenkinsfile
  * Add Jenkinsfile
  * [blacksmith] Bump version to 2.0.0
  * update supported puppet/ruby versions
  * convert to puppet 4 including puppet strings docs
  * Merge pull request #13 from fvoges/maintenance
  * (maint) Cleanup tests
  * (maint) Update all gems
  * (maint) Update puppet version to 4.10
  * (maint) Cleanup Rakefile
  * Merge pull request #12 from fvoges/fix_travis
  * remove .z from version ruby version in travis config as recommended by Travis
  * add warning about drop of puppet 3 support in 2.x
  * change class and defined type to use Puppet 4 data types instead of stdlib for input validation
  * remove Puppet 3.x support
  * [blacksmith] Bump version to 1.0.4

v1.0.3 / 2017-04-03
==================

  * update spec tests to use rspec-puppet-facts
  * add rspec-puppet-facts ruby gem
  * update changelog

v1.0.2 / 2017-04-03
===================

  * fix README formatting
  * update ruby gems
  * add 4.9.0 to test matrix
  * bump default puppet to v4.9.x

v1.0.1 / 2016-12-17
===================

  * Merge pull request #10 from fvoges/remove_rubies
  * Remove all Ruby versions from test matrix except 2.1
  * Merge pull request #7 from fvoges/fix_travis_ci_badge
  * Merge branch 'master' into fix_travis_ci_badge
  * Update issue tracker URL
  * Merge pull request #4 from fvoges/updates
  * Merge pull request #9 from fvoges/update_contributing_rules
  * Update Travis CI badge URL
  * Update contributing rules
  * Merge pull request #8 from fvoges/remove_ruby_193
  * remove Ruby 1.9.3 fromtest matrix
  * test
  * Fix README
  * Update Travis CI configuration
  * Update metadata
  * Change GitMagic rule to require ubjects to start with upper case
  * Merge branch 'master' into updates
  * Merge pull request #5 from gitmagic-bot/master
  * add contributing.json file (https://gitmagic.io/rules)
  * Update Changelog.md
  * Update metadata
  * Add coverage report to rspec tests
  * Merge pull request #3 from fvoges/features/source_attribute

n.n.n / 2017-04-03
==================

  * [blacksmith] Bump version to 1.0.3

v1.0.1 / 2016-04-07
==================

  * Update metadata
  * Add coverage report to rspec tests

v1.0.0 / 2016-03-06
===================

  * Fix travis matrix configuration
  * Rename tests -> examples following current recommendations
  * Add gem caching
  * Update ruby/puppet versions exclusions
  * Tighter Puppet/PE compatibility strings
  * Update gems
  * Update travis CI config
  * Update define type documentation
  * Bump version and improve deps specification
  * Add source attribute
  * No need specify FUTURE_PARSER=yes for 4.x (D'oh!)
  * Adding more puppet versions
  * Testing new travis ci infra

0.3.0 / 2015-03-26
==================

  * Removed tests for old ruby/puppet versions
  * Disabling all the hiera spec helper stuff (not needed and causing issues with Travis-ci)
  * Adding some extra facts to make the spec tests work with strict variables turned on
  * Some gems were in the wrong place and causing travis-ci build failures
  * typo
  * First pass at adding spec tests
  * concat::target no longer uses the ensure attribute to specify the fragment content
  * motd::fragmet nows includes main class to ensure that it's in the catalog
  * Added Travis-CI badge

0.2.2 / 2015-03-02
==================

  * Version 0.2.2
  * Fixed minor issues with formatting

0.2.1 / 2015-03-02
==================

  * Version 0.2.1
  * Some minor cosmetic changes to README.md
  * Improved docs
  * Added more documentation

0.2.0 / 2015-02-25
==================

  * Moved to metadata.json
  * Added pkg to .gitignore (we don't want the packaged module in the repo)
  * Fixing puppet-lint warnings

0.1.0 / 2014-05-09
==================

  * Fixed typo
  * Added stdlib dependency
  * Initial commit
