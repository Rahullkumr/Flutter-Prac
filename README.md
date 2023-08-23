<h1 align=center>Flutter on Codespaces ❤</h1>

## Device on which codespace is running is:
- run the following command - `flutter devices`
- Linux (desktop) . linux . linux-x64 . Debian GNU/Linux 11 (bullseye) 5.15.0-1041-azure

### 1. To keep the content in the safe area
> safe area: the area other than the place where icons like - signal, wifi, notification, notch, etc live.

use `SafeArea` widget

### 2. space between Containers 
- use `SizedBox()` widget

### 3. stretch container to fill entire available space

1. use `crossAxisAlignment.stretch`

2. using height/width 
- `height: double.infinity` (for Column Widget)
- `width: double.infinity` (for Row Widget)


### 4. Learnt CircleAvatar widget
```
CircleAvatar(
    radius: 50,
    backgroundImage: AssetImage('images/me.png'),
),
```

### 5. Styling ```Text``` widget using style property
```
Text(
    "Rahul Kumar",
    style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
    ),
)
```
### 6. Adding custom fonts

1. Download the font and paste inside 'fonts' folder in the app's root directory

2. Uncomment `font area` in pubspec.yaml file and edit family name and other related properties, like this
```
fonts:
    - family: Filxgirl
      fonts:
        - asset: fonts/Filxgirl.ttf
```
3. Use the font where needed, like this:
```
style: TextStyle(
    fontFamily: 'Filxgirl',
    fontSize: 40,
    color: Colors.white,
)
```

4. Re-run the app

### 7. Why to use `Icon` widget instead of normal `Image` widget for icons?

- `Icon widget` uses a vector graphic, which is a mathematical representation of an image, so it can be rendered more quickly and resized without losing quality. 

- `Image widget` is rasterized, which means that it is converted to a pixel-based image when it is rendered, so it will become pixelated if it is resized too much

- `Icon widget` allows you to change the color, size, and other properties of the icon. The Image widget only allows you to change the size of the image.
---