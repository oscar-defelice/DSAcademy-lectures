# Practical Git and GitHub

## Git installation

Go to [Git download page](https://git-scm.com/downloads) and follow the steps for installing git on your workstation.

## Open GitHub account

Go to [https://github.com](https://github.com) and sign-up for a free account.

Here you can find a [Git setup help](https://help.github.com/en/articles/signing-up-for-a-new-github-account).

## Git setup on your workstation

### windows 10 & Ubuntu

[My suggestion is install Windows Linux Subsystem (WSL)](https://docs.microsoft.com/en-us/windows/wsl/install-win10).
Doing so, you basically have a Ubuntu shell in Windows to work with and you can easily install git by

```bash
sudo apt-get install git -y
```

### MacOS

#### Step 1 – Install [*Homebrew*](http://brew.sh/)

> *Homebrew* is a package manager that simplifies the installation of software on MacOS operating systems.

```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
```

You will be offered to install the *Command Line Developer Tools* from Apple.
__Confirm by clicking *Install*__.

After the installation finished, continue installing *Homebrew*.

### Step 2 – Install *Git*

This can now be done easily via

```bash
brew install git
```

Congratulations!
You can use Git now.

__Note__: Each folder / project in github ecosystem is called repository.

### First-time setup

You need to run:

```bash
git config --global user.name "Example John Doe"
```

```bash
git config --global user.email johndoe@example.com
```

This is gonna set a user globally for all of your folders / projects / repositories.

__Note__: `global` means your current user in the system.

You can actually overwrite user for each repository, but we will talk about it later.

## How git config works

Git comes with a tool called `git config` that lets you get and set configuration variables that control all aspects of how Git looks and operates.
These variables can be stored in three different places:

* `/etc/gitconfig` file: Contains values for every user on the system and all their repositories.
If you pass the option `--system` to `git config`, it reads and writes from this file specifically.

* `~/.gitconfig` file: Specific to your user.
You can make Git read and write to this file specifically by passing the `--global` option.

* `config` file: Specific to the repository.
It is contained in the Git directory (that is, `.git/`) of whatever repository you are currently using.
Each level overrides values in the previous level, so values in `.git/config` trump those in `/etc/gitconfig`.

On Windows systems, Git looks for the `.gitconfig` file in the `$HOME` directory (`%USERPROFILE%` in Windows’ environment), which is `C:\Documents` and `Settings\$USER` or `C:\Users\$USER` for most people, depending on version (`$USER` is `%USERNAME%` in Windows’ environment).

### Checking your settings

If you want to check your settings, you can use the `git config --list` command to list all the settings Git can find at that point:

```bash
    git config --list

    user.name=oscar de felice
    user.email=oscar-defelice@gmail.com
    color.status=auto
    color.branch=auto
    color.interactive=auto
    color.diff=auto
    user.name=oscar-defelice
    user.email=oscar@oscardefelice.com
    ...
```

You may see keys more than once, because Git reads the same key from different files (`/etc/gitconfig` and `~/.gitconfig`, for example).
In this case, Git uses the *last value* for each unique key it sees.

You can also check what Git thinks a specific key’s value is by typing `git config {key}`.
*E.g.*

```bash
git config user.name

oscar de felice
```
