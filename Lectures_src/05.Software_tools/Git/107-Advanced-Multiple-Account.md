# Using multiple github account

It might happen that you need to use more than one GitHub account on the same machine.
For instance, let's assume that you have a personal GitHub account and you have just got hired in a new company and now you also have a corporate account.

You may want to use both of them at the same time.

**Recall:** We configured `user.name` and `user.email` with `git config` command and now we have another username and email to work with.
Luckily, you are also familiar with `config` concept.

## Multiple ssh keys

The idea is to create multiple ssh keys for each account.

Make sure that you are not overwriting any keys, hence use different names.

```bash
ssh-keygen -t rsa -b 4096 -f ~/.ssh/github-otheruser
```

Then we want to create a `config` file.

```bash
(umask 077; touch ~/.ssh/config)
```

with the content below

```bash
Host github.com
     User git
     IdentityFile ~/.ssh/github-mainuser
        
Host github.com-otheruser
     HostName github.com
     User git
     IdentityFile ~/.ssh/github-otheruser
```

Then, import your public keys in GitHub accounts respectively.
To do so, create a repo and map it with your local repo.

```bash
cd ~
mkdir somerepo
cd somerepo
git init
```

Now configure this repo to use your identity

```bash
git config user.name "Mister Manager"
git config user.email "someuser@some.org"
```

Now you are ready to make your first commit

```bash
echo "hello world" > readme
git add .
git commit -m "first commit"
```

Then, check `git log` to make sure its using your correct email account.

```bash
git log
```

What is left is just adding the remote.

```bash
git remote add origin github.com-otheruser:someuser/somerepo.git
```

**Important note**: For remote, we used the address that we configured it in `~/.ssh/config` file.

[resource](https://stackoverflow.com/questions/3860112/multiple-github-accounts-on-the-same-computer)
