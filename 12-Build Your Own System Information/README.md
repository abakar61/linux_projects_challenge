# Challenge 1 — Build Your Own System Information Command

## 📌 Overview

In this challenge, I created a Bash script that collects and displays important information about an Ubuntu Linux system.

Instead of checking each piece of information manually, the script automatically collects the information and displays it as a simple **System Report**.

This is an important skill for **System Administration** and **Cloud Engineering** because administrators often need to quickly check the status and configuration of a server.

---

## 🎯 Objectives

The main objectives of this challenge are to:

* Understand how Bash commands work.
* Use variables in a Bash script.
* Use command substitution.
* Collect information from the Linux operating system.
* Display system information in a readable format.
* Make a Bash script executable.
* Run the script from the Ubuntu terminal.

---

## 🖥️ Lab Environment

| Item             | Description        |
| ---------------- | ------------------ |
| Operating System | Ubuntu Linux       |
| Virtualization   | VirtualBox         |
| Shell            | Bash               |
| Script Name      | `system_report.sh` |
| Script Type      | Bash Shell Script  |

---

# 1. Create the Script

First, I created a Bash script called:

```bash
system_report.sh
```

I used the `nano` text editor:

```bash
nano system_report.sh
```

The script contains commands that collect information about the current Linux system.

---

# 2. Bash Script

The script is:

```bash
#!/bin/bash

echo "========== SYSTEM REPORT =========="

echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Directory: $(pwd)"
echo "Date and Time: $(date)"
echo "Kernel Version: $(uname -r)"
echo "System Uptime: $(uptime -p)"

echo "Disk Usage:"
df -h /

echo "Memory Usage:"
free -h

echo "==================================="
```

---

# 3. Understanding the Script

## `#!/bin/bash`

```bash
#!/bin/bash
```

This tells Linux:

> Run this script using Bash.

---

## `echo`

```bash
echo "Username: ..."
```

`echo` displays text in the terminal.

Example:

```bash
echo "Hello Linux"
```

Output:

```text
Hello Linux
```

---

## `$(whoami)`

```bash
$(whoami)
```

`whoami` shows the username of the current user.

Example:

```text
Username: ali
```

---

## `$(hostname)`

```bash
$(hostname)
```

`hostname` shows the name of the computer/server.

Example:

```text
Hostname: Ubuntu1
```

---

## `$(pwd)`

```bash
$(pwd)
```

`pwd` means **Print Working Directory**.

It shows the directory where I am currently working.

Example:

```text
Current Directory: /home/ali
```

---

## `$(date)`

```bash
$(date)
```

Displays the current date and time.

---

## `$(uname -r)`

```bash
$(uname -r)
```

Displays the Linux kernel version.

The `-r` option means:

> Show the kernel release.

---

## `$(uptime -p)`

```bash
$(uptime -p)
```

Displays how long the system has been running.

Example:

```text
System Uptime: up 2 hours, 15 minutes
```

---

## `df -h /`

```bash
df -h /
```

Shows disk-space information for the root filesystem `/`.

The `-h` means:

> Human-readable format.

Instead of showing only bytes, Linux displays values such as:

```text
10G
500M
2.5G
```

---

## `free -h`

```bash
free -h
```

Shows memory information.

The `-h` again means:

> Human-readable format.

It displays information about:

* RAM
* Used memory
* Free memory
* Available memory

---

# 4. Make the Script Executable

After creating the script, I checked its permissions:

```bash
ls -l system_report.sh
```

Initially, the script may not have execute permission.

I used:

```bash
chmod +x system_report.sh
```

`chmod` changes file permissions.

The `+x` means:

> Add execute permission.

---

![Project 1](screenshots/project1.png)

and/or:

```bash
chmod +x system_report.sh
ls -l system_report.sh
```


---

# 5. Run the Script

I ran the script using:

```bash
./system_report.sh
```

The `./` means:

> Run the program/script from the current directory.

The script then collects information from Ubuntu.

---

![Project 1](screenshots/project2.png)

```bash
./system_report.sh
```

and the generated system report.


---

# 6. Example Output

The output should look similar to:

```text
========== SYSTEM REPORT ==========
Username: ali
Hostname: Ubuntu1
Current Directory: /home/ali
Date and Time: Fri Sep 25 15:00:00 CAT 2026
Kernel Version: 6.x.x
System Uptime: up 1 hour, 20 minutes

Disk Usage:
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda2        20G  6.0G   13G  32% /

Memory Usage:
               total        used        free
Mem:            7.7Gi       2.1Gi       3.5Gi

===================================
```

The exact values will be different on each Ubuntu VM.

---

# 7. Test Individual Commands

Before finishing the challenge, I also tested the commands individually.

For example:

```bash
whoami
hostname
pwd
date
uname -r
uptime -p
df -h /
free -h
```

This helped me understand what each command does instead of simply copying the script.

---

![Project 1](screenshots/project3.png)

```bash
whoami
hostname
pwd
uname -r
df -h /
free -h
```


---

# 8. What I Learned

Through this challenge, I learned:

### 1. Bash can automate tasks

Instead of typing many commands every time, I can put them into a script.

### 2. Command substitution

I learned that:

```bash
$(command)
```

allows the output of one command to be used inside another command.

For example:

```bash
echo "My username is $(whoami)"
```

---

### 3. File permissions

I learned how to make a script executable:

```bash
chmod +x system_report.sh
```

---

### 4. System information commands

I practiced:

```bash
whoami
hostname
pwd
date
uname
uptime
df
free
```

---

### 5. Automation

The most important lesson is that Bash can automate repetitive system administration tasks.

Instead of checking:

```text
Username
Hostname
Kernel
Uptime
Disk
Memory
```

one by one, I can run:

```bash
./system_report.sh
```

and get the information automatically.

---

# 9. Why This Is Useful for System Administration

System administrators need to know the condition and configuration of servers.

A system-report script can quickly provide information about a server.

For example:

```text
Server
  │
  ├── Hostname
  ├── User
  ├── Kernel
  ├── Uptime
  ├── Disk
  └── Memory
```

This can be useful when troubleshooting a Linux server.

---

# 10. Why This Is Useful for Cloud Engineering

Cloud engineers also work with Linux servers.

When a virtual machine or cloud server is created, an administrator may need to quickly check:

* What server am I connected to?
* Which user am I using?
* Which kernel is running?
* How much disk space is available?
* How much memory is available?
* How long has the server been running?

A Bash script can automate these checks.

---

# 11. Challenge Summary

```text
Create Script
     ↓
Write Linux Commands
     ↓
Make Script Executable
     ↓
Run Script
     ↓
Collect System Information
     ↓
Display System Report
```

### Final command

```bash
./system_report.sh
```

The final result is a simple **Linux System Information Tool** that can be used as a foundation for more advanced system-administration automation.
