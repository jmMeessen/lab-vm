#!/usr/bin/env bats

LOG_PREFIX="[Commons Tests]"

load "tests_helper"

@test "${LOG_PREFIX} The URL ${TESTS_URL} is reachable" {
  run curl -sSL ${CURL_OPTS} "${TESTS_URL}"
  assert_success
}

@test "${LOG_PREFIX} We have a reachable Jenkins" {
  run curl -sSL ${CURL_OPTS} "${TESTS_URL}/jenkins"
  assert_success
}
