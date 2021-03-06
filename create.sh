#!/bin/sh

set -eu

SOURCECRED_DIR=~/git/sourcecred
SOURCECRED_CLI="$SOURCECRED_DIR/bin/sourcecred.js"
BUILD_STATIC_SITE="$SOURCECRED_DIR/scripts/build_static_site.sh"
DEMO_DIR=~/git/sourcecred-demos/


gitcoin() (
  cd "$DEMO_DIR"
  rm -rf gitcoin
  "$BUILD_STATIC_SITE" --target gitcoin --feedback-url https://discuss.sourcecred.io/t/gitcoin-cred-feedback/19 --repo gitcoinco/web
  SOURCECRED_DIRECTORY="$DEMO_DIR/gitcoin/api/v1/data/" node "$SOURCECRED_CLI" load gitcoinco/web
)

ipfs() (
  cd "$DEMO_DIR"
  rm -rf ipfs
  "$BUILD_STATIC_SITE" --target ipfs --feedback-url https://discuss.sourcecred.io/t/ipfs-cred-feedback/17
  SOURCECRED_DIRECTORY="$DEMO_DIR/ipfs/api/v1/data/" node "$SOURCECRED_CLI" load ipfs/js-ipfs
  SOURCECRED_DIRECTORY="$DEMO_DIR/ipfs/api/v1/data/" node "$SOURCECRED_CLI" load ipfs/go-ipfs
  SOURCECRED_DIRECTORY="$DEMO_DIR/ipfs/api/v1/data/"  node "$SOURCECRED_CLI" load --output ipfs/top30 \
    ipfs/go-ipfs \
    ipfs/js-ipfs \
    ipfs/js-ipfs-api \
    ipfs/pm \
    ipfs/ipfs-cluster \
    ipfs/interface-ipfs-core \
    ipfs/infrastructure \
    ipfs/js-ipfsd-ctl \
    ipfs/website \
    ipfs/js-ipfs-unixfs-engine \
    ipfs/community \
    ipfs/aegir \
    ipfs/js-libp2p-ipfs-browser \
    ipfs/ipfs \
    ipfs/awesome-ipfs \
    ipfs/js-ipfs-repo \
    ipfs/js-ipfs-bitswap \
    ipfs/distributions \
    ipfs/specs \
    ipfs/blog \
    ipfs/js-libp2p-ipfs-nodejs \
    ipfs/http-api-spec \
    ipfs/go-ipfs-api \
    ipfs/py-ipfs-api \
    ipfs/go-datastore \
    ipfs/notes \
    ipfs/project-repos \
    ipfs/js-ipfs-block-service \
    ipfs/faq \
    ipfs/go-ipfs-cmds \
   ;
)


