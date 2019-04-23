#!/bin/sh

OUTPUT_DIR="dist"
COMMON_GENERATION_HTML_ARGS="-a icons -a toc2 -a toclevels=3"


# Launch commands
rm -rf $OUTPUT_DIR
mkdir -p $OUTPUT_DIR

# Generate HTML
cmd="$GENERATION_COMMAND_PREFIX asciidoctor $COMMON_GENERATION_HTML_ARGS -o $OUTPUT_DIR/index.html index.adoc"
echo $cmd
$cmd
cp -r images/ $OUTPUT_DIR
#ls -al $OUTPUT_DIR
