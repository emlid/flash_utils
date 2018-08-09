# Flasher utilities

> A set of auxiliary classes for flashing devices

***

## Contains

+ Flashing
+ CRC
+ Stopwatch

## Supported OS

Cross-platform

## Build

### C++

The project is written on ```C++14```

### Compiler

| OS | Requirements |
| ------ | ------ |
| **Linux** | `g++5` or higher, 64 bit |
| **Windows** | [msvc2015](http://www.visualstudio.com/downloads/download-visual-studio-vs#d-express-windows-desktop), 32 bit |
| **OSX** | `clang++`, 64 bit |

### Dependencies

#### Qt

+ Download the [Qt installer](http://www.qt.io/download-open-source)
+ You need to install `Qt 5.9.4` or higher, and following packages:
  + Qt Core for your compiler (msvc2015/g++/clang++)

### Make

+ From directory with project (use shadow build), type in terminal:
  + sh
    ```bash
    cd ..
    mkdir devlib-build
    cd devlib-build
    qmake "../flash_utils/flash_utils.pro"
    make
    ```

  + pwsh (PowerShell)
    ```bash
    cd ..
    mkdir devlib-build
    cd devlib-build
    qmake "..\flash_utils\flash_utils.pro"
    jom.exe
    ```

+ **Note**: By default ``qmake`` locates in ``[QTPATH]/[QTVERSION]/[COMPILER]/bin``. For example ```~/Qt/5.9.1/clang_64/bin/qmake```. On Windows, instead of make you can use ```jom.exe``` which installs with msvc compiler.

+ **ccache**: For building with ccache add `QMAKE_CXX='ccache $${QMAKE_CXX}'` to the end of qmake or QtCreator build kit

## Build configuration

By default the project builds only ``utils`` library.

### Options

+ ``FUTILS_INCLUDE_TESTS`` - enable ``tests`` build
  Example:

  ```bash
    qmake CONFIG+=FUTILS_INCLUDE_TESTS
  ```
