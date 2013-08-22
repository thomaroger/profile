Personnalisation
=======


## Contenu de .bash_profile

```
# Fonctions
source <path>/functions.sh

# Alias
source <path>/alias.sh

# Variables d'environnement
source <path>/envs.sh

```

## Listes des applications

```
less <path>/apps
```

## Configuration GIT (.gitconfig)

```
[color]
status = auto

[color "status"]
added = green
changed = blue
untracked = magenta
deleted = red
[alias]
        co = checkout
        ci = commit
[user]
        name = <name>
        email = <email>
```

## Configuration gem ruby

```
sudo gem update --system
sudo gem install highline
sudo gem list
```