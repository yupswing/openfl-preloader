<img src="https://img.shields.io/badge/app-OpenFL%20Preloader%201.1-brightgreen.svg">
<a href="blob/master/LICENCE"><img src="https://img.shields.io/badge/licence-MIT-blue.svg"></a>
<a href="https://www.haxe.org/"><img src="https://img.shields.io/badge/language-Haxe%203-green.svg"></a>
<a href="http://www.openfl.org/"><img src="https://img.shields.io/badge/require-OpenFL-red.svg"></a>

# OpenFL-Preloader
Preloader example for HAXE3/OpenFL

# The background
<p>In HAXE/OpenFL you can add a Preloader to your App/Game very easily.<br>
You just need to add this parameter in your project.xml, in the APP tag.<br>
<code>&lt;app main="Main" path="Export" file="Preloader" <strong>preloader="Preloader"</strong> /&gt;</code><br>
the preloader argument ask for a Class (in this case is Preloader.hx, so it becomes Preloader)</p>

<p>The preloader class HAS to extend <strong>NMEPreloader</strong> to work.<br>
Also remember you cannot use the assets loader inside the class (use the macro instead)</p>

<p>You should notice the preload will be compiled and used only for Flash and HTML5 targets, in any(?) other target it will be ignored completely</p>

<p>The class has already prepared two objects:<br>
<strong>outline:Sprite</strong> is the border of the loading bar<br>
<strong>progress:Sprite</strong> is the loading bar<br>
Inside the onUpdate function (which I overidded in this example) the progress bar will be scaled (only x) to show the loading percentage.<br/>
You can see the original class here https://github.com/openfl/openfl-native/blob/master/templates/haxe/NMEPreloader.hx</p>


# My preloader
This project offers a class (Preloader.hx) and a real use.
You can use the class in your project like Main.hx does here.

Here's how the preloader looks like. (with automatic fluid scaling on resize)
<img src="https://dl.dropboxusercontent.com/u/683344/akifox/preloader/screenshot.jpg">

You can customize the colors very easily, and if you code (and I know you code) you can change the class and make it fit your needs.

# Demo
<p>You can test an online version here.<br>
https://dl.dropboxusercontent.com/u/683344/akifox/preloader/Preloader.swf<br>
If your connection is very fast I doubt you will see the preloader (the file is just 300kb)</p>

<p>You can use Sloppy (http://www.dallaway.com/sloppy/) to slow down the connection (it's a proxy that delay the data flow). I used that to test my design, you can use it here: just make it pointing to my demo, set to 128k/s, and dive the web like in 1999!</p>
