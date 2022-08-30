# A Roadmap for the LaTeX NGE project

This bundle of packages and classes is several years old.  Active
development has stalled.  Yet, documents I have written using them persist.  I should really:

* Get the bundle out there so it can be downloaded and installed
  easily

* Migrate to git to make for easier maintenance

* Refactor using more modern packages

*But* I don't want to break any of the old documents I have 
written with these packages and classes.

## Subversion to git migration

The importing is pretty much done, thanks to github.  

1. Tag `master` at latest official release (2.1?)

2. Continue to work on `3.0-dev3` until stable.

3. Merge `3.0-dev3` to `master` and release 3.0

### Dev tools

Create development tools that make maintenance easy.  Possibly: 

* `bumpversion` configuration and workflow: Should be able to easily mark
  changes with a `\changes` line and the new version number, before that version
  number is tagged.  Some combination of `--dry-run` and a snippet?

* `Makefile` to generate documentation and distribution.  Will we distribute to
  CTAN?  I guess so, when it's ready.  The
  [`beamer`](https://githumb.com/josephwright/beamer) bundle does it with
  Makefiles.

Or: use [`l3build`](http://ctan.org/pkg/l3build) to manage the whole thing.
This is how[`siunitx`](https://github.com/josephwright/siutnix) is managed.

## Support for installers

We need step-by-step instructions for users on several platforms.  Start with
any who have expressed interest in using the packages (i.e., FNS).  

Used to be this was done totally within TeX.  You distributed `foo.dtx` and
`foo.ins`.  TeX-ing the `ins` file extracted the package/class files.  If you
configured `docstrip` right, they will even install into the right places.

You can find your local `$TEXMFHOME` with

```bash
kpsexpand '$TEXMFHOME'
```

or, if you use TeX-Live

```bash
tlmgr conf texmf TEXMFHOME
```

Put a `docstrip.cfg` file in the distro:

```tex
% Uncomment and replace TEXMFHOME with the contents of your
% TEXMFHOME variable.
%
% \BaseDir{TEXMFHOME}
% \UseTDS
```

But times have changed, *selon* [Joseph](https://tex.stackexchange.com/a/240379/1402):

  As detailed in the DocStrip manual, the design of DocStrip is such that you
  are expected to set `\BaseDirectory` (as TeX can't know where you want to
  install to) and `\UseTDS` (to activate mapping of your `\usedir` lines to the
  \[appropriate\] TDS structure). Those lines are intended most likely to go into
  a `docstrip.cfg` file rather than into the `.ins` file(s) themselves.

  \[M\]odern TeX systems do not allow writing to a directory above the current one
  for security reasons. (This can be altered but is not at all recommended.)
  TeX, and thus DocStrip, cannot make directories so the structure also needs to
  be pre-existing. As such, the 'extract to TDS' feature of DocStrip is best
  regarded as a historical idea and not for use today. Rather than use DocStrip
  to populate a local tree, a more useful approach is to create a TDS-style zip
  and to use this. *There are a variety of scripts available to help with this
  process* [emph. added].

### Installing from a distribution  

So how does Joseph do it?  Both the beamer and siunitx repositories include scripts to make TDS-compliant zip archives suitable for uploading to CTAN.  Beamer uses a Makefile while siunitx uses `l3build`.  

Then include a script like this in the documentation:

```bash
unzip foo.tds.zip
cd foo.tds
cp -R * `kpsexpand '$TEXMFHOME'`
```
That last line is the critical one.  Needs to be checked.

### Installing from a package manager

Once it's on CTAN, maybe users will be able to run

```bash
tlmgr --usermode install nge
```

or

```bash
sudo tlmgr install nge
```

### Installing from source

Here is where you `tex foo.ins` and then move files into the right directories.

## Refactoring

I like [`exsheets`](http://ctan.org/pkg/exsheets) for including/excluding solutions to worksheets/quizzes.

There was also a package that *wrote* exercises and solutions to their own
files.  What was that?  If I could find that, my lesson templates would be a lot
easier.
