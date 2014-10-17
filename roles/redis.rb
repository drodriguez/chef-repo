name 'redis'
description 'This role configures redis'
run_list(
  "role[base]",
  "recipe[runit]",
  "recipe[redis2::default_instance]",
)

default_attributes(
  "redis2" => {
    "install_from" => "package",
  }
)
