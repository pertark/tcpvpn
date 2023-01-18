export CLIENTNAME="$1"
# https://github.com/kylemanna/docker-openvpn/blob/master/docs/docker-compose.md
docker-compose run --rm openvpn easyrsa build-client-full $CLIENTNAME nopass
docker-compose run --rm openvpn ovpn_getclient $CLIENTNAME > clients/$CLIENTNAME.ovpn
