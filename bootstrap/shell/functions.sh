# Check if given yum package is installed
function isInstalled
{
    if yum list installed "$@" >/dev/null 2>&1;
    then
        return 0
    else
        return 1
    fi
}

# Install a package
function installPackage
{
    if ! isInstalled "$@"
    then
        sudo yum -y install "$@"
    else
        echo "$@ already installed"
    fi
}

# installs composer package
function installComposerPackage
{
    if [ ! -d ~/.composer/vendor/"$@" ]; then
        /usr/local/bin/composer global require "$@"
    else
        echo "Composer package $@ is already installed globally."
    fi
}

# installs node js package
function installNodePackage
{
    NODEROOT=`npm root -g`

    if [ ! -d $NODEROOT/"$@" ]; then
        sudo npm install -g "$@"
    else
        echo "NodeJS package $@ is already installed globally."
    fi
}