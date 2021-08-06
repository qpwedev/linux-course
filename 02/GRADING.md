# Grading for 02

| Task                                     |   Points |
| ---------------------------------------- | --------:|
| 02/quiz.md Q1 Wildcarded file contents   |       10 |
| 02/quiz.md Q2 Wildcard pattern           |       10 |
| 02/quiz.md Q3 Uptime                     |       25 |
| 02/quiz.md Q4 wget -i                    |       15 |
| 02/quiz.md Q5 /proc/partitions blocks    |       10 |
| 02/quiz.md Q6 /proc/partitions name      |       10 |
| 02/quiz.md Q7 Version of ls              |       10 |
| 02/quiz.md Q8 Path clean-up              |       10 |
| **Total**                                |  **100** |


Text below contains more details. If you provided a troublefree solution or
a correct answer, more detailed comments are often not provided as they are
not needed.

If you encounter an issue such as wrong comment, missing points, overlooked
answer etc., please, fill-in a _Confidential_ Issue at the
[Forum](https://gitlab.mff.cuni.cz/teaching/nswi177/2021-summer/common/forum/)
and we will have a look. Please, specify task name (e.g. 01/longest.py) in
the Issue title.

Commit: b36f9a3b37e85c1e2e229912a224570ea193a3fc


## 📘 02/quiz.md Q1 Wildcarded file contents

### ✅ 02/quiz.md - Q1

The answer should contain the content of files that match required wildcard

Test passed.

## 📘 02/quiz.md Q2 Wildcard pattern

### ✅ 02/quiz.md - Q2 Correct wildcard

The answer should contain the wildcard required to select matched files.

Test passed.

### ✅ 02/quiz.md - Q2 Includes a command

Question asked for a wildcard, not for command.

Test passed.

### ✅ 02/quiz.md - Q2 Contains an asterisk or comma

Asterisk (star) would also match other files.
Characters in [] group are not to be separated by comma
(that would mean that the group can also match literal comma).

Test passed.

## 📘 02/quiz.md Q3 Uptime

### ✅ 02/quiz.md - Q3 - real uptime

Test passed.

### ✅ 02/quiz.md - Q3 - artificial huge uptime

`/proc/uptime` replaced with `123456789.00 789.00`.

Test passed.

### ✅ 02/quiz.md - Q3 - artificial small uptime

`/proc/uptime` replaced with `123.00 78.00.`

Test passed.

### ✅ 02/quiz.md - Q3 - uses cut

Check that you use `cut`.

Test passed.

## 📘 02/quiz.md Q6 /proc/partitions name

you need to access them as root. That is sudo ... . Notice also, that you need to use hexdump to print them out.

## 📘 02/quiz.md Q7 Version of ls

### ✅ 02/quiz.md - Q7

We expected output of `ls --version | head -n 1`.

Test passed.

### ✅ 02/quiz.md - Q7 full version provided

Full version includes the vendor, not only a number.

Test passed.

### ✅ 02/quiz.md - Q7 count lines

Only one line should be submitted

Test passed.

## 📘 02/quiz.md Q8 Path clean-up

### ✅ 02/quiz.md - Q8

Note that there is `realpath(1)` command or you could have simply
`cd` to the path (removing last component) and use `pwd`.

Test passed.

