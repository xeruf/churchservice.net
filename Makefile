serve: node_modules
	sass . --watch &
	caddy file-server --listen :8888 &
	xdg-open http://localhost:8888

node_modules:
	git config receive.denyCurrentBranch updateInstead
	git config core.hooksPath .dev/githooks
	npm install --no-save
	sass --update .

setup: node_modules

deploy: node_modules
	rsync --recursive --info=progress2,remove,symsafe,flist,del --human-readable index.html node_modules res data iridion:/home/janek/web/churchservice.net/public_html/

local: node_modules
	cp -rf index.html *.geojson node_modules/ res/ ..
