
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
