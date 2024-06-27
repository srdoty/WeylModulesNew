#
# WeylModules: for simple simply-connected algebraic groups
#
# This file is a script which compiles the package manual.
#
if fail = LoadPackage("AutoDoc", "2018.02.14") then
    Error("AutoDoc version 2018.02.14 or newer is required.");
fi;

AutoDoc( rec( scaffold := true,
         extract_examples := true,
         autodoc := rec( scan_dirs := ["autodoc_sources", "lib"] ) ) );
QUIT;

