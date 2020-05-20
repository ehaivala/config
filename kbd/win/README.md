# Custom US International Layout for Windows

The adjacent `US_semi_international.klc` file is a customized US International
keyboard layout source file for Windows.

The layout tries to be mostly indistinguishable from regular US layout with
following additions:

Key combination | Result
----------------|-------
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>`</kbd> | §
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>1</kbd> | ¹
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>2</kbd> | ²
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>3</kbd> | ³
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>4</kbd> | £
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>5</kbd> | €
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>6</kbd> | ¼
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>7</kbd> | ½
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>8</kbd> | ¾
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>9</kbd> | ` (dead key, combinations with AEIOU)
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>0</kbd> | ´ (dead key, combinations with AEIOU)
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>E</kbd> | €
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>Q</kbd> | ä (Ä with <kbd>Shift</kbd>)
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>W</kbd> | å (Å with <kbd>Shift</kbd>)
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>O</kbd> | °
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>P</kbd> | ö (Ö with <kbd>Shift</kbd>)


## Installation

Install Microsoft's free Keyboard Layout Creator (MSKLC) tool:

https://support.microsoft.com/help/823010/the-microsoft-keyboard-layout-creator

Steps to build and install the layout:

1. Open the file in MSKLC with `File` -> `Open Source File...`.
2. Build the layout with `Project` -> `Build DLL and Setup Package`
3. Open the build directory (defaults to `C:\Users\<user>\Documents\eh-us-in`)
4. Run `setup.exe`
5. Sign out and sign back in