ropensci() {
  cd "$DEMO_DIR"
  rm -rf ropensci
  "$BUILD_STATIC_SITE" --target ropensci --feedback-url https://discuss.sourcecred.io/t/ropensci-cred-feedback/24
  SOURCECRED_DIRECTORY="$DEMO_DIR/ropensci/api/v1/data/"  node "$SOURCECRED_CLI" load --output ropensci/all \
    ropensci/RMendeley \
    ropensci/taxize \
    ropensci/rplos \
    ropensci/rspringer \
    ropensci/bold \
    ropensci/rbhl \
    ropensci/rnpn \
    ropensci/rgbif \
    ropensci/rvertnet \
    ropensci/rzmq \
    ropensci/rdatacite \
    ropensci/rfisheries \
    ropensci/ritis \
    ropensci/rflybase \
    ropensci/rOpenSci \
    ropensci/rfishbase \
    ropensci/treeBASE \
    ropensci/rfna \
    ropensci/usecases \
    ropensci/rgauges \
    ropensci/rsnps \
    ropensci/citeulike \
    ropensci/ropensci.github.com \
    ropensci/ropensciToolkit \
    ropensci/rebird \
    ropensci/sandbox \
    ropensci/rentrez \
    ropensci/rdryad \
    ropensci/rpensoft \
    ropensci/textmine \
    ropensci/open-science-with-R \
    ropensci/rfigshare \
    ropensci/rhindawi \
    ropensci/rpmc \
    ropensci/rmetadata \
    ropensci/rImpactStory \
    ropensci/RSelenium \
    ropensci/rAltmetric \
    ropensci/rorcid \
    ropensci/elife \
    ropensci/neotoma \
    ropensci/challenge \
    ropensci/rodash \
    ropensci/rWBclimate \
    ropensci/usgs_app \
    ropensci/ImpactReport \
    ropensci/europepmc \
    ropensci/sofa \
    ropensci/alm \
    ropensci/rbison \
    ropensci/dvn \
    ropensci/EML \
    ropensci/gitr \
    ropensci/ropensciDemos \
    ropensci/rnoaa \
    ropensci/ecoengine \
    ropensci/RNeXML \
    ropensci/RMETAR \
    ropensci/spocc \
    ropensci/rtematres \
    ropensci/webservices \
    ropensci/rgpdd \
    ropensci/rcrossref \
    ropensci/rinat \
    ropensci/RefManageR \
    ropensci/mocker \
    ropensci/dbgrowth \
    ropensci/dataone-restful \
    ropensci/rAvis \
    ropensci/elastic \
    ropensci/plotly \
    ropensci/defunct-obis \
    ropensci/screencasts \
    ropensci/AntWeb \
    ropensci/solrium \
    ropensci/git2r \
    ropensci/reml \
    ropensci/paleobioDB \
    ropensci/unconf14 \
    ropensci/reol \
    ropensci/gender \
    ropensci/aRxiv \
    ropensci/bmc \
    ropensci/antweb-guide \
    ropensci/prism \
    ropensci/reproducibility-guide \
    ropensci/rdataretriever \
    ropensci/apistatus \
    ropensci/dependencies \
    ropensci/geojsonio \
    ropensci/traits \
    ropensci/roweb \
    ropensci/rglobi \
    ropensci/geonames \
    ropensci/clifro \
    ropensci/gistr \
    ropensci/fulltext \
    ropensci/rdopa \
    ropensci/ropensci_intro \
    ropensci/ucipp \
    ropensci/RCryptsy \
    ropensci/mocking \
    ropensci/MODIStsp \
    ropensci/hddtools \
    ropensci/pleiades \
    ropensci/biomartr \
    ropensci/docker \
    ropensci/jumpin \
    ropensci/ambassador-packet \
    ropensci/rnbn \
    ropensci/pangaear \
    ropensci/mdextract \
    ropensci/datapack \
    ropensci/FedData \
    ropensci/rotl \
    ropensci/rpwt \
    ropensci/extractr \
    ropensci/historydata \
    ropensci/ots \
    ropensci/USAboundaries \
    ropensci/IEEER \
    ropensci/redland-bindings \
    ropensci/rdpla \
    ropensci/reuropeana \
    ropensci/rtdar \
    ropensci/maptools \
    ropensci/archeology \
    ropensci/elastic_data \
    ropensci/musemeta \
    ropensci/ckanr \
    ropensci/rGEM \
    ropensci/webmockr \
    ropensci/taxizesoap \
    ropensci/rerddap \
    ropensci/dashboard \
    ropensci/chromer \
    ropensci/RStars \
    ropensci/unconf15 \
    ropensci/DoOR.data \
    ropensci/DoOR.functions \
    ropensci/ropkgs \
    ropensci/roregistry \
    ropensci/vcr \
    ropensci/commcalls \
    ropensci/biweekly \
    ropensci/hathi \
    ropensci/cartographer \
    ropensci/docplyr \
    ropensci/finch \
    ropensci/taxizedbs \
    ropensci/DataPackageR \
    ropensci/binomen \
    ropensci/helminthR \
    ropensci/neurobio \
    ropensci/assertr \
    ropensci/wellknown \
    ropensci/stplanr \
    ropensci/brranching \
    ropensci/fishbaseapi \
    ropensci/etseed \
    ropensci/internetarchive \
    ropensci/rif \
    ropensci/ftp \
    ropensci/plotly-test-table \
    ropensci/packaging_guide \
    ropensci/elasticdsl \
    ropensci/policies \
    ropensci/genderdata \
    ropensci/jqr \
    ropensci/proj \
    ropensci/lawn \
    ropensci/rrlite \
    ropensci/webchem \
    ropensci/rchie \
    ropensci/wishlist \
    ropensci/onboarding \
    ropensci/textreuse \
    ropensci/ro \
    ropensci/GSODR \
    ropensci/opencontext \
    ropensci/plater \
    ropensci/nodbi \
    ropensci/rrrpkg \
    ropensci/RedisAPI \
    ropensci/opendata \
    ropensci/cheatsheets \
    ropensci/PackageDevelopment \
    ropensci/ezknitr \
    ropensci/spsqlite \
    ropensci/rostats \
    ropensci/roapi \
    ropensci/oai \
    ropensci/rnaturalearth \
    ropensci/mapr \
    ropensci/USAboundariesData \
    ropensci/suppdata \
    ropensci/rjsonapi \
    ropensci/drat \
    ropensci/rusda \
    ropensci/scrubr \
    ropensci/dappr \
    ropensci/getlandsat \
    ropensci/hex-logos \
    ropensci/seaaroundus \
    ropensci/cyphr \
    ropensci/robotstxt \
    ropensci/mregions \
    ropensci/geoaxe \
    ropensci/ropenaq \
    ropensci/rredlist \
    ropensci/unconf16 \
    ropensci/osmplotr \
    ropensci/originr \
    ropensci/cleanEHR \
    ropensci/visdat \
    ropensci/rnaturalearthdata \
    ropensci/rnaturalearthhires \
    ropensci/rtimicropem \
    ropensci/pdftools \
    ropensci/rdefra \
    ropensci/tesseract \
    ropensci/auunconf \
    ropensci/fishbaseapidocs \
    ropensci/rcoreoa \
    ropensci/hunspell \
    ropensci/taxa \
    ropensci/taxizedb \
    ropensci/fishbasestatus \
    ropensci/tokenizers \
    ropensci/gtfsr \
    ropensci/jsonvalidate \
    ropensci/geojson \
    ropensci/geojsonlint \
    ropensci/opencage \
    ropensci/geoops \
    ropensci/fauxpas \
    ropensci/riem \
    ropensci/gutenbergr \
    ropensci/tabulizer \
    ropensci/ccafs \
    ropensci/tabulizerjars \
    ropensci/geoparser \
    ropensci/smapr \
    ropensci/monkeylearn \
    ropensci/weathercan \
    ropensci/devroadmap \
    ropensci/wikitaxa \
    ropensci/lingtypology \
    ropensci/magick \
    ropensci/phylotaR \
    ropensci/PostcodesioR \
    ropensci/dbhydroR \
    ropensci/bib2df \
    ropensci/gbif-backbone-sql \
    ropensci/camsRad \
    ropensci/jaod \
    ropensci/natserv \
    ropensci/graphql \
    ropensci/ghql \
    ropensci/refimpact \
    ropensci/crevents \
    ropensci/qualtRics \
    ropensci/osmdata \
    ropensci/agent \
    ropensci/getCRUCLdata \
    ropensci/nneo \
    ropensci/crminer \
    ropensci/roadoi \
    ropensci/crul \
    ropensci/isdparser \
    ropensci/intern \
    ropensci/binman \
    ropensci/rbace \
    ropensci/rrricanes \
    ropensci/phylocomr \
    ropensci/jsonld \
    ropensci/wicket \
    ropensci/bikedata \
    ropensci/xslt \
    ropensci/charlatan \
    ropensci/worrms \
    ropensci/mutant \
    ropensci/wdman \
    ropensci/hoardr \
    ropensci/phylogram \
    ropensci/randgeo \
    ropensci/unconf17 \
    ropensci/comtradr \
    ropensci/microdemic \
    ropensci/patentsview \
    ropensci/drake \
    ropensci/reeack \
    ropensci/rperseus \
    ropensci/ssh \
    ropensci/antanym \
    ropensci/iheatmapr \
    ropensci/textworkshop17 \
    ropensci/codemetar \
    ropensci/skynet \
    ropensci/fingertipsR \
    ropensci/bittrex \
    ropensci/antiword \
    ropensci/tif \
    ropensci/bomrang \
    ropensci/googleLanguageR \
    ropensci/skimr \
    ropensci/rrricanesdata \
    ropensci/cld2 \
    ropensci/cld3 \
    ropensci/acme \
    ropensci/plotdap \
    ropensci/bienapi \
    ropensci/unrtf \
    ropensci/dotgithubfiles \
    ropensci/bowerbird \
    ropensci/logos \
    ropensci/onboarding-meta \
    ropensci/bienapidocs \
    ropensci/roweb2 \
    ropensci/NLMR \
    ropensci/robridgems \
    ropensci/rdflib \
    ropensci/writexl \
    ropensci/cRegulome \
    ropensci/tidyhydat \
    ropensci/ozunconf17 \
    ropensci/spelling \
    ropensci/EndoMineR \
    ropensci/cchecksapi \
    ropensci/taxonomy \
    ropensci/essurvey \
    ropensci/infx \
    ropensci/onekp \
    ropensci/citation_tracking \
    ropensci/taxview \
    ropensci/canpaginate \
    ropensci/hydroscoper \
    ropensci/jstor \
    ropensci/gpapi \
    ropensci/fulltext-book \
    ropensci/unconf18 \
    ropensci/pubchunks \
    ropensci/rtika \
    ropensci/nomisr \
    ropensci/rbraries \
    ropensci/roauthors \
    ropensci/rppo \
    ropensci/taxize-book \
    ropensci/travis-goodpractice \
    ropensci/bbox \
    ropensci/ijtiff \
    ropensci/textworkshop18 \
    ropensci/lq \
    ropensci/talks \
    ropensci/landscapetools \
    ropensci/phylodiv \
    ropensci/dev_guide \
    ropensci/http-testing-book \
    ropensci/epubr \
    ropensci/arkdb \
    ropensci/deck \
    ropensci/hydrometeorology \
    ;
}

