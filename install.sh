#curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

versionToInstall=( "8[0-9a-z.]+j9-adpt" "8[0-9a-z.]+-open" "8[0-9a-z.]+-zulu[^a-z]" "11[0-9a-z.]+j9-adpt" "11[0-9a-z.]+-open" "11[0-9a-z.]+-zulu[^a-z]" )

availableVersions=`sdk ls java`
for i in "${versionToInstall[@]}"
do
    availableVersion=`echo $availableVersions | grep -E -o "| $i"`
	echo "Try to install $availableVersion"
	`sdk install java $availableVersion`
done
