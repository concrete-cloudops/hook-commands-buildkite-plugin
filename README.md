# Hook Commands Buildkite Plugin

Runs specified commands during hooks

## Example

Add the following to your `pipeline.yml`:

```yml
steps:
  - command: ls
    plugins:
      - concrete-cloudops/hook-commands#v1.0.3:
          preCheckout: echo "Doing that"
          preCommand: pwd
          postCommand: echo "Doing this"
```

## Configuration

### `preCheckout` (Optional, string)

Command to run during the pre-checkout hook.

### `preCommand` (Optional, string)

Command to run during the pre-command hook.

### `postCommand` (Optional, string)

Command to run during the post-command hook.

## Developing

To run the tests:

```shell
docker-compose run --rm tests
```

## Contributing

1. Fork the repo
2. Make the changes
3. Run the tests
4. Commit and push your changes
5. Send a pull request
