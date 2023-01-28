<p align="center">
  <a href="https://github.com/hyiso/flutterw">
  <img src="https://raw.githubusercontent.com/hyiso/flutterw/main/docs/./assets/flutterw-logo.png" alt="Flutterw" /> <br /><br />
  </a>
  <span>Flutterw wraps flutter tool to support scripts and command hooks.</span>
</p>

<p align="center">
  <a href="https://github.com/hyiso/flutterw"><img src="https://img.shields.io/badge/maintained%20with-flutterw-27b6f6.svg" alt="Flutterw" /></a>
  <a href="https://github.com/invertase/melos"><img src="https://img.shields.io/badge/maintained%20with-melos-f700ff.svg" alt="Melos" /></a>
</p>


<p align="center">
  <a href="https://hyiso.github.io/flutterw">Documentation</a> &bull;
  <a href="https://github.com/hyiso/flutterw/blob/main/LICENSE">License</a>
</p>

## Why Flutterw

Flutter Tool is shipped with Flutter SDK every version with some changes. However, upgrading Flutter SDK version is not easy as projects maybe in production mode.

How to be benifited of the Flutter Tool changes without upgrading Flutter SDK is always confusing.
Also, the Flutter Tool does not give chance to do extra work during command running.

To solve these (and other related) problems, flutterw is created.

**Flutterw wraps flutter tool to support scripts and command hooks.**
**Hooks are pre, post and command scripts.**
**`pre` and `post` scripts enable you to do extra work before and after running command**
**and `command` scripts enable you to customize command behavior.**

## What can Flutterw do?

- Dispatch arguments to flutter tool when no command hook configured.
- `pre` scripts are executed before running command.
- `post` scripts are executed after running command.
- `command` scripts are executed to replace original command.
- Command scripts can be packages in [Pub](https://pub.dev/packages?q=flutterw)
  - packages created by flutterw author
    - example [flutterw_clean](https://pub.dev/packages/flutterw_clean)
  - packages created by other developers.
- Add custom to `flutterw`.

## Who is using Flutterw?

The following projects are using Flutterw:

- [flutterw](https://github.com/hyiso/flutterw)

## Install

```bash
dart pub global activate flutterw
```

## commands
Full commands list and args can be viewed by running flutterw -h.
```
> flutterw -h

flutterw wraps flutter with scripts and command hooks support

Usage: flutterw <command> [arguments]

Global options:
-h, --help    Print this usage information.

Available commands:
  help   Display help information for flutterw.

Run "flutterw help <command>" for more information about a command.

And use flutterw as flutter with scripts and command hooks support:
  flutterw doctor
  flutterw clean
  flutterw pub get
  ...
```

## README Badge

Using Flutterw? Add a README badge to show it off:

[![flutterw](https://img.shields.io/badge/maintained%20with-flutterw-27b6f6.svg)](https://github.com/hyiso/flutterw)

```markdown
[![flutterw](https://img.shields.io/badge/maintained%20with-flutterw-27b6f6.svg)](https://github.com/hyiso/flutterw)
```