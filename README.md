<h1 align=center>Flutter on Codespaces ❤</h1>

## Device on which codespace is running is:
- run the following command - `flutter devices`
- Linux (desktop) . linux . linux-x64 . Debian GNU/Linux 11 (bullseye) 5.15.0-1041-azure

### To keep the content in the safe area
> safe area: the area other than the place where icons like - signal, wifi, notification, notch, etc live.

use `SafeArea` widget

### space between Containers 
- use `SizedBox()` widget

### stretch container to fill entire available space

1. use `crossAxisAlignment.stretch`

2. using height/width 
- `height: double.infinity` (for Column Widget)
- `width: double.infinity` (for Row Widget)

---