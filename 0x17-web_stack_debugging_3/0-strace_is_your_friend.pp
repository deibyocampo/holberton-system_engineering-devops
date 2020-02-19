# Apuppet script that resolves why apache is returning a 500 error
$settings = '/var/www/html/wp-settings.php'
file { $settings:
  ensure => present,
}
exec { 'edit file':
  command => "sed -i 's/.phpp/.php/' ${settings}",
  path    => [ '/usr/local/bin/', '/bin/' ]
}
