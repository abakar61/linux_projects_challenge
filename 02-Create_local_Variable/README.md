# A1 — Creating a Local Variable

## Objective

Create a local variable named `project` with the value `Meridian Server` and display it using `echo`.

## Command

```bash
project="Meridian Server"
echo "$project"
```

## Explanation

* `project` → the variable name.
* `=` → assigns a value to the variable.
* `"Meridian Server"` → the value stored in the variable.
* Quotes are important because the value contains a **space**.
* `echo "$project"` → displays the value of the variable.

## Expected Output

```text
Meridian Server
```

## Screenshot

**Add your terminal screenshot below:**

> 📸 **SCREENSHOT PLACEHOLDER**
>
> Paste your screenshot here showing the command and the output.

## Key Point

When a variable's value contains a space, put the value inside quotes:

```bash
project="Meridian Server"
```

Do not put spaces around `=`.

Correct:

```bash
project="Meridian Server"
```

Wrong:

```bash
project = "Meridian Server"
```
