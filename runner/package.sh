# package rust build result
mkdir pub
cp volta/target/aarch64-unknown-linux-gnu/release/volta pub
cp volta/target/aarch64-unknown-linux-gnu/release/volta-migrate pub
cp volta/target/aarch64-unknown-linux-gnu/release/volta-shim pub
cd pub
tar -czf volta-$VERSION.tar.gz *
cp volta-$VERSION.tar.gz ../
# tar -czf volta-$VERSION.tar.gz volta/target/aarch64-unknown-linux-gnu/release/volta \
#  volta/target/aarch64-unknown-linux-gnu/release/volta-migrate \
#  volta/target/aarch64-unknown-linux-gnu/release/volta-shim