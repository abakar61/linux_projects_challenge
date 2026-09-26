# Part D — Control Statement Chains

## D1. Use `;`, `&&`, and `||` together

**Command:**

```bash
cd /etc/ppp && ls -lh || echo "Error: could not enter /etc/ppp"; echo "Check complete"
```

**Explanation:**

This command uses three control operators:

* `&&` → runs the next command **only if the previous command succeeds**.
* `||` → runs the next command **if the previous command fails**.
* `;` → runs the next command **regardless of whether the previous command succeeds or fails**.

The command works in this order:

1. `cd /etc/ppp` → attempts to enter the `/etc/ppp` directory.
2. `&& ls -lh` → if `cd` succeeds, lists the directory contents in long, human-readable format.
3. `|| echo "Error: could not enter /etc/ppp"` → if the previous chain fails, prints an error message.
4. `; echo "Check complete"` → always prints `Check complete` at the end.

**Expected output if `/etc/ppp` exists:**

```text
[contents of /etc/ppp shown here]
Check complete
```

**Expected output if `cd /etc/ppp` fails:**

```text
Error: could not enter /etc/ppp
Check complete
```

---

## Ubuntu Screenshot

**Screenshot of the Ubuntu terminal showing the D1 command and its output:**

> 📸 **[Insert Ubuntu terminal screenshot here]**
