# Grading for 03

| Task                                     |   Points |
| ---------------------------------------- | --------:|
| 03/Git CLI                               |       15 |
| 03/scoring.py                            |       39 |
| 03/git-identity.sh                       |       15 |
| 03/tests.txt                             |       25 |
| **Total**                                |   **94** |


Text below contains more details. If you provided a troublefree solution or
a correct answer, more detailed comments are often not provided as they are
not needed.

If you encounter an issue such as wrong comment, missing points, overlooked
answer etc., please, fill-in a _Confidential_ Issue at the
[Forum](https://gitlab.mff.cuni.cz/teaching/nswi177/2021-summer/common/forum/)
and we will have a look. Please, specify task name (e.g. 01/longest.py) in
the Issue title.

Commit: c749f9321511db2f5955d63894d215e3c4c60f03


## 📘 03/Git CLI

### ✅ 03/Git CLI

There should exist a commit authored by SIS_LOGIN@gitlab.mff.cuni.cz.

Test passed.

### ✅ 03/Git CLI - exactly graded-task

The commit message should contain exactly `graded-task`.

Test passed.

## 📘 03/scoring.py

### ✅ 03/scoring.py - Submitted (informative test only)

Test passed.

### ✅ 03/scoring.py - Shebang

Checks that correct Python shebang is used

Test passed.

### ✅ 03/scoring.py - Executable

Checks that file has executable (chmod +x) bit set.

Test passed.

### ✅ 03/scoring.py - Uses __name__ == __main__ check

Checks that Python idiom for proper modularization is used.

Test passed.

### ✅ 03/scoring.py - Add only

Run without any output.

Test passed.

### ✅ 03/scoring.py - No data

Run script without any add commands.

Test passed.

### ✅ 03/scoring.py - Run with Pipeline data

The same setup as in GitLab Pipeline.

Test passed.

### ✅ 03/scoring.py - Run with Pipeline data II

The same setup as in GitLab Pipeline, not ignoring whitespace issues.

Test passed.

### ✅ 03/scoring.py - Typical run

Run with a typical mix of adds and summaries.

Test passed.

### ✅ 03/scoring.py - Podium test

Testing the podium command.

Test passed.

### ✅ 03/scoring.py - CSV file output

Testing the CSV command.

Test passed.

### ✅ 03/scoring.py - CSV to /dev/null

Testing the CSV command.

Test passed.

### ✅ 03/scoring.py - Run with other team names I

Using different team names than on the web page

Test passed.

### ❌ 03/scoring.py - Run with other team names II

Using different team names than on the web page

```
-- command failed --
status : 1
output (13 lines):
  First week
  Traceback (most recent call last):
    File "/root/nswi177-temp/student/03/scoring.py", in <module>
      main()
    File "/root/nswi177-temp/student/03/scoring.py", in main
      run_with_file(inp)
    File "/root/nswi177-temp/student/03/scoring.py", in run_with_file
      summary(argument)
    File "/root/nswi177-temp/student/03/scoring.py", in summary
      scoresInList.sort(key=lambda x: x[0].split('-')[1])
    File "/root/nswi177-temp/student/03/scoring.py", in <lambda>
      scoresInList.sort(key=lambda x: x[0].split('-')[1])
  IndexError: list index out of range
--
```

## 📘 03/git-identity.sh

### ✅ 03/git-identity.sh - Shebang

Checks that the script is really a shellscript

Test passed.

### ✅ 03/git-identity.sh - Executable

Checks that the executable bit is set

Test passed.

### ✅ 03/git-identity.sh - Works inside Git repository

Checks that the script works with local git configuration.

Test passed.

### ✅ 03/git-identity.sh - Works outside a Git repository

Checks that the scripts works with global Git configuration.

Test passed.

### ✅ 03/git-identity.sh - Uses git command

Checks that git command is really used for retrieving the data.

Test passed.

### ✅ 03/git-identity.sh - Checks global and local config combination

Checks that with both local and global configs we get the correct data.

Test passed.

### ✅ 03/git-identity.sh - With weird characters in name

Checks that the script works with a few uncommon characters in name.

Test passed.

## 📘 03/tests.txt

Next time, please provide only text output, how should I look at your image if I am working in terminal?

The script has to be run in some folder, so that the relative paths in tests would find proper files (e.g. in your repository)

