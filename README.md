# PyQCefView

PyQCefView is a simple Python binding for [QCefView](https://github.com/CefView/QCefView)

## Build & install

General prerequisites
- Python 3.8+ (or your project's target Python)
- CMake, a C/C++ compiler toolchain (MSVC on Windows, Xcode on macOS, gcc/clang on Linux)
- pip, virtualenv

### Get the source

```sh
git clone --recursive https://github.com/skylerlee/PyQCefView.git
```

### Build from source

- Build QCefView (C++ library)

  Follow the official QCefView build instructions:
  [QCefView - Build and Config](https://cefview.github.io/QCefView/md_docs_201-_build_and_config.html)

- Install build tools

```sh
pip install -r requirements-dev.txt
```

## License

The MIT License.
