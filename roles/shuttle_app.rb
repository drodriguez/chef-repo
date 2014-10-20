name 'shuttle_app'
description 'This role configures the machine to run the shuttle app dependencies'
run_list(
  "role[base]",
  "recipe[apt]",
)

default_attributes(
  "packages" => ["libarchive-dev"]
)
