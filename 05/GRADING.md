# Grading for 05

| Task                                     |   Points |
| ---------------------------------------- | --------:|
| 05/scoring.sh                            |       15 |
| 05/backup.sh                             |       26 |
| 05/mails_from_web.sh                     |       17 |
| 05/interactive_calc.sh                   |       20 |
| 05/user_vars.sh                          |       14 |
| **Total**                                |   **92** |


Text below contains more details. If you provided a troublefree solution or
a correct answer, more detailed comments are often not provided as they are
not needed.

If you encounter an issue such as wrong comment, missing points, overlooked
answer etc., please, fill-in a _Confidential_ Issue at the
[Forum](https://gitlab.mff.cuni.cz/teaching/nswi177/2021-summer/common/forum/)
and we will have a look. Please, specify task name (e.g. 01/longest.py) in
the Issue title.

Commit: b269844a383ccac4a084953e753035191ed4e8de


## 📘 05/scoring.sh

Consider refactoring the common code in csv/summary/podium into a single function.

### ✅ 05/scoring.sh - Submitted (informative test only)

Test passed.

### ✅ 05/scoring.sh - Proper shebang

Test passed.

### ✅ 05/scoring.sh - Executable bit

Test passed.

### ✅ 05/scoring.sh - ShellChecked - style (informative test only)

Test passed.

### ✅ 05/scoring.sh - ShellChecked - notes (informative test only)

Test passed.

### ✅ 05/scoring.sh - ShellChecked - warnings

Test passed.

### ✅ 05/scoring.sh - Run with Pipeline data

The same setup as in GitLab Pipeline.

Test passed.

### ✅ 05/scoring.sh - Typical run

Run with a typical mix of adds and summaries.

Test passed.

### ✅ 05/scoring.sh - Podium command test

Test passed.

### ✅ 05/scoring.sh - Podium command test II

Checking that the podium can be used twice.

Test passed.

### ✅ 05/scoring.sh - CSV file output

Test passed.

### ✅ 05/scoring.sh - CSV to /dev/null

Test passed.

### ✅ 05/scoring.sh - Using the -o option

Testing the CSV command.

Test passed.

### ✅ 05/scoring.sh - CSV twice

Overwriting the same CSV file.

Test passed.

### ✅ 05/scoring.sh - Funny team names

Using uncommon team names to break some of the solutions.

Test passed.

### ✅ 05/scoring.sh - Check tempfile clean-up

Check that temporary files are properly removed.

Test passed.

### ✅ 05/scoring.sh - Check proper tempfiles are used

Checks that the implementation does not remove files
in the current directory by using hard-coded paths instead of using
`mktemp`. Note that any hard-coded filename is vulnerable to
concurrent execution issues.

Test passed.

## 📘 05/backup.sh

### ✅ 05/backup.sh - Submitted (informative test only)

Test passed.

### ✅ 05/backup.sh - Shebang

Checks that the script is really a shellscript

Test passed.

### ✅ 05/backup.sh - Executable

Checks that the executable bit is set

Test passed.

### ✅ 05/backup.sh - Using $BACKUP_DIR

Checks that the printed path is the path to $BACKUP_DIR

Test passed.

### ❌ 05/backup.sh - Using ~/backup

Checks that the printed path is the path to ~/backup with $BACKUP_DIR unset

```
-- command failed --
status : 1
output : 05/backup.sh: line 4: BACKUP_DIR: unbound variable
--
```

### ✅ 05/backup.sh - Ordinary file backup name

Checks that the printed name of ordinary file backup is in the correct form

Test passed.

### ✅ 05/backup.sh - Directory backup name

Checks that the printed name of directory backup is in the correct form

Test passed.

### ✅ 05/backup.sh - Creating backups of ordinary files

Checks that ordinary files are successfully copied to printed location

Test passed.

### ✅ 05/backup.sh - Creating backups of directories

Checks that directories are successfully copied to printed location

Test passed.

### ✅ 05/backup.sh - Handling filenames containing spaces

Checks that filename with space is handled appropriately

Test passed.

## 📘 05/mails_from_web.sh

### ✅ 05/mails_from_web.sh - Submitted (informative test only)

Test passed.

### ✅ 05/mails_from_web.sh - Proper shebang

Checks whether correct shebang is used

Test passed.

### ✅ 05/mails_from_web.sh - Executable bit

Checks whether the executable bit is set (chmod +x)

Test passed.

### ❌ 05/mails_from_web.sh - ShellChecked - style

```
-- Shellcheck report --
05/mails_from_web.sh:2:10: warning: In POSIX sh, set option pipefail is undefined. [SC2039]
--
```

### ❌ 05/mails_from_web.sh - ShellChecked - notes

```
-- Shellcheck report --
05/mails_from_web.sh:2:10: warning: In POSIX sh, set option pipefail is undefined. [SC2039]
--
```

### ❌ 05/mails_from_web.sh - ShellChecked - warnings

```
-- Shellcheck report --
05/mails_from_web.sh:2:10: warning: In POSIX sh, set option pipefail is undefined. [SC2039]
--
```

### ✅ 05/mails_from_web.sh - Uses curl

Check whether curl is used

Test passed.

### ✅ 05/mails_from_web.sh - Simple input - d3s web

Run with d3s webpage

Test passed.

### ✅ 05/mails_from_web.sh - File input 1

Run with file input - regex check

Test passed.

### ✅ 05/mails_from_web.sh - File input 2

Run with another file - regex check

Test passed.

### ✅ 05/mails_from_web.sh - Empty output

No email should be outputted

Test passed.

## 📘 05/interactive_calc.sh

### ✅ 05/interactive_calc.sh - Submitted (informative test only)

Test passed.

### ✅ 05/interactive_calc.sh - Proper shebang

Test passed.

### ✅ 05/interactive_calc.sh - Executable bit

Test passed.

### ✅ 05/interactive_calc.sh - ShellChecked - style (informative test only)

Test passed.

### ✅ 05/interactive_calc.sh - ShellChecked - notes (informative test only)

Test passed.

### ✅ 05/interactive_calc.sh - ShellChecked - warnings

Test passed.

### ✅ 05/interactive_calc.sh - Run with non-existent file

Test passed.

### ✅ 05/interactive_calc.sh - 10+1+42 from a file

Test passed.

### ✅ 05/interactive_calc.sh - 100+37+4 from stdin

Test passed.

### ✅ 05/interactive_calc.sh - 205+3 from stdin with -

Test passed.

### ✅ 05/interactive_calc.sh - 15*6 from a file

Test passed.

### ✅ 05/interactive_calc.sh - 28/7 from stdin

Test passed.

### ✅ 05/interactive_calc.sh - 17*4+5+8 from stdin

Test passed.

## 📘 05/user_vars.sh

### ✅ 05/user_vars.sh - Submitted (informative test only)

Test passed.

### ✅ 05/user_vars.sh - Proper shebang

Test passed.

### ✅ 05/user_vars.sh - Executable bit

Test passed.

### ❌ 05/user_vars.sh - ShellChecked - style (informative test only)

```
-- Shellcheck report --
05/user_vars.sh:2:10: warning: In POSIX sh, set option pipefail is undefined. [SC2039]
--
```

### ❌ 05/user_vars.sh - ShellChecked - notes (informative test only)

```
-- Shellcheck report --
05/user_vars.sh:2:10: warning: In POSIX sh, set option pipefail is undefined. [SC2039]
--
```

### ❌ 05/user_vars.sh - ShellChecked - warnings

```
-- Shellcheck report --
05/user_vars.sh:2:10: warning: In POSIX sh, set option pipefail is undefined. [SC2039]
--
```

### ✅ 05/user_vars.sh - Works on current system

Checks that output is the same in standard environment.

Test passed.

### ✅ 05/user_vars.sh - Works with username present in variable name

Checks that the script works when username appears in variable name, but not in the value.

Test passed.

### ✅ 05/user_vars.sh - Works with username present in variable name and value

Checks that the script works when username appears in both variable name and in the value.

Test passed.

### ✅ 05/user_vars.sh - Works when output should be empty

Checks that the script works when the output should be empty.

Test passed.

### ✅ 05/user_vars.sh - Check tempfile clean-up

Check that temporary files are properly removed.

Test passed.

### ✅ 05/user_vars.sh - Check proper tempfiles are used

Checks that the implementation does not remove files
in the current directory by using hard-coded paths instead of using
`mktemp`. Note that any hard-coded filename is vulnerable to
concurrent execution issues.

Test passed.

### ✅ 05/user_vars.sh - Uses whoami and not USER variable

Checks that output is the same in standard environment.

Test passed.

### ✅ 05/user_vars.sh - Checks that output is sorted

Checks that the output is sorted.

Test passed.

### ✅ 05/user_vars.sh - Check that only environment variables are printed

Checks that the output is the same in standard environment.

Test passed.

