# A2 — Creating an Environment Variable

## Objective

Turn the `project` variable into an **environment variable in a single step** and confirm that it is visible to child processes.

## Command

```bash
export project="Meridian Server"
env | grep '^project='
```

## Explanation

### 1. Create the environment variable

```bash
export project="Meridian Server"
```

* `export` → makes `project` an environment variable.
* `project` → the variable name.
* `=` → assigns a value.
* `"Meridian Server"` → the value of the variable.
* Quotes are important because the value contains a space.

This creates the variable and exports it **in one command**.

### 2. Confirm the variable

```bash
env | grep '^project='
```

* `env` → displays environment variables.
* `|` → sends the output of `env` to `grep`.
* `grep` → searches and filters the output.
* `'^project='` → searches for a line that starts with `project=`.

## Expected Output

```text
project=Meridian Server
```

If `project=Meridian Server` appears, it confirms that `project` is an environment variable and is available to child processes.

## Screenshot

**Add your terminal screenshot below:**

> 📸 **SCREENSHOT PLACEHOLDER**
>
> Paste your screenshot here showing the command and the output.

## Key Point

A local variable:

```bash
project="Meridian Server"
```

An environment variable:

```bash
export project="Meridian Server"
```

The `export` command makes the variable available to programs started from the current shell.
