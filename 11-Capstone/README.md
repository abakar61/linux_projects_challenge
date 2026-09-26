# Part E — Capstone

## E1. Create the `syscheck` function

**Function definition:**

```bash
syscheck() {
    local user="$USER"
    echo "System check for $user on $(date +%Y-%m-%d)"
    which git && echo "Git is installed" || echo "Git is not installed"
}
```

**Explanation:**

The function contains all the required elements:

* `syscheck() { ... }` → defines a Bash function called `syscheck`.
* `local user="$USER"` → creates a **local variable** called `user`.
* `$(date +%Y-%m-%d)` → uses **command substitution** to run `date` and insert today's date into the output.
* `which git` → checks whether the `git` command is installed and available in the `PATH`.
* `&&` → runs `"Git is installed"` if `which git` succeeds.
* `||` → runs `"Git is not installed"` if `which git` fails.
* `echo` → prints the report.

The function does not need any arguments. Simply run:

```bash
syscheck
```

**Example real run:**

```text
System check for ali on 2026-09-17
/usr/bin/git
Git is installed
```

The exact username, date, and Git location may be different on your Ubuntu system.

---

## E2. Confirm that `syscheck` is a function

**Command:**

```bash
type syscheck
```

**Expected output:**

```text
syscheck is a function
syscheck ()
{
    local user="$USER";
    echo "System check for $user on $(date +%Y-%m-%d)";
    which git && echo "Git is installed" || echo "Git is not installed"
}
```

**Explanation:**

`type syscheck` tells Bash what kind of command `syscheck` is.

The important part is:

```text
syscheck is a function
```

This confirms that Bash has registered `syscheck` as a function.

---

## E2. External command with the same name

If someone later creates an external executable also called `syscheck` somewhere in the `PATH`, typing:

```bash
syscheck
```

will normally still run the **function**.

**Why?**

Bash checks commands in a lookup order. A shell function has a higher lookup priority than an external command found through `PATH`.

For example:

```text
syscheck
   ↓
Is there a function called syscheck?
   ↓
YES
   ↓
Run the function
```

Bash does not continue searching `PATH` once it finds the function.

**To check the different possibilities, you can use:**

```bash
type -a syscheck
```

This can show the function as well as external commands with the same name.

---

## Ubuntu Screenshot

**Screenshot of the Ubuntu terminal showing the `syscheck` function definition, the real `syscheck` run, and `type syscheck`:**

> 📸 **[Insert Ubuntu terminal screenshot here]**

