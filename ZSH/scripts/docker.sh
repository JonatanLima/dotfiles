# Docker

# Get container ip
function get_container_ip {
	unset CN
	unset CONTAINER_NAME
	local CONTAINER_NAME="web"
	if [ -f .env ] ; then 
		source ./.env
	fi
	if [ ! -v $CN ] ; then
		CONTAINER_NAME="$CN"
	fi
	if [ ! -v $1 ] ; then
		CONTAINER_NAME="$1"
	fi
	if [ -f ./docker-compose.yml ] && [ -v $1 ]; then
		`which docker` inspect $(`which docker-compose` ps|grep $CONTAINER_NAME|awk -F ' ' '{print $1}') --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'
		return 1;
	fi
	`which docker` inspect $CONTAINER_NAME --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'
}

