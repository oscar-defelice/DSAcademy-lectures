# Managing commit signature verification

If you are dealing with commits that are not signed then this means someone may have pushed to your repository claiming to be you.
For that matter, someone could have pushed to someone else's repository claiming to be you (someone could push to their own repository claiming to be you too).

With signing of the commits (and tags), one can prove that certain commits and tags were from you (and things that are not signed shouldn't have made it into the production build).
That is really the key to it all—by signing commits.
You can claim it is your work.

## Steps for configuring commit signature verification

### Install gpg on your machine

>- run `gpg --full-generate-key`
>- run `gpg --list-secret-keys --keyid-format LONG`
>- run `gpg --armor --export <id of your key from above command>`

And copy paste the output to your github account.

### Go to your repo

> run `git config commit.gpgSign true`
> run `git config user.signingkey <key id>`

### Error in WLS (Windows 10)

An error might occur on Windows 10.

```bash
error: gpg failed to sign the data
fatal: failed to write commit object
```

To solve this, you can use the code below.

```bash
export GPG_TTY=$(tty)
```

And to make it permanent you can add it to your bash profile.

```bash
vi ~/.bashrc
```

## References

- [More information](https://help.github.com/en/articles/managing-commit-signature-verification)
- [A complete resource](https://zacharyvoase.com/2009/08/20/openpgp/)
- [An useful tutorial](https://www.youtube.com/user/GitHubGuides)
