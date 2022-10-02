EXT_RELEASE=$(curl -sX GET https://api.github.com/repos/volta-cli/volta/releases/latest | jq -r '. | .tag_name' | sed 's|^v||')
echo "current version: $EXT_VERSION"
echo "::set-output name=version::$(EXT_RELEASE)"