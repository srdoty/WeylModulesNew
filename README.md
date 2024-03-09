# The Weyl modules package

This is the README file for the GAP package "WeylModules". You must
have a working copy of GAP installed in order to use this package.

The package provides functions for doing computations with Weyl modules
in positive characteristic for a simple simply-connected algebraic
group. 

For updates between releases check the package Web page, at
https://github.com/srdoty/WeylModulesNew.
  
After downloading the package, start GAP and then run the following two
commands to load the package: 
```
gap> SetPackagePath("WeylModules","path/to/your/copy/of/package");
gap> LoadPackage("WeylModules");
```
For further details, please see Chapter 76 of the
[GAP Manual](https://www.gap-system.org/Manuals/doc/ref/chap76.html).

The manual for the WeylModules package can be generated in the `doc`
subdirectory by running the command
```
$ gap makedoc.g
```
from the download folder. Then look for `doc/manual.pdf` or `doc/chap0.html`
(depending on your formatting preference).
