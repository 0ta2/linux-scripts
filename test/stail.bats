#!/usr/bin/env bats

load test_helper.bash

@test "Display the stail option." {
  run ${HOME_DIR}/bin/stail -h
  [ "$status" -eq 0 ]
}

@test "There is no argument for file." {
  run ${HOME_DIR}/bin/stail -f
  [ "$status" -eq 1 ]
}

@test "Arguments that do not exist." {
  run ${HOME_DIR}/bin/stail -a
  [ "$status" -eq 1 ]
}
