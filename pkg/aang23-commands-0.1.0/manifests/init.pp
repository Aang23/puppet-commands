# == Class: commands
#
# This reads hiera information to execute commands
#
# === Parameters
#
# See https://docs.puppetlabs.com/references/latest/type.html#package
#
# === Variables
#
# === Examples
#
#  class { ::commands: }
#
# === Authors
#
# Aang23
#

class commands {

  $defaults = {
    'command' => '',
    'cwd'     => '/',
    'path'    => '/bin',
  }

  $commands = hiera_hash('commands::commands')

  if $commands {
    validate_hash($commands)
    create_resources('commands::commands', $commands, $defaults)
  }
}
