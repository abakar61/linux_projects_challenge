# B1 — Confirm the `ls` Prediction

## Objective

Confirm that the prediction made in A4 was correct and show the internal proof, not just the result of running `ls`.

## Step 1 — Check Which `ls` Bash Will Use

Use:

```bash
which ls
```

Example output:

```text
/home/ali/bin/ls
```

This proves that the `ls` command found in the `PATH` is the fake `ls` inside `~/bin`.

## Step 2 — Run `ls`

Now run:

```bash
ls
```

Expected output:

```text
gotcha
```

The output `gotcha` comes from the fake `ls` script that was created in A4.

## Why This Confirms the Prediction

In A4, the prediction was that Bash would use the fake `ls` in `~/bin`.

The command:

```bash
which ls
```

shows:

```text
/home/ali/bin/ls
```

This is the **internal proof** that the fake `ls` is being selected.

Then:

```bash
ls
```

produces:

```text
gotcha
```

This confirms that the selected `ls` is actually the fake script.

## Screenshot

Add your Ubuntu terminal screenshot here:

![B1 Ubuntu Screenshot](b1-screenshot.png)

> Replace `b1-screenshot.png` with the actual filename of your screenshot.

## Result

The A4 prediction was correct. `which ls` showed that `/home/ali/bin/ls` is being selected, and running `ls` produced `gotcha`, confirming that the fake `ls` was executed.
