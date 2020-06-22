# docker-miniupnpd
UPnP &amp; SSDP daemon Docker Image.

Notify server existence by SSDP protocol. Your server can be seen from Network screen of Windows 10. May be suitable for RaspberryPi.

サーバの存在を SSDP で通知し、Windows 10 のネットワーク画面からサーバが見えるようになります。ラズパイ向け！？

# Usage

Clone this repository and run

`docker-compose up -d`

  or

`docker run -d --cap-add NET_ADMIN --net=host ichikawayukko/miniupnpd:alpine -i enp0s3 -a enp0s3 -S -U -m 3.10.0-327.el7.x86_64 -s x86_64 -f /etc/miniupnpd/miniupnpd.conf -d`

Then check Windows machine's Explorer > Network.

*If your network I/F is not enp0s3, change it correct one.

*SSDP is Multicast protocol. So, Server and Windows machine must be located SAME network segment to receive SSDP Notify. (or connected via Layer 2 VPN)

# 使い方
このリポジトリをクローンして

`docker-compose up -d`

  または

`docker run -d --cap-add NET_ADMIN --net=host ichikawayukko/miniupnpd:alpine -i enp0s3 -a enp0s3 -S -U -m 3.10.0-327.el7.x86_64 -s x86_64 -f /etc/miniupnpd/miniupnpd.conf -d`

を実行。

それから、Windows の エクスプローラー > ネットワーク 画面を開いて、SSDPを受信していることを確認。

※もし、ネットワーク I/F が enp0s3 でない場合は、正しいものに変更してください。

※SSDP はマルチキャストを利用しています。なので、サーバとSSDPを受信する Windows マシンは、同一ネットワーク・セグメントに接続されている必要があります。(または、レイヤ2VPN経由で接続)
