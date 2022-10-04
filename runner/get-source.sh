# download upstream latest release source code
EXT_RELEASE=$(curl -sX GET https://api.github.com/repos/volta-cli/volta/releases/latest | jq -r '. | .tag_name' | sed 's|^v||')
curl -JL "https://github.com/volta-cli/volta/archive/refs/tags/v$EXT_RELEASE.tar.gz" -o volta.tar.gz

# extract source code
tar -xzf volta.tar.gz
mv volta-$EXT_RELEASE/ volta
ls -l volta