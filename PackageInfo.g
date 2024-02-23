#
# WeylModules: Weyl modules for semisimple, simply-connected algebraic groups
#
# This file contains package meta data. For additional information on
# the meaning and correct usage of these fields, please consult the
# manual of the "Example" package as well as the comments in its
# PackageInfo.g file.
#
SetPackageInfo( rec(

PackageName := "WeylModules",
Subtitle := "Weyl modules for semisimple, simply-connected algebraic groups",
Version := "0.1",
Date := "23/02/2024", # dd/mm/yyyy format
License := "GPL-2.0-or-later",

Persons := [
  rec(
    FirstNames := "Stephen",
    LastName := "Doty",
    WWWHome := "https://doty.math.luc.edu",
    Email := "doty@math.luc.edu",
    IsAuthor := true,
    IsMaintainer := true,
    PostalAddress := "Department of Mathematics & Statistics, Loyola University Chicago, Chicago, IL",
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
                                 "/releases/download/v", ~.Version,
                                 "/", ~.PackageName, "-", ~.Version ),

ArchiveFormats := ".tar.gz",

##  Status information. Currently the following cases are recognized:
##    "accepted"      for successfully refereed packages
##    "submitted"     for packages submitted for the refereeing
##    "deposited"     for packages for which the GAP developers agreed
##                    to distribute them with the core GAP system
##    "dev"           for development versions of packages
##    "other"         for all other packages
##
Status := "dev",

AbstractHTML   :=  "",

PackageDoc := rec(
  BookName  := "WeylModules",
  ArchiveURLSubset := ["doc"],
  HTMLStart := "doc/chap0_mj.html",
  PDFFile   := "doc/manual.pdf",
  SixFile   := "doc/manual.six",
  LongTitle := "Weyl modules for semisimple, simply-connected algebraic groups",
),

Dependencies := rec(
  GAP := ">= 4.11",
  NeededOtherPackages := [ ],
  SuggestedOtherPackages := [ ],
  ExternalConditions := [ ],
),

AvailabilityTest := ReturnTrue,

TestFile := "tst/testall.g",

#Keywords := [ "TODO" ],

));


