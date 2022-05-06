# GitHub

Here we are going to get our hands dirty and start using GitHub.

## Introduction

There are two main methods to begin with:

* The first one is creating a repository online via Web gui, _clone_ it to our local machine and start using it.

This method is usually good when you are starting from scratch on a brand new repository/project!

* The second one is the time you have a project and its been a while you worked on it and now you want to put it also on GitHub and managing it via git version control systems.

You can also refer to the previous case by creating a new repository, cloning it locally and then transfer your local project in the repository directory.

### Create a new repository online

Let's now start by signing in our GitHub account and hit on the `+` sign on the top right corner.
Then "__New Repository__".

<p align="center">
    <img width="303" alt="image" src="https://user-images.githubusercontent.com/49638680/166967649-e25a57ce-ee52-4008-8a5f-abfe3f5b96c6.png">
</p>

This leads us to a page where we need to insert some basic information like repository name, a brief description, etc.
Once we have done this, we are ready to clone the just-created-repository from GitHub into our local drive.

#### Clone the new repository

Open a command line and navigate to your favourite project path.

Hence, launch the command to clone the repo.

```bash
git clone "here copy the link from GitHub site"
```

The GitHub link can be found by clicking on the "_Code_" green button on the top right corner of the repository page.

<p align="center">
    <img width="948" alt="image" src="https://user-images.githubusercontent.com/49638680/166969979-5f2508a2-61f8-4e46-aaa2-464b94125f38.png">
</p>

#### Commit changes to the version control

Imagine now you have opened and modified a file locally and you want to see how git took this change into account.

You can give the `status` command.

```bash
git status
```

In order to add this to your _repository tree_, you need to add the changes to a _registry_ that has to be _committed_ after that.

```bash
git add .
```

This will _stage_ all the files for commit.
You can verify what has changed by the usual

```bash
git status
```

Hence you are ready to _commit_.

```bash
git commit -m "write a message regarding what has changed"
```

And, as usual, check by

```bash
git status
```

__Note__: You can do _stage_ and _commit_ in one shot with

```bash
commit -am "comment"
```

These commands will commit the changes on our local drive.
Meaning on our local copy of repository tree.

Try to launch

```bash
git log
```

#### Push to GitHub

As said, what we have done until now committed changes on our local repository register.
In order to _push_ changes to a remote server we need to execute the command below.

```bash
git push origin master
```

This command will push the changes to the GitHub repository on the _master_ branch.
`origin` is actually your remote repository on GitHub.

### Initiate a local repository

Open a command line interpreter and create a new directory.

```bash
mkdir my-repo
```

Navigate inside the newly created directory.

```bash
cd my-repo
```

Now you are ready to initiate such folder as a git repository.

```bash
git init
```

Hence, create something or copy a file from somewhere.
Stage it.

```bash
git add .
```

Commit.

```bash
git commit -m "First Commit"
```

Connect to a GitHub repository.

```bash
git remote add origin URL
```

And finally push

```bash
git push -u origin master
```
