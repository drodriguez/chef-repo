name 'elasticsearch'
description 'This role configures elasticsearch'
run_list(
  "role[base]",
  "recipe[java]",
  "recipe[elasticsearch]",
)

default_attributes(
  "java" => {
    "install_flavor" => "openjdk",
    "jdk_version" => "7"
  }
)
