#oc set build-hook bc/echoes-bc --post-commit --script="sh xebialabs/package.sh"
#https://docs.openshift.org/latest/dev_guide/builds/build_hooks.html

echo "Before assembling"
echo "uname..."
uname -a
echo "find..."
find .
echo "-------"
pwd
find /app
find /xebialabs

#mkdir -p /tmp/tools
#curl https://github.com/jchraibi/tools/blob/master/zip?raw=true -L -o /tmp/tools/zip
#chmod a+x /tmp/tools/zip
echo "-zip--"
zip
echo "---"

echo "-curl--"
curl
echo "---"

#sed "s/@APP_VERSION@/$APP_VER/g" /tmp/src/xebialabs/work/deploymentconfig-cart.yaml.bak > /tmp/src/xebialabs/work/deploymentconfig-cart.yaml
#sed "s/@APP_VERSION@/$APP_VER/g" /tmp/src/xebialabs/deployit-manifest.xml.bak > /tmp/src/xebialabs/deployit-manifest.xml

#echo "Creating DAR file for XLDEPLOY"
#cd /tmp/src/xebialabs; /tmp/src/zip -r ../xebialabs.dar ./*; cd ..;
#unzip -l /tmp/src/xebialabs.dar
#echo "Push package to XLDEPLOY"
#curl -uadmin:admin -X POST -H "content-type:multipart/form-data" $XLDEPLOY_URL/deployit/package/upload/xebialabs.dar -F fileData=@/tmp/src/xebialabs.dar
