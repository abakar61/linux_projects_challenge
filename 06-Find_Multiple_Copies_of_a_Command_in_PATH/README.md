# B2 — Find Multiple Copies of a Command in PATH

## Objective

Find a command that has more than one copy on the system and show all the locations where it can be found in the `PATH`.

Then identify which copy the shell will use and explain why.

## Step 1 — Find a Command with Multiple Copies

For example, check `python3`:

```bash
which -a python3
```

The `-a` option means **show all matching locations**.

Example output:

```text
/usr/local/bin/python3
/usr/bin/python3
```

This means there are two copies of `python3` that can be found through the `PATH`.

## Step 2 — Check the PATH

Use:

```bash
echo $PATH
```

Example:

```text
/usr/local/bin:/usr/bin:/bin
```

The shell searches the directories in `PATH` from **left to right**.

## Which Copy Will the Shell Use?

If the output of `which -a python3` is:

```text
/usr/local/bin/python3
/usr/bin/python3
```

the shell will use:

```text
/usr/local/bin/python3
```

because `/usr/local/bin` appears before `/usr/bin` in the `PATH`.

The shell searches like this:

```text
/usr/local/bin
       ↓
  python3 found
       ↓
    STOP
```

It does not continue searching after it finds the first matching executable.

## Important Command

```bash
which -a python3
```

This command shows **all copies** of `python3` that can be found in the `PATH`.

## Easy Explanation

`which` means:

> **"Where is this command?"**

`which -a` means:

> **"Where are all the copies of this command?"**

The shell uses the copy whose directory appears **first in the `PATH`**.

## Screenshot

Add your Ubuntu terminal screenshot here:

![B2 Ubuntu Screenshot](b2-screenshot.png)

> Replace `b2-screenshot.png` with the actual filename of your screenshot.

## Result

A command with multiple copies was identified using `which -a`. All available locations were displayed, and the first location in the `PATH` was identified as the copy that the shell will use.
