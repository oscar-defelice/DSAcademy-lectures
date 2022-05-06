# Git basics

Git thinks of its data more like a set of snapshots of a mini filesystem. Every time you change a file, the state of your project in Git changes.
In order to register this change you need to explicitly indicate in a message string (_commit subject_) what you have done and then _commit_ to the repository.

When this happens Git basically takes a picture of what all your files look like at that moment and stores a reference to that snapshot.
To be efficient, if files have not changed, Git doesn’t store the file again, it just links to the previous identical file it has already stored.

![git](https://git-scm.com/figures/18333fig0105-tn.png)

## Nearly Every Operation Is Local

Most operations in Git only need local files and resources to operate — generally no information is needed from another computer on your network.
Because you have the entire history of the project right there on your local disk, most operations seem almost instantaneous.

## Git Has Integrity

Everything in Git is check-summed before it is stored and is then referred to by that checksum.
This means it is impossible to change the contents of any file or directory without Git knowing about it.
This functionality is built into Git at the lowest levels and is integral to its philosophy.
You cannot lose information in transit or get file corruption without Git being able to detect it.

The mechanism that Git uses for this checksumming is called a `SHA-1` hash. This is a 40-character string composed of hexadecimal characters (`0–9` and `a–f`) and calculated based on the contents of a file or directory structure in Git.
A `SHA-1` hash looks something like this:

    508d2f5302ad7433af08eedbbd7d398cb09827b1

## Git Three states

Git has three main states that your files can reside in:

    modified
    staged
    committed

### Modified

> Modified means that you have changed the file but have not committed it to your database yet.

### Staged

> Staged means that you have marked a modified file in its current version to go into your next commit snapshot.

### Committed

> The data is safely stored in your local database.

## The three main sections of a Git project

This leads us to the three main sections of a Git project:

* the Git directory;
* the working directory;
* the staging area.

![Local operations](https://git-scm.com/figures/18333fig0106-tn.png)

The __Git directory__ is where Git stores the metadata and object database for your project.
This is the most important part of Git, and it is what is copied when you clone a repository from another computer.

The __working directory__ is a single checkout of one version of the project.
These files are pulled out of the compressed database in the Git directory and placed on disk for you to use or modify.

The __staging area__ is a simple file, generally contained (hidden) in your Git directory, that stores information about what will go into your next commit.
It is sometimes referred to as the index, but it is becoming standard to refer to it as the _staging area_.

The basic Git workflow goes something like this:

1. You modify files in your working directory.
2. You stage the files, adding snapshots of them to your staging area.
3. You do a commit, which takes the files as they are in the staging area and stores that snapshot permanently to your Git directory.

If a particular version of a file is in the Git directory, it is considered committed.
If it is modified but has been added to the staging area, it is staged.
Finally, if it was changed since it was checked out but has not been staged, it is modified.
