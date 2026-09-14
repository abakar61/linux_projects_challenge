# B3 — Create and Verify an `ll` Function

## Objective

Create a Bash function called `ll` that behaves like `ls -lh`, load it into the current shell, and prove that the shell treats `ll` as a **function**, not an alias or a binary.

## Step 1 — Remove the Existing `ll` Alias

Ubuntu may already have `ll` configured as an alias. Check it with:

```bash
type ll
```

If the output says:

```text
ll is aliased to `ls -alF'
```

remove the existing alias:

```bash
unalias ll
```

`unalias` means **remove an alias**.

## Step 2 — Create the `ll` Function

Create the function using Bash function syntax:

```bash
function ll {
    ls -lh
}
```

### Syntax

```text
function ll {    → start a function named ll
    ls -lh       → command the function will run
}                → end the function
```

The function is loaded into the **current shell** immediately because it was entered directly into the terminal.

## Step 3 — Verify the Function

Use:

```bash
type ll
```

Expected output:

```text
ll is a function
ll ()
{
    ls -lh
}
```

The important line is:

```text
ll is a function
```

This proves that the shell now treats `ll` as a **function**.

## Why Use `type`?

The `type` command tells us what kind of command something is.

For example:

```bash
type ll
```

can show whether `ll` is:

* an alias
* a function
* a binary/executable
* a shell built-in

Therefore, `type ll` provides the required proof without relying only on running `ll`.

## Step 4 — Test the Function

After verifying its type, run:

```bash
ll
```

Because the function contains:

```bash
ls -lh
```

`ll` behaves like:

```bash
ls -lh
```

## Screenshot

Add your Ubuntu terminal screenshot here:

![B3 Ubuntu Screenshot](b3-screenshot.png)

> Replace `b3-screenshot.png` with the actual filename of your screenshot.

## Result

The existing `ll` alias was removed, a new `ll` function was created, and `type ll` confirmed that the shell treats `ll` as a function rather than an alias or binary.
