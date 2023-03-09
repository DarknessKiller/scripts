# Android System Cache Cleaning

## Why?
* Sometimes after updated your phone system or modified your phone system. has it cause some kind of random problems (E.g while sharing a file. you click on Facebook, but it bring you to another app...)
* Or system being unresponsive, you can clear system cache in attempt to fix it.

## How to (root required):

1. Download [Material Terminal](https://play.google.com/store/apps/details?id=yarolegovich.materialterminal&hl=en&gl=US) or [Terminal Emulator](https://play.google.com/store/apps/details?id=jackpal.androidterm&hl=en&gl=US&pli=1) from Play Store.
2. Open the app.
3. Enter the following command (allow the app for root in your root application when it asked): `su -c "rm -rf /data/system/package_cache"`
4. Just wait until it it start a new line
5. Restart & Enjoy