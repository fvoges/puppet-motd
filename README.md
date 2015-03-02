#motd

##Overview

This is a simple motd module for Puppet. It's heavily based on the example from puppetlabs-concat.

##Module Description

This module allows you to build /etc/mod 'in chunks'. So you can add content from different modules.

##License

Apache License, Version 2.0

## Usage

### Class: motd

This is a simple class that manages /etc/motd using puppetlabs-concat

#### Parameters

#####`motd_file`

   MOTD file. Default value: '`/etc/motd`'

#####motd_local_enabled

  If true, Puppet will append the contents of `/etc/motd.local`.
  The contents of `/etc/motd.local` are not managed by Puppet.

#####add_puppet_warning
  Adds a warning to the top of the MOTD ("${fqdn} is managed by Puppet").


### Defined type: `motd::fragment`

  Defined type to manage fragments of `/etc/motd`.

### Parameters

#####content

  Content of the fragment. Default value: $title.

#####order

  By default all files gets a 10_ prefix in the directory you can set it to anything else using this to influence the order of the content in the file

#### Examples

```Puppet
 class { motd:
   motd_local_enabled => false,
   add_puppet_warning => true,
 }

 motd::fragment { 'extra motd':
   content => "This will be addded to /etc/motd\n",
 }

 motd::fragment { 'extra motd':
   content => "This will be addded to /etc/motd\n",
 }

 motd::fragment { 'extra motd':
   content => template('some/template.erb'),
 }


```
##Contact
Federico Voges <fvoges@gmail.com>

##Support

Please log tickets and issues at our [Projects site](http://github.com/fvoges/fvoges-motd)
