A Magisk Module that sets `ro.build.type` to `user`.

LineageOS builds its ROM as `userdebug`. However, Android Studio Assumes that devices with non-user build type have `su` executable when using APP Inspector and Layout Inspector.

This module simply sets `ro.build.type` to `user` as workaround.

Only tested on Pixel 4 XL, lineage_coral-userdebug 15.

See: https://issuetracker.google.com/issues/188953817

Inspired by https://github.com/Magisk-Modules-Alt-Repo/ezme-nodebug
