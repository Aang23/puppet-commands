define commands::commands (
  $command            = undef,
  $path               = undef,
  $cwd                = undef,
) {

  if ! defined(Package[$title]) {
    exec { $title:
      command   => $command,
      path      => $path,
      cwd       => $cwd,
    }
  }
}
