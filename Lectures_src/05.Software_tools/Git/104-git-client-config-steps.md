# Git Cli

Here some notes about a couple of things to consider to use the git cli.

## Authentication

For authentication, instead of password we are using _public_ and _private_ keys.
One can find more information [here](https://sectigo.com/resource-library/what-is-an-ssh-key#:~:text=An%20SSH%20key%20relies%20upon,be%20encrypted%20and%20stored%20safely.).

To check whether we have key on the machine we work on, we can give the command below

* __Linux__

```bash
cat ~/.ssh/id_rsa.pub 
```

* __Windows__

Open `cmd` and type

```bash
%userprofile%\.ssh\id_rsa.pub
```

This allows to check if one already has the SSH keys.

If not we need to generate a key.
This is easily done by

```bash
ssh-keygen -t rsa -b 4096 -C "<Your Email>@yourprovider.com"
```

Note, `-C` is for adding comment for ourself in order to annotate that this key is for this email/user.

Now we generated a key, so we need to add the public key into github.

```bash
cd ~
cd .ssh
ls -lah
cat id-rsa.pub
```

Basically `id-rsa.pub` is the public key, or you need to use whatever name you used during key generation!

To add such authentication key in GitHub, just copy the key and paste into github site appropriate section.

__Note__: If you are using windows there will be an `.ssh` folder in your user profile directory which contain your Public and private keys.
