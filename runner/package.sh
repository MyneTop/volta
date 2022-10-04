# package rust build result
ls volta/target
echo "================================"
ls volta/target/release
echo "================================"
ls volta/target/release/build
echo "================================"
echo $VERSION
EXT_RELEASE=${steps.check-upstream.outputs.version}
tar -czf volta-$VERSION.tar.gz volta/target/release/build/volta \
 volta/target/release/build/volta-migrate \
 volta/target/release/build/volta-shim