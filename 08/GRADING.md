# Grading for 08

| Task                                     |   Points |
| ---------------------------------------- | --------:|
| 08/lorem.tar.gz                          |       15 |
| 08/fat.txt                               |       15 |
| 08/proc_read_stats.sh                    |       15 |
| 08/quiz.md Q1                            |       10 |
| 08/quiz.md Q2                            |       15 |
| 08/quiz.md Q3-Q6 (paths)                 |       15 |
| 08/countdown.sh                          |       15 |
| **Total**                                |  **100** |


Text below contains more details. If you provided a troublefree solution or
a correct answer, more detailed comments are often not provided as they are
not needed.

If you encounter an issue such as wrong comment, missing points, overlooked
answer etc., please, fill-in a _Confidential_ Issue at the
[Forum](https://gitlab.mff.cuni.cz/teaching/nswi177/2021-summer/common/forum/)
and we will have a look. Please, specify task name (e.g. 01/longest.py) in
the Issue title.

Commit: 2e2972a9ec2f377e8a92277251b202292d301028


## 📘 08/lorem.tar.gz

### ✅ 08/lorem.tar.gz - Submitted (informative test only)

Test passed.

### ✅ 08/lorem.tar.gz - Is tar gz file

Test passed.

### ✅ 08/lorem.tar.gz - Non Executable (informative test only)

The file shouldn't be executable

Test passed.

### ✅ 08/lorem.tar.gz - Archive contains expected files

Checks that extraction of the archive results in creation of lorem directory and that files, contents and owners match

Test passed.

### ✅ 08/lorem.tar.gz - Extracts into lorem

Checks that extraction of the archive produces lorem directory, not srv/nswi177/lorem

Test passed.

### ✅ 08/lorem.tar.gz - Ownership matches original files (informative test only)

Checks that ownership of extracted files are what they originaly were.

Test passed.

## 📘 08/fat.txt

### ✅ 08/fat.txt - Submitted (informative test only)

Test passed.

### ✅ 08/fat.txt - Non Executable (informative test only)

The file shouldn't be executable

Test passed.

### ✅ 08/fat.txt - Content matches

Checks that the content matches with the expected content of the file

Test passed.

## 📘 08/proc_read_stats.sh

### ✅ 08/proc_read_stats.sh - Submitted (informative test only)

Test passed.

### ✅ 08/proc_read_stats.sh - Proper shebang

Test passed.

### ✅ 08/proc_read_stats.sh - Executable bit

Test passed.

### ✅ 08/proc_read_stats.sh - ShellChecked - style

Test passed.

### ✅ 08/proc_read_stats.sh - ShellChecked - notes

Test passed.

### ✅ 08/proc_read_stats.sh - ShellChecked - warnings

Test passed.

### ✅ 08/proc_read_stats.sh - Check tempfile clean-up

Check that temporary files are properly removed.

Test passed.

### ✅ 08/proc_read_stats.sh - Check proper tempfiles are used

Checks that the implementation does not remove files
in the current directory by using hard-coded paths instead of using
`mktemp`. Note that any hard-coded filename is vulnerable to
concurrent execution issues.

Test passed.

### ✅ 08/proc_read_stats.sh - Minimal

Two processes, all data available.

Test passed.

### ✅ 08/proc_read_stats.sh - Pipeline data

Test passed.

### ✅ 08/proc_read_stats.sh - Real /proc

Using the real /proc

Test passed.

### ✅ 08/proc_read_stats.sh - No per-process data (informative test only)

Test passed.

### ✅ 08/proc_read_stats.sh - Empty /proc (informative test only)

The /proc does not contain any files at all.

Test passed.

### ✅ 08/proc_read_stats.sh - Usage of sudo (informative test only)

The assignment did not require _any_ use of sudo, it mentioned
that you should silently ignore missing files (that includes files you do
not have permission too).

Test passed.

## 📘 08/quiz.md Q1

Executable file can be an interpreted script too, i.e. not necessarily a file with machine code but with a shebang.

## 📘 08/quiz.md Q2

Answer OK

## 📘 08/quiz.md Q3-Q6 (paths)

### ✅ 08/quiz.md - Submitted (informative test only)

Test passed.

### ✅ 08/quiz.md - Q3

Test passed.

### ✅ 08/quiz.md - Q4

Test passed.

### ✅ 08/quiz.md - Q5

Test passed.

### ✅ 08/quiz.md - Q6

Test passed.

### ✅ 08/quiz.md - Submitted with correct filename

Test passed.

## 📘 08/countdown.sh

### ✅ 08/countdown.sh - Submitted (informative test only)

Test passed.

### ✅ 08/countdown.sh - Proper shebang

Test passed.

### ✅ 08/countdown.sh - Executable bit

Test passed.

### ✅ 08/countdown.sh - ShellChecked - style (informative test only)

Test passed.

### ✅ 08/countdown.sh - ShellChecked - notes

Test passed.

### ✅ 08/countdown.sh - ShellChecked - warnings

Test passed.

### ✅ 08/countdown.sh - Check tempfile clean-up

Check that temporary files are properly removed.

Test passed.

### ✅ 08/countdown.sh - Check proper tempfiles are used

Checks that the implementation does not remove files
in the current directory by using hard-coded paths instead of using
`mktemp`. Note that any hard-coded filename is vulnerable to
concurrent execution issues.

Test passed.

### ✅ 08/countdown.sh - Countdown from 8

Test passed.

### ✅ 08/countdown.sh - Countdown from 2

Test passed.

### ✅ 08/countdown.sh - Countdown from 15, Ctrl-C after 4 secs

Test passed.

