# Part D — Control Statement Chains

## D2. Check whether `nonexistent_tool123` exists

**Command:**

```bash
which nonexistent_tool123 || echo "Warning: command does not exist"
```

**Explanation:**

`which` checks whether `nonexistent_tool123` can be found in the `PATH`, and `||` runs the `echo` command **only if `which` fails** to find it.

**Expected output:**

```text
Warning: command does not exist
```

Because `nonexistent_tool123` is expected not to exist, `which` fails and the warning is printed.

---

## D3. Fix the command chain

**Original command:**

```bash
mkdir /tmp/testdir && cd /tmp/testdir && ls | echo "empty directory ready"
```

**Problem:**

The `|` sends the output of `ls` to `echo`, but the intention is to run `echo` **after `ls` succeeds**, so `&&` should be used instead.

**Corrected command:**

```bash
mkdir /tmp/testdir && cd /tmp/testdir && ls && echo "empty directory ready"
```

**Explanation:**

* `mkdir /tmp/testdir` → creates the directory.
* `&&` → continues only if the previous command succeeds.
* `cd /tmp/testdir` → enters the directory.
* `&&` → continues only if `cd` succeeds.
* `ls` → lists the directory contents.
* `&&` → runs `echo` only if `ls` succeeds.
* `echo "empty directory ready"` → prints the message.

**Expected output:**

```text
empty directory ready
```

If the directory contains files, `ls` will show them before the message.

---

## Ubuntu Screenshot

**Screenshot of the Ubuntu terminal showing D2 and D3 commands and their outputs:**

> 📸 **[Insert Ubuntu terminal screenshot here]**
