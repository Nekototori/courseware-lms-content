include docker
package {'beaker':
  ensure   => present,
  provider => 'gem',
}
package {['zlib-devel','gcc-c++','libstdc++-devel']:
  ensure => present,
  before => Package['beaker']
}
