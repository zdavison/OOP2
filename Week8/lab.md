OOP2 Lab 2.7
======================

The goal of this lab is to replicate the UI below using AutoLayout.

Your layout must be reactive, you must define the relationships using AutoLayout and then when you rotate the screen orientation to landscape, it should rotate correctly to the right position.

![portrait](https://raw.githubusercontent.com/zdavison/OOP2/master/Week8/portrait.png)

![landscape](https://raw.githubusercontent.com/zdavison/OOP2/master/Week8/landscape.png)

Requirements
======================

- Replicate the layout using Interface Builder / AutoLayout
- Orienting the screen should change the layout to suit portrait / landscape
- Pressing the button should animate the colored box off screen upwards, change it's color, and then animate it back in.
- The label should display the name of the color displayed.

Hints
======================

- You will need to use AutoLayout. Read up on it [here](https://developer.apple.com/library/ios/documentation/UserExperience/Conceptual/AutolayoutPG/Introduction/Introduction.html), feel free to ask questions if you need guidance.
- When animating views that use AutoLayout, you cannot animate the `frame` properties etc, as usual, you will need to create `NSLayoutConstraint` IBOutlets, and connect those to your layout constraints. You then adjust these properties to achieve what you want. You can still animate these in the traditional ways (UIView animations, etc).
