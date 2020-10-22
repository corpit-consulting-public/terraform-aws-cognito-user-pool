#!/bin/bash

TERRA=$1

cd ../
echo "" > README.md
for i in `ls doc`
  do cat ./doc/$i >> README.md
done

if [ $TERRA -eq "12" ] ; then
 docker run --rm -v $(pwd):/data cytopia/terraform-docs terraform-docs-012 --sort-inputs-by-required md . >> README.md
else
 terraform-docs md --sorted--sort-inputs-by-required . >> README.md
fi

exit 0
