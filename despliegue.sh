sudo rm ./public -r
hugo -d public
rsync -avz -e "ssh -p 22022" ./public/ manuel@infenlaces.com:web/manuel.infenlaces.com/public_html/dwes/

