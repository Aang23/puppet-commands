define commands::commands (
  $command            = undef,
  $path               = undef,
  $cwd                = undef,
  $provider           = undef,
  $refresh            = undef,
  $refreshonly        = undef,
  $returns            = undef,
  $timeout            = undef,
  $tries              = undef,
  $try_sleep          = undef,
  $umask              = undef,
  $unless             = undef,
  $user               = undef,
  $environment        = undef,
  $group              = undef,
  $logoutput          = undef,
  $onlyif             = undef,
) {

  if ! defined(Package[$title]) {
    exec { $title:
      command     => $command,
      path        => $path,
      cwd         => $cwd,
      environment => $environment,
      group       => $group,
      logoutput   => $logoutput,
      onlyif      => $onlyif,
      provider    => $provider,
      refresh     => $refresh,
      refreshonly => $refreshonly,
      returns     => $returns,
      timeout     => $timeout,
      tries       => $tries,
      try_sleep   => $try_sleep,
      umask       => $umask,
      unless      => $unless,
      user        => $user,
    }
  }
}
