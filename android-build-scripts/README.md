# DarknessKiller's Android Build Scripts

## Why?

- Keep track of packages used for the Android build environment.
- Deprecate old text file-based build environment configuration.
- Deprecate all unused commands.

## Having limited space for repo sync?

1. Add `--depth=1` at the end of your `repo init` command.
2. Execute this command: `repo sync -f --force-sync --no-clone-bundle --no-tags -j$(nproc --all)`
3. Enjoy...

## How to use Ccache for faster build time on recurring builds

- Set the environment variable: `export USE_CCACHE=1`
