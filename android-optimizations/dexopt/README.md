# Android Apps Runtime Optimization (dexopt)

## Why?
* Have you notice your phone drain badly after some installing updates or just formatted it? that is due to Android not triggering the optimization.

* This wasnt an issue on Android 6 and older as we were forced to optimization everytime you installed a new app and restarted.

## How to (no root required):
> Prepare your phone - 
1. Navigate to settings
2. Go to **System > About Phone > Build number**
3. Tap on **Build Number** 7 times or until you see the *You are now a developer* toast message.
4. Next, return to **System > Advanced > Developer options > Enable USB Debugging**
5. Connect your phone to your computer (use cable easier).
6. On your computer, enter the following command in a command prompt/terminal:
`adb shell cmd package bg-dexopt-job`


If you don't have adb installed [download here](https://developer.android.com/studio/releases/platform-tools)

## How to (root required):

1. Download [Material Terminal](https://play.google.com/store/apps/details?id=yarolegovich.materialterminal&hl=en&gl=US) or [Terminal Emulator](https://play.google.com/store/apps/details?id=jackpal.androidterm&hl=en&gl=US&pli=1) from Play Store.
2. Open the app.
3. Enter the following command (allow the app for root in your root application when it asked): `su -c "cmd package bg-dexopt-job"`
4. Just wait until it is completed by itself (on Android 10+ will display "Success", on Android 9 and older it will just start a new line)


## For More Info
* https://github.com/KelvinCrag/Optimizer