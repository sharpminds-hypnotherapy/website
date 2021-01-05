#!/bin/sh

export PROD_BUCKET="new.sharpmindshypnotherapy.co.uk"
pushd _site
echo "Deploying to $PROD_BUCKET"
gsutil -m cp -R . gs://$PROD_BUCKET
popd
