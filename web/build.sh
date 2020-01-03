#!/usr/bin/env sh

mkdir -p public/static/out public/static-extension
cp -r ../out/ public/static/out/
cp -r ../remote/ public/static/remote

for ext in vscode-api-tests theme-defaults
do
	cp -r ../extensions/$ext/ public/static-extension/$ext/
done

(
	cd public/static/remote/web
	yarn install
	cp -r node_modules/ modules/
)