libp2p() (
  cd "$DEMO_DIR"
  rm -rf libp2p
  "$BUILD_STATIC_SITE" --target libp2p --feedback-url https://discuss.sourcecred.io/t/libp2p-cred-feedback/21
  SOURCECRED_DIRECTORY="$DEMO_DIR/libp2p/api/v1/data/"  node "$SOURCECRED_CLI" load --output libp2p/all \
    libp2p/go-sockaddr \
    libp2p/go-reuseport \
    libp2p/go-mplex \
    libp2p/js-peer-id \
    libp2p/js-peer-info \
    libp2p/js-libp2p-switch \
    libp2p/interface-stream-muxer \
    libp2p/js-spdy-stream-muxer \
    libp2p/go-stream-muxer \
    libp2p/js-libp2p-ping \
    libp2p/js-iprs-record \
    libp2p/js-libp2p-distributed-record-store \
    libp2p/js-libp2p \
    libp2p/js-libp2p-mdns \
    libp2p/js-libp2p-bootstrap \
    libp2p/js-libp2p-kad-routing \
    libp2p/interface-record-store \
    libp2p/js-libp2p-kad-record-store \
    libp2p/website \
    libp2p/interface-connection \
    libp2p/interface-transport \
    libp2p/js-libp2p-tcp \
    libp2p/js-libp2p-udp \
    libp2p/js-libp2p-udt \
    libp2p/js-libp2p-spdy \
    libp2p/js-libp2p-utp \
    libp2p/interface-peer-routing \
    libp2p/go-libp2p \
    libp2p/js-libp2p-websockets \
    libp2p/js-libp2p-mplex \
    libp2p/go-libp2p-transport \
    libp2p/go-libp2p-loggables \
    libp2p/go-libp2p-crypto \
    libp2p/go-libp2p-secio \
    libp2p/go-libp2p-peer \
    libp2p/js-peer-book \
    libp2p/go-ws-transport \
    libp2p/interface-libp2p \
    libp2p/js-libp2p-crypto \
    libp2p/js-libp2p-webrtc-star \
    libp2p/js-libp2p-secio \
    libp2p/go-libp2p-peerstore \
    libp2p/js-libp2p-identify \
    libp2p/libp2p \
    libp2p/xtp \
    libp2p/research-pubsub \
    libp2p/go-libp2p-kad-dht \
    libp2p/go-libp2p-routing \
    libp2p/go-libp2p-kbucket \
    libp2p/go-libp2p-record \
    libp2p/go-testutil \
    libp2p/js-libp2p-floodsub \
    libp2p/pubsub-notes \
    libp2p/go-floodsub \
    libp2p/specs \
    libp2p/go-utp-transport \
    libp2p/go-tcp-transport \
    libp2p/community \
    libp2p/go-xtp \
    libp2p/go-libp2p-protocol \
    libp2p/go-maddr-filter \
    libp2p/go-addr-util \
    libp2p/go-libp2p-conn \
    libp2p/go-libp2p-net \
    libp2p/go-libp2p-metrics \
    libp2p/go-libp2p-interface-conn \
    libp2p/go-libp2p-host \
    libp2p/go-libp2p-swarm \
    libp2p/go-udp-transport \
    libp2p/go-libp2p-nat \
    libp2p/go-libp2p-interface-pnet \
    libp2p/go-libp2p-pnet \
    libp2p/go-peerstream \
    libp2p/go-libp2p-dummy-conn \
    libp2p/go-libp2p-consensus \
    libp2p/go-libp2p-raft \
    libp2p/go-libp2p-netutil \
    libp2p/go-libp2p-blankhost \
    libp2p/cs-libp2p-crypto \
    libp2p/interface-peer-discovery \
    libp2p/cs-libp2p-peer \
    libp2p/cs-libp2p-protocol \
    libp2p/cs-libp2p-record \
    libp2p/cs-libp2p-io \
    libp2p/cs-libp2p-utils \
    libp2p/js-libp2p-kad-dht \
    libp2p/js-libp2p-record \
    libp2p/js-libp2p-webrtc-direct \
    libp2p/go-libp2p-circuit \
    libp2p/js-libp2p-crypto-secp256k1 \
    libp2p/js-libp2p-circuit \
    libp2p/go-libp2p-quic-transport \
    libp2p/go-libp2p-identify \
    libp2p/go-libp2p-ping \
    libp2p/js-p2pcat \
    libp2p/go-p2pcat \
    libp2p/rust-libp2p \
    libp2p/haskell-p2pcat \
    libp2p/go-wireguard \
    libp2p/go-libp2p-connmgr \
    libp2p/go-libp2p-circuit-progs \
    libp2p/js-libp2p-websocket-star \
    libp2p/js-libp2p-websocket-star-rendezvous \
    libp2p/go-libp2p-interface-connmgr \
    libp2p/interop \
    libp2p/go-msgio \
    libp2p/go-libp2p-pubsub \
    libp2p/js-libp2p-keychain \
    libp2p/go-flow-metrics \
    libp2p/docs \
    libp2p/research \
    libp2p/go-buffer-pool \
    libp2p/go-conn-security \
    libp2p/go-conn-security-multistream \
    libp2p/go-reuseport-transport \
    libp2p/go-libp2p-transport-upgrader \
    libp2p/js-libp2p-connection-manager \
    libp2p/mplex \
    libp2p/js-libp2p-delegated-peer-routing \
    libp2p/js-libp2p-delegated-content-routing \
    libp2p/interface-content-routing \
    libp2p/go-libp2p-websocket-star-rendezvous \
    libp2p/pull-mplex \
    libp2p/js-libp2p-rendezvous \
    libp2p/go-libp2p-rendezvous \
    libp2p/pm \
    libp2p/go-libp2p-routing-helpers \
    libp2p/go-libp2p-pubsub-router \
    libp2p/go-libp2p-autonat \
    libp2p/js-libp2p-nat-mngr \
    libp2p/developer-meetings \
    libp2p/js-libp2p-pnet \
    libp2p/dht-utils \
    libp2p/projects \
    libp2p/notes \
    libp2p/go-libp2p-examples \
    libp2p/go-libp2p-coral-dht \
    libp2p/research-dht \
    ;
)

