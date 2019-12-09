#curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
source ./properties.sh

availableVersions=`sdk ls java`
for i in "${versions[@]}"
do
    availableVersion=`echo $availableVersions | grep -E -o "| $i"`
	echo "Try to install $availableVersion"
	`sdk install java $availableVersion`
done
