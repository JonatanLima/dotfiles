# Project Base
function project_base {
    CURRENT_DIR="${PWD}/"
    
    GIT=`which git`
    TEMPLATEBASE=$pb
    BASE="node"

    if [ ! -z "${TEMPLATEBASE_ENV}" ]; then
		TEMPLATEBASE=$TEMPLATEBASE_ENV
	fi

	if [ ! -d .git ]; then
		git init
	fi

	if [ ! -v $1 ]; then
		BASE=$1
	fi

    TEMPLATEBASE="${TEMPLATEBASE}${BASE}/"

    bash "${TEMPLATEBASE}install.sh"
    
    #JQ
    if [ ! -x "$(command -v jq)" ]; then
	    echo "Not found jq";
        exit 1;
    else
        tmpfile=$(mktemp /tmp/new-package.XXXXX)
        jq -M -s '.[0] + .[1]' "${CURRENT_DIR}package.json" "${TEMPLATEBASE}package.json" > "${tmpfile}"
        \mv "${tmpfile}" "${CURRENT_DIR}package.json"
    fi

    GIT_REPONAME=`$GIT rev-parse --show-toplevel | xargs basename`

    echo "Copying template base ${BASE} for project ${GIT_REPONAME}"

    \cp -av "${TEMPLATEBASE}files/." "${CURRENT_DIR}"
}

