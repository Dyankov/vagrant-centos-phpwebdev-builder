# Extra Packages for Enterprise Linux Repos
installPackage epel-release
sudo rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm

# Other repos as a file
REPOS=/vagrant/bootstrap/yum-repos/*.repo
for repo in $REPOS
do
    if [ ! -f /etc/yum.repos.d/"$(basename "$repo")" ]; then
        echo "Adding $(basename "$repo" .repo) repo"
        sudo cp $repo /etc/yum.repos.d/
    else
        echo "Repo $(basename "$repo" .repo) is already added to repost list"
    fi
done