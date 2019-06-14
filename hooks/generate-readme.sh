#!/bin/bash
cd ../
echo "" > README.md
for i in `ls doc`
  do cat ./doc/$i >> README.md
done
terraform-docs md --sorted--sort-inputs-by-required . >> README.md
