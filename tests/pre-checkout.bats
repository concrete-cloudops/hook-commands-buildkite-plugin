#!/usr/bin/env bats

load '/usr/local/lib/bats/load.bash'

# Uncomment the following line to debug stub failures
# export BUILDKITE_AGENT_STUB_DEBUG=/dev/tty

@test "Does nothing with the preCheckout parameter is not set" {
  stub buildkite-agent
  
  run "$PWD/hooks/pre-checkout"
  
  assert_success

  unstub buildkite-agent
}

@test "Runs specified command during hook" {
  export BUILDKITE_PLUGIN_HOOK_COMMANDS_PRECHECKOUT="echo Hello"

  stub buildkite-agent

  run "$PWD/hooks/pre-checkout"

  assert_success
  assert_output --partial "Hello"

  unstub buildkite-agent
}
