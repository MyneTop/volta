EXT_VERSION=$(curl -sX GET https://api.github.com/repos/MyneTop/volta/releases/latest | jq -r '. | .tag_name' | sed 's|^v||')
echo "upstream version: $EXT_VERSION"
echo "version=$EXT_VERSION" >> $GITHUB_OUTPUT