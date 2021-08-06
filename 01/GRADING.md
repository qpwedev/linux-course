# Grading for 01

| Task                                     |   Points |
| ---------------------------------------- | --------:|
| 01/gif.md                                |       30 |
| 01/longest.py                            |       20 |
| 01/prime.py                              |       20 |
| 01/survey.md (Q1)                        |        5 |
| 01/survey.md (Q2)                        |        5 |
| 01/survey.md (Q3)                        |        5 |
| 01/env.txt                               |        0 |
| **Total**                                |   **85** |


Text below contains more details. If you provided a troublefree solution or
a correct answer, more detailed comments are often not provided as they are
not needed.

If you encounter an issue such as wrong comment, missing points, overlooked
answer etc., please, fill-in a _Confidential_ Issue at the
[Forum](https://gitlab.mff.cuni.cz/teaching/nswi177/2021-summer/common/forum/)
and we will have a look. Please, specify task name (e.g. 01/longest.py) in
the Issue title.

Commit: 6238661ed166f83a101feeac0896d2308f53ac1b


## 📘 01/gif.md

### ✅ 01/gif.md - Q1

Version is stored in bytes 4, 5, and 6.

Test passed.

### ✅ 01/gif.md - Q2

The global color table flag is MSB in byte 11.

Test passed.

### ✅ 01/gif.md - Q3 relaxed

The width is stored in bytes 7 and 8, little-endian order.

Test passed.

### ✅ 01/gif.md - Q3 strict

Note that the answer was supposed to be only the number without
any explanation as mandated by the automated test _01/gif.md - Q3_.

Test passed.

### ✅ 01/gif.md - Q4 relaxed

The height is stored in bytes 9 and 10, little-endian order.

Test passed.

### ✅ 01/gif.md - Q4 strict

Note that the answer was supposed to be only the number without
any explanation as mandated by the automated test _01/gif.md - Q4_.

Test passed.

## 📘 01/longest.py

Please, do not place multiple commands on one line.

### ✅ 01/longest.py - Shebang

Checks that correct Python shebang is used

Test passed.

### ✅ 01/longest.py - Executable

Checks that file has executable (chmod +x) bit set.

Test passed.

### ✅ 01/longest.py - Python module

Checks that Python check `__name__ == '__main__'` is used.

Test passed.

### ✅ 01/longest.py - Empty input

Checks that the program works on empty input.

Test passed.

### ✅ 01/longest.py - Input with blank lines

Input file:

```
alpha

bravo

charlie

delta

```

Test passed.

### ✅ 01/longest.py - Multiple lines

Input file:

```
alpha
bravo
charlie
delta
```

Test passed.

### ✅ 01/longest.py - First line is longest

Input file:

```
longest-line
short 1
short 2
```

Test passed.

### ✅ 01/longest.py - Last line is longest

Input file:

```
short 1
short 2
longest-line
```

Test passed.

### ✅ 01/longest.py - Very long input

Input is file with longest line having 1000 characters.

Test passed.

### ✅ 01/longest.py - Special keywords

Lines such as exit or quit shall not terminate the program.

Test passed.

## 📘 01/prime.py

Prime computation shall be in a separate function.

Please, do not place multiple commands on one line.

### ✅ 01/prime.py - Correct Python program

Checks that correct Python shebang is used

Test passed.

### ✅ 01/prime.py - Executable bit is set

Checks that file has executable (chmod +x) bit set.

Test passed.

### ✅ 01/prime.py - Uses __name__ == __main__ check

Checks that Python idiom for proper modularization is used.

Test passed.

### ✅ 01/prime.py - Input 2

Test passed.

### ✅ 01/prime.py - Input 3

Test passed.

### ✅ 01/prime.py - Input 4

Test passed.

### ✅ 01/prime.py - Input 5

Test passed.

### ✅ 01/prime.py - Input 10

Test passed.

### ✅ 01/prime.py - Input 42610

Test passed.

### ✅ 01/prime.py - Input 7919

Test passed.

### ✅ 01/prime.py - Input 16127

Test passed.

### ✅ 01/prime.py - Input 39119

Test passed.

### ✅ 01/prime.py - Input 51538

Test passed.

## 📘 01/env.txt

The purpose of this exercise was to try different Linux desktop environments and justify your solution.

