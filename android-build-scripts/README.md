# DarknessKiller's Android Build Scripts

## Why?
* Keep track of packages used for android build enviroment.
* Deprecated old text file based build enviroment configuration.
* Deprecated all unused commands.

## Having limited space for repo sync?
* 1) Add `--depth=1` at the back of your repo init command.
* 2) Execute this commmand. `repo sync  -f --force-sync --no-clone-bundle --no-tags -j$(nproc --all)`
* 3) Enjoy...

## How to use Ccache for faster build time on reoccuring builds
* `export USE_CCACHE=1`