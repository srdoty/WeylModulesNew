#
# WeylModules: for simple simply-connected algebraic groups
#
# This file contains package meta data. For additional information on
# the meaning and correct usage of these fields, please consult the
# manual of the "Example" package as well as the comments in its
# PackageInfo.g file.
#
SetPackageInfo( rec(

PackageName := "WeylModules",
Subtitle := "for simple simply-connected algebraic groups",
Version := "2.1",
Date := "24/04/2024", # dd/mm/yyyy format
License := "GPL-2.0-or-later",

Persons := [
  rec(
    FirstNames := "Stephen",
    LastName := "Doty",
    WWWHome := "https://doty.math.luc.edu",
    Email := "doty@math.luc.edu",
    IsAuthor := true,
    IsMaintainer := true,
    PostalAddress := Concatenation( [
                       "Department of Mathematics and Statistics\n",
                       "Loyola University Chicago\n",
                       "Chicago, Illinois 60660 USA" ] ),
    Place := "Chicago",
    Institution := "Loyola University Chicago",
  ),
],

SourceRepository := rec(
    Type := "git",
    URL := "https://github.com/srdoty/WeylModulesNew",
),
IssueTrackerURL := Concatenation( ~.SourceRepository.URL, "/issues" ),
PackageWWWHome  := "https://srdoty.github.io/WeylModulesNew/",
PackageInfoURL  := Concatenation( ~.PackageWWWHome, "PackageInfo.g" ),
README_URL      := Concatenation( ~.PackageWWWHome, "README.md" ),
ArchiveURL      := Concatenation( ~.SourceRepository.URL,
                                 "/archive/refs/tags/v", ~.Version
                                 ),
ArchiveFormats := ".zip",

##  Status information. Currently the following cases are recognized:
##    "accepted"      for successfully refereed packages
##    "submitted"     for packages submitted for the refereeing
##    "deposited"     for packages for which the GAP developers agreed
##                    to distribute them with the core GAP system
##    "dev"           for development versions of packages
##    "other"         for all other packages
##
Status := "other",

AbstractHTML   :=  "",

PackageDoc := rec(
  BookName  := "WeylModules",
  ArchiveURLSubset := ["doc"],
  HTMLStart := "doc/chap0_mj.html",
  PDFFile   := "doc/manual.pdf",
  SixFile   := "doc/manual.six",
  LongTitle := "Weyl modules for simple simply-connected algebraic groups",
),

Dependencies := rec(
  GAP := ">= 4.11",
  NeededOtherPackages := [ ],
  SuggestedOtherPackages := [ ],
  ExternalConditions := [ ],
),

AvailabilityTest := ReturnTrue,

TestFile := "tst/testall.g",

AutoDoc := rec(
  TitlePage := rec(
                    Acknowledgements := "The development of this software was initiated in June 2003 while the author was visiting the Department of Pure Mathematics and Mathematical Statistics (DPMMS) at the University of Cambridge, and continued during subsequent visits to DPMMS in June 2004 and in May through July of 2007. The author was supported by a Yip Fellowship at Magdalene College, Cambridge in 2007. The final stages of development took place in Chicago and in January 2009 at Universität Bielefeld, where the author was supported by a Mercator grant from the Deutsche Forschungsgemeinschaft (DFG). <Br/><Br/>The existence of this software owes much to the gentle prodding of Stuart Martin. Thanks are also due to Yutaka Yoshii for testing an earlier version of the software, and Matt Fayers for supplying his &GAP; code for computing the Mullineux map. <Br/><Br/>In 2019, Chris Bendel, Dan Nakano, Cornelius Pillen, and Paul Sobaje found the first counterexample to Donkin's tilting module conjecture using this package. Shortly thereafter, the author discovered an error in one of the functions. This spurred a major rewrite in the summer of 2019, resulting in Version 2.0 of the package. The rewriting of the documentation was delayed by the COVID-19 Pandemic and inertia, and finally completed in February 2024.",
    Abstract := "&WeylModules; is a &GAP; Package supporting computer computations with Weyl modules for simple simply-connected algebraic groups.",
    Copyright := "&copyright; Copyright 2009--2024 by Stephen R. Doty.<Br/>This package is distributed under the terms and conditions of the GNU Public License Version 2 or (at your option) any later version." ),
),
                
Keywords := [ "algebraic groups", "Weyl modules" ],
                    
));


