SATiledMenu
===========

An easy-to-use class to display a menu of the tile style, for example a 3*3 matrix.

## Screenshot

![screenshot](https://raw.githubusercontent.com/stoneark/SATiledMenu/master/screenshot.png)

## Guide

Init:

```
SATiledMenu *menu = [[SATiledMenu alloc]initWithInvokeViewController:self];
```

Set capacity (4*4 for example):

```
[menu setCapacityHorizen:4];
[menu setCapacityVertical:4];
```

Set button image size (60*60 for example):

```
[menu setMenuItemImgWidth:60];
[menu setMenuItemImgHeight:60];
```

Set button title height (20 for example):

```
[menu setMenuItemLblHeight:20];
```

Set space between two buttons (10 for example):

```
[menu setSpaceHorizen:10];
[menu setSpaceVertical:10];
```

Set button title font:

```
[menu setFontTitle:[UIFont fontWithName:@"STHeitiSC-Medium" size:14.0]];
```

Add an item to the menu:

```    
[menu addMenuItemWithImageName:@"menu1.png" labelText:@"Item 1" tapEvent:@selector(tapItem:)];
```

For more detail, open the demo project ```SATiledMenuDemo```.

## License

MIT License

@StoneArk