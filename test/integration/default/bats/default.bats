#!/usr/bin/env bats
 
@test "Validate status code for varnish" {
  run curl -s -o /dev/null -w "%{http_code}" localhost:6081
  [[ $output = "503" ]]
}