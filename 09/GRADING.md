# Grading for 09

| Task                                     |   Points |
| ---------------------------------------- | --------:|
| 09/tapsum2json                           |       37 |
| 09/templater                             |       40 |
| 09/kramdown                              |       20 |
| **Total**                                |   **97** |


Text below contains more details. If you provided a troublefree solution or
a correct answer, more detailed comments are often not provided as they are
not needed.

If you encounter an issue such as wrong comment, missing points, overlooked
answer etc., please, fill-in a _Confidential_ Issue at the
[Forum](https://gitlab.mff.cuni.cz/teaching/nswi177/2021-summer/common/forum/)
and we will have a look. Please, specify task name (e.g. 01/longest.py) in
the Issue title.

Commit: ecf8f9c4caa1fecf5f99830d5c35b85c7fbdcb9a


## 📘 09/tapsum2json

### ✅ 09/tapsum2json/setup.py - Submitted (informative test only)

Test passed.

### ✅ 09/tapsum2json/setup.py - Executable bits and shebangs

Test passed.

### ✅ 09/tapsum2json/setup.py - Only reasonable files are committed

Virtual env directory or .egginfo and similar files shall not be in the repository.

Test passed.

### ✅ 09/tapsum2json/setup.py - Installation I

Test passed.

### ✅ 09/tapsum2json/setup.py - Installation II

Test passed.

### ✅ 09/tapsum2json/setup.py - Installation III

Test passed.

### ✅ 09/tapsum2json/setup.py - Installation IV

Test passed.

### ✅ 09/tapsum2json/setup.py - No input files

Test passed.

### ✅ 09/tapsum2json/setup.py - Single file, both tests passing

Test passed.

### ✅ 09/tapsum2json/setup.py - Single non-existent file

Test passed.

### ✅ 09/tapsum2json/setup.py - Single file with skipped tests

Test passed.

### ✅ 09/tapsum2json/setup.py - Single file with another skipped tests

Test passed.

### ✅ 09/tapsum2json/setup.py - Pipeline-like invocation

Test passed.

### ✅ 09/tapsum2json/setup.py - Filename with space

Test passed.

### ❌ 09/tapsum2json/setup.py - Filename with quote character

```
creating build/bdist.linux-x86_64/egg
creating build/bdist.linux-x86_64/egg/EGG-INFO
installing scripts to build/bdist.linux-x86_64/egg/EGG-INFO/scripts
running install_scripts
running build_scripts
creating build/bdist.linux-x86_64/egg/EGG-INFO/scripts
copying build/scripts-3.9/tapsum2json -> build/bdist.linux-x86_64/egg/EGG-INFO/scripts
changing mode of build/bdist.linux-x86_64/egg/EGG-INFO/scripts/tapsum2json to 755
copying tapsum2json.egg-info/PKG-INFO -> build/bdist.linux-x86_64/egg/EGG-INFO
copying tapsum2json.egg-info/SOURCES.txt -> build/bdist.linux-x86_64/egg/EGG-INFO
copying tapsum2json.egg-info/dependency_links.txt -> build/bdist.linux-x86_64/egg/EGG-INFO
copying tapsum2json.egg-info/requires.txt -> build/bdist.linux-x86_64/egg/EGG-INFO
copying tapsum2json.egg-info/top_level.txt -> build/bdist.linux-x86_64/egg/EGG-INFO
zip_safe flag not set; analyzing archive contents...
creating 'dist/tapsum2json-1.0-py3.9.egg' and adding 'build/bdist.linux-x86_64/egg' to it
removing 'build/bdist.linux-x86_64/egg' (and everything under it)
Processing tapsum2json-1.0-py3.9.egg
Removing /usr/local/lib/python3.9/site-packages/tapsum2json-1.0-py3.9.egg
Copying tapsum2json-1.0-py3.9.egg to /usr/local/lib/python3.9/site-packages
tapsum2json 1.0 is already the active version in easy-install.pth
Installing tapsum2json script to /usr/local/bin
Installed /usr/local/lib/python3.9/site-packages/tapsum2json-1.0-py3.9.egg
Processing dependencies for tapsum2json==1.0
Searching for tap.py==3.0
Best match: tap.py 3.0
Adding tap.py 3.0 to easy-install.pth file
Installing tap script to /usr/local/bin
Installing tappy script to /usr/local/bin
Using /usr/local/lib/python3.9/site-packages
Finished processing dependencies for tapsum2json==1.0
/srv/nswi177/taps/filename_with_quote".tap:
    1..2
    ok 1 One okay
    ok 2 Second okay too
-- Output differs --
output (7 lines):
  Expecting value: line 2 column 1 (char 1)
  JSON output seems invalid...
  ---
  lexical error: invalid char in json text.
                                          { "summary": [ {"filename": "f
                       (right here) ------^
expected (11 lines):
  {
      "summary": [
          {
              "failed": 0,
              "filename": "/srv/nswi177/taps/filename_with_quote\".tap",
              "passed": 2,
              "skipped": 0,
              "total": 2
          }
      ]
  }
--
```

### ❌ 09/tapsum2json/setup.py - Test with bail out (informative test only)

```
creating build/bdist.linux-x86_64/egg
creating build/bdist.linux-x86_64/egg/EGG-INFO
installing scripts to build/bdist.linux-x86_64/egg/EGG-INFO/scripts
running install_scripts
running build_scripts
creating build/bdist.linux-x86_64/egg/EGG-INFO/scripts
copying build/scripts-3.9/tapsum2json -> build/bdist.linux-x86_64/egg/EGG-INFO/scripts
changing mode of build/bdist.linux-x86_64/egg/EGG-INFO/scripts/tapsum2json to 755
copying tapsum2json.egg-info/PKG-INFO -> build/bdist.linux-x86_64/egg/EGG-INFO
copying tapsum2json.egg-info/SOURCES.txt -> build/bdist.linux-x86_64/egg/EGG-INFO
copying tapsum2json.egg-info/dependency_links.txt -> build/bdist.linux-x86_64/egg/EGG-INFO
copying tapsum2json.egg-info/requires.txt -> build/bdist.linux-x86_64/egg/EGG-INFO
copying tapsum2json.egg-info/top_level.txt -> build/bdist.linux-x86_64/egg/EGG-INFO
zip_safe flag not set; analyzing archive contents...
creating 'dist/tapsum2json-1.0-py3.9.egg' and adding 'build/bdist.linux-x86_64/egg' to it
removing 'build/bdist.linux-x86_64/egg' (and everything under it)
Processing tapsum2json-1.0-py3.9.egg
Removing /usr/local/lib/python3.9/site-packages/tapsum2json-1.0-py3.9.egg
Copying tapsum2json-1.0-py3.9.egg to /usr/local/lib/python3.9/site-packages
tapsum2json 1.0 is already the active version in easy-install.pth
Installing tapsum2json script to /usr/local/bin
Installed /usr/local/lib/python3.9/site-packages/tapsum2json-1.0-py3.9.egg
Processing dependencies for tapsum2json==1.0
Searching for tap.py==3.0
Best match: tap.py 3.0
Adding tap.py 3.0 to easy-install.pth file
Installing tap script to /usr/local/bin
Installing tappy script to /usr/local/bin
Using /usr/local/lib/python3.9/site-packages
Finished processing dependencies for tapsum2json==1.0
/srv/nswi177/taps/bailout.tap:
    1..10
    ok 1 One okay
    not ok 2 Second failed
    Bail out!
    # Remaining tests were skipped
-- Output differs --
output (11 lines):
  {
      "summary": [
          {
              "failed": 2,
              "filename": "bailout.tap",
              "passed": 1,
              "skipped": 0,
              "total": 3
          }
      ]
  }
expected (11 lines):
  {
      "summary": [
          {
              "failed": 1,
              "filename": "/srv/nswi177/taps/bailout.tap",
              "passed": 1,
              "skipped": 8,
              "total": 10
          }
      ]
  }
--
```

## 📘 09/templater

### ✅ 09/templater/setup.py - Submitted (informative test only)

Test passed.

### ✅ 09/templater/setup.py - Executable bits and shebangs

Test passed.

### ✅ 09/templater/setup.py - Only reasonable files are committed

Virtual env directory or .egginfo and similar files shall not be in the repository.

Test passed.

### ✅ 09/templater/setup.py - Installation I

Test passed.

### ✅ 09/templater/setup.py - Installation II

Test passed.

### ✅ 09/templater/setup.py - Installation III

Test passed.

### ✅ 09/templater/setup.py - Installation IV

Test passed.

### ✅ 09/templater/setup.py - Template with content only

Test passed.

### ✅ 09/templater/setup.py - Template with parsed front-matter

Test passed.

### ✅ 09/templater/setup.py - Arrays

Test passed.

### ✅ 09/templater/setup.py - arabic2roman test

Test passed.

### ✅ 09/templater/setup.py - Pipeline example

Test passed.

## 📘 09/kramdown

### ✅ 09/kramdown/kramdown_render.rb - Submitted (informative test only)

Test passed.

### ✅ 09/kramdown/kramdown_render.rb - Proper shebang

Test passed.

### ✅ 09/kramdown/kramdown_render.rb - Executable bit

Test passed.

### ✅ 09/kramdown/kramdown_render.rb - Only reasonable files are committed

Vendor directory shall not be in the repository.

Test passed.

### ✅ 09/kramdown/kramdown_render.rb - Installation

Test passed.

### ✅ 09/kramdown/kramdown_render.rb - Base run

Test passed.

### ✅ 09/kramdown/kramdown_render.rb - Standalone simple document

Test passed.

### ✅ 09/kramdown/kramdown_render.rb - Pipeline invocation

Test passed.

### ✅ 09/kramdown/kramdown_render.rb - Pipeline invocation with --stylesheet

Test passed.

