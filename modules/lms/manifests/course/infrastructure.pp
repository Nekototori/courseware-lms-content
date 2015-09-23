class lms::course::infrastructure {
  include lms
  file {"${lms::code_dir}/environments":
    ensure  => directory,
    source  => 'puppet:///modules/lms/infrastructure/environments',
    recurse => true,
  }
}
