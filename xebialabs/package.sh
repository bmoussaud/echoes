echo "Before assembling"
find .
echo "-------"
mkdir -p /tmp/src
curl https://github.com/jchraibi/tools/blob/master/zip?raw=true -L -o /tmp/src/zip
chmod a+x /tmp/src/zip

/tmp/src/zip


#sed "s/@APP_VERSION@/$APP_VER/g" /tmp/src/xebialabs/work/deploymentconfig-cart.yaml.bak > /tmp/src/xebialabs/work/deploymentconfig-cart.yaml
#sed "s/@APP_VERSION@/$APP_VER/g" /tmp/src/xebialabs/deployit-manifest.xml.bak > /tmp/src/xebialabs/deployit-manifest.xml

#echo "Creating DAR file for XLDEPLOY"
#cd /tmp/src/xebialabs; /tmp/src/zip -r ../xebialabs.dar ./*; cd ..;
#unzip -l /tmp/src/xebialabs.dar
#echo "Push package to XLDEPLOY"
#curl -uadmin:admin -X POST -H "content-type:multipart/form-data" $XLDEPLOY_URL/deployit/package/upload/xebialabs.dar -F fileData=@/tmp/src/xebialabs.dar
