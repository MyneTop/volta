# package rust build result
ls volta
ls volta/target
ls volta/target/release
ls volta/target/release/volta
echo "================================"
echo ${steps.check-upstream.outputs.version}
EXT_RELEASE=${steps.check-upstream.outputs.version}
tar -czf volta-$EXT_RELEASE.tar.gz volta/target/release/volta/volta \
 volta/target/release/volta/volta-migrate \
 volta/target/release/volta/volta-shim