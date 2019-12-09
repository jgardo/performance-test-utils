source "$HOME/.sdkman/bin/sdkman-init.sh"
source ./properties.sh

availableVersions=`sdk ls java`
for i in "${versions[@]}"
do
    availableVersion=`echo $availableVersions | grep -E -o "$i"`
    sdk use java $availableVersion
    if [[ $? -eq 0 ]]
    then
      echo `java -version`
    fi 
done

