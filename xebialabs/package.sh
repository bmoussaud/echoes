#oc set build-hook bc/echoes-bc --post-commit --script="sh /xebialabs/package.sh"
#https://docs.openshift.org/latest/dev_guide/builds/build_hooks.html
echo "ENV"
env
echo "set"
set
echo "---"
APP_VER=$OPENSHIFT_BUILD_NAME
XLDEPLOY_URL="http://192.168.99.1:4545"

echo "APP_VER      : $APP_VER"
echo "XLDEPLOY_URL : $XLDEPLOY_URL"

sed -i "s/@APP_VERSION@/$APP_VER/g" /xebialabs/deploymentconfig.yaml
sed -i "s/@APP_VERSION@/$APP_VER/g" /xebialabs/deployit-manifest.xml

echo "----- deployit-manifest --"
cat /xebialabs/deployit-manifest.xml
echo "-----"

echo "Creating DAR file for XLDEPLOY"
cd /xebialabs; zip -r /tmp/xebialabs.dar ./*; cd ..;
unzip -l /tmp/xebialabs.dar
echo "Push package to XLDEPLOY"
#curl -uadmin:admin -X POST -H "content-type:multipart/form-data" $XLDEPLOY_URL/deployit/package/upload/xebialabs.dar -F fileData=@/tmp/xebialabs.dar
