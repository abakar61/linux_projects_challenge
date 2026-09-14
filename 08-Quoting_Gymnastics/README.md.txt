# Part C — Quoting Gymnastics

Given:

```bash
msg="Report for $USER: 100% complete!"
```

## C1. Print `msg` fully expanded

**Command:**

```bash
echo "$msg"
```

**Explanation:**
Double quotes allow the variable `$msg` to be expanded. The `$USER` inside `msg` was already expanded when `msg` was created.

**Expected output:**

```text
Report for your_username: 100% complete!
```

---

## C2. Print the literal string without expanding `$USER`

**Command:**

```bash
echo 'Report for $USER: 100% complete!'
```

**Explanation:**
Single quotes prevent variable expansion. Therefore, `$USER` is printed exactly as `$USER`.

**Expected output:**

```text
Report for $USER: 100% complete!
```

---

## C3. Expand `$USER` but keep `$5` literal

**Command:**

```bash
echo "$USER"'$5'
```

**Explanation:**
This mixes two quoting techniques:

* `"$USER"` → double quotes expand `$USER`.
* `'$5'` → single quotes keep `$5` literal.

**Expected output:**

```text
your_username$5
```

---

## C4. Build a backup folder name using today's date

**Command using `$(...)`:**

```bash
echo "backup-$(date +%Y-%m-%d)"
```

**Explanation:**
`$(date +%Y-%m-%d)` runs the `date` command and inserts today's date into the string.

For example:

```text
backup-2026-09-14
```

This only prints the folder name. **It does not create the folder.**

---

## Ubuntu Screenshot

**Screenshot of the Ubuntu terminal showing C1, C2, C3, and C4 commands and their outputs:**

> 📸 **[Insert Ubuntu terminal screenshot here]**
