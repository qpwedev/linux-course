# Grading for 07

| Task                                     |   Points |
| ---------------------------------------- | --------:|
| 07/web_machine_status.sh                 |       23 |
| 07/extract_snippet.sh                    |       24 |
| 07/file_preview.sh                       |       22 |
| 07/find_complementary.sh                 |       21 |
| **Total**                                |   **90** |


Text below contains more details. If you provided a troublefree solution or
a correct answer, more detailed comments are often not provided as they are
not needed.

If you encounter an issue such as wrong comment, missing points, overlooked
answer etc., please, fill-in a _Confidential_ Issue at the
[Forum](https://gitlab.mff.cuni.cz/teaching/nswi177/2021-summer/common/forum/)
and we will have a look. Please, specify task name (e.g. 01/longest.py) in
the Issue title.

Commit: 96854bd6759afe3aa0ae95aaca73e19882595a19


## 📘 07/web_machine_status.sh

### ✅ 07/web_machine_status.sh - Submitted (informative test only)

Test passed.

### ✅ 07/web_machine_status.sh - Proper shebang

Test passed.

### ✅ 07/web_machine_status.sh - Executable bit

Test passed.

### ✅ 07/web_machine_status.sh - ShellChecked - style [info only] (informative test only)

Test passed.

### ✅ 07/web_machine_status.sh - ShellChecked - notes

Test passed.

### ✅ 07/web_machine_status.sh - ShellChecked - warnings

Test passed.

### ❌ 07/web_machine_status.sh - Check tempfile clean-up

Check that temporary files are properly removed.

```
-- following temporary files were not removed (names were cleaned-up) --
/tmp/tmp.0000000001 (regular file, 354 bytes)
--
```

### ✅ 07/web_machine_status.sh - Check proper tempfiles are used

Checks that the implementation does not remove files
in the current directory by using hard-coded paths instead of using
`mktemp`. Note that any hard-coded filename is vulnerable to
concurrent execution issues.

Test passed.

### ✅ 07/web_machine_status.sh - With --help

Test passed.

### ✅ 07/web_machine_status.sh - Default data

Run with default data

Test passed.

### ✅ 07/web_machine_status.sh - Default data with --silent

Run with default data

Test passed.

### ✅ 07/web_machine_status.sh - Run with -i

Test passed.

### ✅ 07/web_machine_status.sh - Filtering for alpha

Test passed.

### ✅ 07/web_machine_status.sh - Filtering for nonexistent machine

Test passed.

## 📘 07/extract_snippet.sh

### ✅ 07/extract_snippets.sh - Submitted (informative test only)

Test passed.

### ✅ 07/extract_snippets.sh - Shebang

Checks that correct BASH shebang is used

Test passed.

### ✅ 07/extract_snippets.sh - Executable

Checks that file has executable (chmod +x) bit set.

Test passed.

### ✅ 07/extract_snippets.sh - ShellChecked - style [info only] (informative test only)

Test passed.

### ✅ 07/extract_snippets.sh - ShellChecked - notes

Test passed.

### ✅ 07/extract_snippets.sh - ShellChecked - warnings

Test passed.

### ✅ 07/extract_snippets.sh - Nonexistent file exit code

Identical to the pipeline test.

Test passed.

### ✅ 07/extract_snippets.sh - Example from assignment

Identical to the pipeline test.

Test passed.

### ✅ 07/extract_snippets.sh - Can use stdin

Identical to the pipeline test.

Test passed.

### ✅ 07/extract_snippets.sh - Nonexistent file among the arguments

There is nonexistent file among the arguments. Script should skip this file, proceed the rest and exit with exit code 1.

Test passed.

### ✅ 07/extract_snippets.sh - Check all supported languages

Check all supported languages from the assignment.

Test passed.

### ❌ 07/extract_snippets.sh - Check for triple backticks inside paragraph

Test failed.

### ✅ 07/extract_snippets.sh - Comment after shebang

The second line contains comment message, so the first character is hash. This message should be copy to the file.

Test passed.

### ❌ 07/extract_snippets.sh - Run without arguments (informative test only)

Running script without any argument, the input should be read from stdin. This is standard behavior of many Linux utils. Note that this test is optional as the behavior of this specific case was not specified in assignment nor the public tests.

```
-- directory does not exist --
path : /tmp/nswi177-extract_snippets.bats-14-F1mHGFqmzS/stdin
--
```

### ✅ 07/extract_snippets.sh - Double shebang (informative test only)

Two shebang inside the file. The second line is not actually shebang but rather an ordinary comment, therefore both lines should be present in the output snippets. Note that this test is only optional.

Test passed.

### ✅ 07/extract_snippets.sh - Nonexistent file among the arguments [correct numbering] (informative test only)

Although it was not precisely specified in the assignment, it is more handy to start numbering for each proceeding file with 01. Note that this test is only optional.

Test passed.

## 📘 07/file_preview.sh

### ✅ 07/file_preview.sh - Submitted (informative test only)

Test passed.

### ✅ 07/file_preview.sh - Proper shebang

Test passed.

### ✅ 07/file_preview.sh - Executable bit

Test passed.

### ✅ 07/file_preview.sh - ShellChecked - style

Test passed.

### ✅ 07/file_preview.sh - ShellChecked - notes

Test passed.

### ✅ 07/file_preview.sh - ShellChecked - warnings

Test passed.

### ✅ 07/file_preview.sh - Check tempfile clean-up

Check that temporary files are properly removed.

Test passed.

### ✅ 07/file_preview.sh - Check proper tempfiles are used

Checks that the implementation does not remove files
in the current directory by using hard-coded paths instead of using
`mktemp`. Note that any hard-coded filename is vulnerable to
concurrent execution issues.

Test passed.

### ✅ 07/file_preview.sh - Single short text file

Checks that the script works for single text file with less than 30 lines.

Test passed.

### ✅ 07/file_preview.sh - Single short PDF file

Checks that the script works for single pdf file with less than 30 lines.

Test passed.

### ✅ 07/file_preview.sh - Single short multimedia file

Checks that the script works for single multimedia file with less than 30 lines.

Test passed.

### ✅ 07/file_preview.sh - Single other file

Checks that the script works for single unspecified file.

Test passed.

### ✅ 07/file_preview.sh - Single long file

Checks that the script works for single file with more than 30 lines.

Test passed.

### ✅ 07/file_preview.sh - Single file, non existing

Checks that the script works for single file that doesn't exist.

Test passed.

### ✅ 07/file_preview.sh - Multiple existing files

Checks that the script works for multiple files.

Test passed.

### ✅ 07/file_preview.sh - Multiple existing files with repeats

Checks that the script works for multiple files when some of the files are repeated.

Test passed.

### ✅ 07/file_preview.sh - Multiple files, some nonexisting

Checks that the script works for multiple files, when some of them don't exist.

Test passed.

### ✅ 07/file_preview.sh - Text file disguised as pdf

Checks that the script doesn't inspect extension of the file to determine type.

Test passed.

### ❌ 07/file_preview.sh - Error message is in standard error output

Checks that the script writes error message to the standard error output.

```
-- standard error output is empty --
output :
--
```

### ✅ 07/file_preview.sh - Relative paths and absolute paths (informative test only)

Checks that the script works with both relative and aboslute paths as well.

Test passed.

### ❌ 07/file_preview.sh - File paths with spaces (informative test only)

Checks that the script works when passed files contain space on their path.

```
-- command failed --
status : 1
output : 07/file_preview.sh: line 8: [: too many arguments
--
```

### ✅ 07/file_preview.sh - No arguments (informative test only)

Checks that the script works when no arguments are provided (i.e empty standard output).

Test passed.

### ✅ 07/file_preview.sh - Empty file (informative test only)

Checks that the script works on empty files (i.e. prints header, but no preview)

Test passed.

### ❌ 07/file_preview.sh - Non-existing file typical behaviour (informative test only)

Checks that the script works with non-exsting file reasonably
(i.e. exists with non-zero, doesn't write to standard output and writes error to error output).

```
-- standard error output is empty --
error output :
--
```

## 📘 07/find_complementary.sh

### ✅ 07/find_complementary.sh - Submitted (informative test only)

Test passed.

### ✅ 07/find_complementary.sh - Proper shebang

Test passed.

### ✅ 07/find_complementary.sh - Executable bit

Test passed.

### ✅ 07/find_complementary.sh - ShellChecked - style

Test passed.

### ✅ 07/find_complementary.sh - ShellChecked - notes

Test passed.

### ✅ 07/find_complementary.sh - ShellChecked - warnings

Test passed.

### ✅ 07/find_complementary.sh - Check tempfile clean-up

Check that temporary files are properly removed.

Test passed.

### ✅ 07/find_complementary.sh - Check proper tempfiles are used

Checks that the implementation does not remove files
in the current directory by using hard-coded paths instead of using
`mktemp`. Note that any hard-coded filename is vulnerable to
concurrent execution issues.

Test passed.

### ✅ 07/find_complementary.sh - Example run

Test passed.

### ❌ 07/find_complementary.sh - Original GAACCA is across 2 lines

```
-- output differs --
expected (3 lines):
  GAACCA
  12:CTTGGT
  19:CTTGGT
actual (1 lines):
  GAACCA
--
```

### ❌ 07/find_complementary.sh - Complement to TTCCTG is across 2 lines

```
-- output differs --
expected (2 lines):
  TTCCTG
  3:AAGGAC
actual (1 lines):
  TTCCTG
--
```

### ✅ 07/find_complementary.sh - When input file is missing

Test passed.

