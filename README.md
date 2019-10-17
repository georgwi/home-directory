# Home Directory
Some Ubuntu Configurations for a fresh setup.

### Usage
`sudo apt install git`

In your home directory execute
```
git init
git remote add origin https://github.com/georgwi/home-directory.git
git fetch
git reset --hard origin/master
```
Note, that this may overwrite some settings you might have made in your `.bashrc` for example.

### Symbolic Links
This sets up some symbolic links that point to executables that are assumed to exist in the `Software` folder in the home directory. E.g. Gradle should be installed there.

### TODO
 - Add setup script that installs packages.