tensorflow() (
  cd "$DEMO_DIR"
  rm -rf tensorflow
  "$BUILD_STATIC_SITE" --target tensorflow --repo tensorflow/tensorflow
)

zcash() (
  cd "$DEMO_DIR"
  rm -rf zcash
  "$BUILD_STATIC_SITE" --target zcash --repo zcash/zcash
)

nuxt() (
  cd "$DEMO_DIR"
  rm -rf nuxt
  "$BUILD_STATIC_SITE" --target nuxt --repo nuxt/nuxt.js
)

opencollective() (
  cd "$DEMO_DIR"
  rm -rf opencollective
  "$BUILD_STATIC_SITE" --target opencollective
  SOURCECRED_DIRECTORY="$DEMO_DIR/opencollective/api/v1/data/"  node "$SOURCECRED_CLI" load --output opencollective/pinned \
    opencollective/opencollective \
    opencollective/opencollective-api \
    opencollective/opencollective-website \
    opencollective/frontend \
    opencollective/backyourstack \
   ;
)

augur() (
  cd "$DEMO_DIR"
  rm -rf augur
  "$BUILD_STATIC_SITE" --target augur
  SOURCECRED_DIRECTORY="$DEMO_DIR/augur/api/v1/data/"  node "$SOURCECRED_CLI" load --output augur/augur \
    AugurProject/augur-ui \
    AugurProject/augur-app \
    AugurProject/augur-node \
    AugurProject/augur.js \
    AugurProject/augur-core \
    AugurProject/docs \
   ;
)

flow() (
  cd "$DEMO_DIR"
  rm -rf flow
  "$BUILD_STATIC_SITE" \
      --target flow \
      --feedback-url 'https://discuss.sourcecred.io/t/flow-cred-feedback/44' \
      --repo facebook/flow \
      ;
  SOURCECRED_DIRECTORY="$DEMO_DIR/flow/api/v1/data/" \
      node "$SOURCECRED_CLI" load facebook/flow
)

git() (
  cd "$DEMO_DIR"
  rm -rf git
  "$BUILD_STATIC_SITE" --target git --repo git/git
)



# libp2p || true
# tensorflow || true
# gitcoin || true
# ipfs || true
# ropensci || true
# zcash || true
# opencollective
# nuxt
# augur
# flow || true
git || true
