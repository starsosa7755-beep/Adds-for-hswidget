# HSWidgets Studio — starter source (0.1.0)

This is an initial Theos bundle project intended to add a widget entry named **Create Widget** to the HSWidgets add-widget list.

## What this first version does
- Registers a widget bundle in `/Library/HSWidgets`.
- Uses `HSWidgetViewController` from the HSWidgets framework.
- Shows a simple native UIKit canvas placeholder.
- Declares HSWidgets as a required package dependency, so a package manager should refuse installation when HSWidgets is absent.

## Requirements
- A jailbroken iOS device (initial target: iOS 12 or later, arm64).
- Theos toolchain.
- HSWidgets development framework (`HSWidgets.framework`) installed in `$THEOS/lib`.
- HSWidgets installed on the target device.

The HSWidgets documentation explains that custom widgets are bundles loaded from `/Library/HSWidgets`, that their principal class must subclass `HSWidgetViewController`, and that the package dependency identifier is `com.dgh0st.hswidgets`.

## Build
From this directory, run:

```sh
make package
```

If your Theos environment uses a different SDK/toolchain, adjust `TARGET` in `Makefile`.

## Install
Install the generated `.deb` on a test device that already has HSWidgets installed. Then respring if the package manager does not automatically restart SpringBoard.

## Important scope note
This is a **starter widget**, not the complete visual editor yet. It creates the `Create Widget` entry in HSWidgets' widget picker and displays a placeholder canvas when added. The next milestone is to implement the editor UI and project persistence (native `.hsw` / `.hswp`, import/export, then KWGT compatibility).

The HSWidgets add-new options controller is a documented extension point (`HSWidgetAddNewOptionsControllerClass`). It should be used for the dedicated editor screen in a later milestone after its exact protocol methods and lifecycle are wired against the framework headers for the target HSWidgets version.

## Project structure

```text
HSWidgetsStudio-0.1.0/
├── control
├── Makefile
├── Resources/
│   └── Info.plist
├── src/
│   ├── HSWStudioWidgetViewController.h
│   └── HSWStudioWidgetViewController.m
└── README.md
```
