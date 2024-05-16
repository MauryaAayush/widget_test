
#
<h1 align = "center">Widget Test</h1>

###
<h3 align="center"><i> Glass Morphism Effect</i></h3>

A new Flutter project.

 <img src="https://github.com/MauryaAayush/widget_test/assets/143180849/d85cdd63-867f-4597-91e2-cacc2b44870f" height=500px hspace=20>

## About :
There are multiple ways to make Glass morphism , here we have use this way there below :

The ClipRRect widget clips its child widget to a rounded rectangle shape.<br>
The BackdropFilter widget applies a blur effect to its child widget.<br>
The ImageFilter.blur() method creates a blur filter with the specified sigma values.<br>
Implementation:<br>
Set a non-zero BorderRadius on the ClipRRect widget to define the rounded rectangle shape.<br>
Use ImageFilter.blur() to create a blur filter with the desired sigma values.<br>
Set the filter property of the BackdropFilter widget to the created blur filter.<br><br>

Explanation:
This code snippet creates a ClipRRect widget with a rounded rectangle shape defined by a BorderRadius.circular(10).
Inside the ClipRRect, a BackdropFilter widget is used to apply a blur effect to the child container.
The ImageFilter.blur() method creates a blur filter with a sigma value of 10.0 in both the horizontal and vertical directions.
This results in a blurred container with rounded corners.





## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
