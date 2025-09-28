# PyQCefView

PyQCefView is a simple Python binding for [QCefView](https://github.com/CefView/QCefView)

## Dependencies

This project depends on:

- **QCefView v1.2.0**
  You must build and provide the QCefView C++ library version 1.2.0.
  See: [QCefView v1.2.0 Release](https://github.com/CefView/QCefView/tree/v1.2.0)

- **Chromium 126.0.6478.183**
  QCefView v1.2.0 is based on Chromium version 126.0.6478.183.
  See: [Chromium source](https://github.com/chromium/chromium/tree/126.0.6478.183)

Please ensure you use the correct versions of both QCefView and Chromium for compatibility with PyQCefView.

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

- Build & install the PyQCefView (Python wrapper)

```sh
sip-install --cef-incdir=<QCEFVIEW_INCLUDE_DIR> --cef-libdir=<QCEFVIEW_OUTPUT_DIR> --cef-lib=QCefView [--verbose]
```

- If you want to use the package in another project, you can build the wheel file

```sh
sip-wheel --cef-incdir=<QCEFVIEW_INCLUDE_DIR> --cef-libdir=<QCEFVIEW_OUTPUT_DIR> --cef-lib=QCefView [--verbose]

pip install qcefview-*.whl
```

### Run the example

```sh
python examples/demo.py
```

## License

The MIT License.
