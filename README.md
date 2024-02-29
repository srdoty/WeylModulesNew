# The Weyl modules package

This is the README file for the GAP package "WeylModules". You must
have a working copy of GAP installed in order to use this package.

The package provides functions for doing computations with Weyl modules
in positive characteristic for a simple simply-connected algebraic
group. 

The package is not yet submitted to GAP.  For updates between releases
of GAP itself check the package Web page, at
http://doty.math.luc.edu/weylmodules.
  
After downloading the package, you can start GAP and load the package at
the same time by opening a terminal, changing directory to the download
folder, and then typing:
```
$ gap load_package.g
```
on the command line. 

Alternatively, you can first start GAP in the download folder, and then
type:
```
gap> SetPackagePath("WeylModules",".");
gap> LoadPackage("WeylModules");
```
You could also run `ExtendRootDirectories` to tell GAP where to
find the package, thus avoiding the first step. (See Chapter 76 of the
[GAP Manual](https://www.gap-system.org/Manuals/doc/ref/chap76.html).)

For details on how to use the WeylModules package see the package
documentation in the `doc` subdirectory.
