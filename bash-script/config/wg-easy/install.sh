sudo docker run --detach \
  --name wg-easy \
  --env LANG=de \
  --env WG_HOST=phatluu.net \
  --env PASSWORD_HASH='$2y$10$j/zt7ZM0bp5r7og9O50vqOY9s8QZ8EfJe1uGTxl/U1M6Ys5LEdF2a' \
  --env PORT=51821 \
  --env WG_PORT=51820 \
  --volume ~/.wg-easy:/etc/wireguard \
  --publish 51820:51820/udp \
  --publish 51821:51821/tcp \
  --cap-add NET_ADMIN \
  --cap-add SYS_MODULE \
  --sysctl 'net.ipv4.conf.all.src_valid_mark=1' \
  --sysctl 'net.ipv4.ip_forward=1' \
  --restart unless-stopped \
  ghcr.io/wg-easy/wg-easy