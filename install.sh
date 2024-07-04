#!/bin/bash

rm -rf $HOME/.jamrock
mkdir -p $HOME/.jamrock
curl https://jamrock.dev/jamrock-0.0.0.tgz | tar zx -C $HOME/.jamrock/

CLI=/usr/local/bin/jamrock

cat << EOF > $CLI
#!/bin/bash
$HOME/.jamrock/package/bin/node \$*
EOF

chmod +x $CLI

echo "Done, now grab a beer!"
