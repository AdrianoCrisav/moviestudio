# VeShim — AOSP Movie Studio Port

A port of the AOSP Movie Studio (Holo UI) to modern Android.

## Description

Movie Studio for HoloROM. HoloROM is not released yet; this repo publishes (with permission) its code ahead of time.

## Features

Original features (trim, merge, transitions, titles, export) plus H.264/HEVC export, ~20 filters, animated text, photo/video layers (chroma key, opacity, volume), split, speed, reverse, freeze frame, volume curve, crop and rotate, undo/redo (layers only).

## Build

Android Studio (AGP 8.5.2, Gradle 9.6.0, bundled JDK). `patch/apktool.jar` (3.0.3) is included.

```
./gradlew buildPatched     # builds VideoEditor_patched.apk
./gradlew installPatched   # build + adb install
```

Options: `-Pserial=<serial>`, `-Pfresh` (uninstall first), `-Pkeystore -Pkspass -Pksalias` (custom signing, debug key by default).

## Layout

* `app/src/main/java/android/media/videoeditor` — shim
* `patch/ve` — decoded original APK (smali and resources)
* `patch/tool/VePatch.java` — source of `patch/vepatch.jar`, which does the packaging

## License

[Apache License 2.0](LICENSE), AOSP-derived code; see [NOTICE](NOTICE). Unofficial port, not affiliated with Google.
