CHANNEL="stable"
BUILD="1353.8.0"
COREOS_SOURCE="https://${CHANNEL}.release.core-os.net/amd64-usr/${BUILD}"
FILES="coreos_production_pxe.vmlinuz coreos_production_pxe_image.cpio.gz"
for FILE in $FILES; do
  curl -L $COREOS_SOURCE/$FILE -o $FILE
done
