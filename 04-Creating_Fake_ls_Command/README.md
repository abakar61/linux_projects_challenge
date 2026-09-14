# A4 — Fake `ls` Command and PATH Precedence

## Objective

Create a fake executable named `ls` inside `~/bin`, then use `which ls` to predict whether the **fake `ls`** or the **real `ls`** would run.

> **Important:** Do not run `ls` itself.

---

## 1. Create the fake `ls`

Run:

```bash
nano ~/bin/ls
```

Put this inside:

```bash
#!/bin/bash
echo "gotcha"
```

Save and exit.

---

## 2. Make it executable

Run:

```bash
chmod +x ~/bin/ls
```

* `chmod` → changes file permissions.
* `+x` → makes the file executable.
* `~/bin/ls` → our fake `ls`.

---

## 3. Check which `ls` will run

Do **not** type `ls`.

Run:

```bash
which ls
```

If the result is:

```text
/home/yourname/bin/ls
```

then the **fake `ls`** would run.

If the result is:

```text
/usr/bin/ls
```

then the **real `ls`** would run.

---

## 4. Why?

Earlier, we used:

```bash
export PATH="$HOME/bin:$PATH"
```

This puts `~/bin` at the **beginning** of `PATH`.

For example:

```text
/home/yourname/bin:/usr/local/bin:/usr/bin:/bin
```

Linux searches `PATH` from **left to right**:

```text
~/bin → /usr/bin → /bin
  ↓
fake ls found first
  ↓
STOP
```

Therefore, if `~/bin/ls` exists and is executable, it will have priority over the real `ls`.

---

## 5. Why use `which ls`?

```bash
which ls
```

`which` shows **where the command will be found**.

It does **not** execute `ls`.

So it allows us to predict which `ls` would run without actually running it.

---

## Screenshot

Take **one screenshot** showing the important commands and the final result:

```bash
chmod +x ~/bin/ls
which ls
```

> **[SCREENSHOT HERE]**

---

## Key Lesson

> **Linux searches directories in `PATH` from left to right. The first matching executable gets priority.**
