EXT_RELEASE=$(curl -sX GET https://api.github.com/repos/volta-cli/volta/releases/latest | jq -r '. | .tag_name' | sed 's|^v||')
echo "current version: $EXT_RELEASE"
echo "version=$EXT_RELEASE" >> $GITHUB_OUTPUT