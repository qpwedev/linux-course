# Basic concepts rehearsal

Please, answer briefly but correctly.

Simplification is fine as long as it does not contradict actual
technical implementation.

## Q1: Processes and executable files (10 points)

Explain the difference between an executable file
(e.g., `/usr/bin/env`) and a process (e.g., PID 8147).

**[A1]** Executable file is a file that we can execute on CPU. Process is an instance of the code that is running. **[/A1]**


## Q2: stdin vs argv (15 points)

Explain the differences beetween following two invocations.

```shell
cat file.txt
cat <file.txt
```

Focus on the programming side of the problem.
That includes explanation of who (in the sense of an executable/process)
opens the file and when, who checks for file existence, what data types
are used (e.g., a file handle or a string).

**[A2]** In the first invocation "cat file.txt" command cat opens the file.txt and handles the file by itself. In the second invocation shell opens the file and redirect it to cat stdin like a string. In this case cat has no arguments, so it reads from stdin. **[/A2]**


## Working directory concept (15 points)

Assuming following file organization.

```
/alpha/RUN.sh
/bravo/data.txt
/charlie/data.txt
/delta/data.txt
/delta/alpha/data.txt
```

For the following invocations, always provide an _absolute_
path of the file the script will work with.

For example, when the invocation is `/alpha/RUN.sh /charlie/data.txt`,
the answer is `/charlie/data.txt`.

Note that the implementation of `RUN.sh` contains only the following.

    cat "$1"


**Q3**

```shell
/alpha/RUN.sh /alpha/../alpha/data.txt
```

**[A3]** /alpha/data.txt **[/A3]**


**Q4**

```shell
cd /bravo/ && ../alpha/RUN.sh data.txt
```

**[A4]** /bravo/data.txt **[/A4]**



**Q5**

```shell
cd /delta && /alpha/RUN.sh alpha/data.txt
```

**[A5]** /delta/alpha/data.txt **[/A5]**



**Q6**

```shell
cd /delta && cd alpha && /alpha/RUN.sh data.txt
```

**[A6]** /delta/alpha/data.txt **[/A6]**
