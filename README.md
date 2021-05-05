# Docker Wownero
Such wow.  
Little privilege.  
Many security (maybe)

[![Github tag (latest by date)][github-tag-badge]][github-tag-link]  
[![GitHub Workflow Status (branch)][github-actions-badge]][github-actions-link]  
[![Docker Image Size (latest by date)][docker-image-size-badge]][docker-image-link]

Usage:
```sh
docker run \
  -dit \
  --restart=always \
  --net=host \
  --name=wownerod \
  -v /path/to/wownero:/home/wow/.wownero \
  ghcr.io/rblaine95/wownero ${EXTRA_WOWNEROD_ARGS}
```

### Where can I download the image?
I'm using Github Actions to build and publish this image to:
* [docker.io/rblaine/wownero](https://hub.docker.com/r/rblaine/wownero)
* [quay.io/rblaine95/wownero](https://quay.io/repository/rblaine95/wownero)
* [ghcr.io/rblaine95/wownero](https://ghcr.io/rblaine95/wownero)

### Take my Weewow!
This is just a hobby project for me, if you really want to give me your Weewow, thank you :)  

WOW: `WW3WeBQ4iVJFEubDK2r3dYfTDekjeDhWiN5Liuak3y1A62Ccr7z2tF97tMW5q2SeTLHpJpAkdDutU6kWZFuTVHxE2dX2dLYrP`  
![WOW Address](https://api.qrserver.com/v1/create-qr-code/?data=WW3WeBQ4iVJFEubDK2r3dYfTDekjeDhWiN5Liuak3y1A62Ccr7z2tF97tMW5q2SeTLHpJpAkdDutU6kWZFuTVHxE2dX2dLYrP&amp;size=150x150 "WW3WeBQ4iVJFEubDK2r3dYfTDekjeDhWiN5Liuak3y1A62Ccr7z2tF97tMW5q2SeTLHpJpAkdDutU6kWZFuTVHxE2dX2dLYrP")

Monero: `8AoCMLDJ4J4fkeEokYT1QQbVd7vemd7nHVH1uurxng3cXx1wdKKdp14Fk1PDws4vkagHRF2BkdQo9DfzxxpEr4pUCaGWb5U`  
![XMR Address](https://api.qrserver.com/v1/create-qr-code/?data=8AoCMLDJ4J4fkeEokYT1QQbVd7vemd7nHVH1uurxng3cXx1wdKKdp14Fk1PDws4vkagHRF2BkdQo9DfzxxpEr4pUCaGWb5U&amp;size=150x150 "8AoCMLDJ4J4fkeEokYT1QQbVd7vemd7nHVH1uurxng3cXx1wdKKdp14Fk1PDws4vkagHRF2BkdQo9DfzxxpEr4pUCaGWb5U")

### I don't have Weewows! >:(
You should definitly get some.  
* [wownero/wownero](https://git.wownero.com/wownero/wownero)  
* [Wownero.org](https://wownero.org/)  
* [/r/wownero](https://www.reddit.com/r/wownero)  
* [SuchWow.xyz](https://suchwow.xyz/)  
* [TradeOgre](https://tradeogre.com/)  
* [*neroSwap](https://neroswap.com/)

And maybe get some Monero while you're at it
* [monero-project/monero](https://github.com/monero-project/monero)  
* [GetMonero.org](https://www.getmonero.org/)  
* [/r/monero](https://www.reddit.com/r/monero)  
* [ChangeNow.io](https://changenow.io/)  
* [MorphToken.com](https://www.morphtoken.com)  
* [Haveno](https://github.com/haveno-dex/haveno)

[github-tag-badge]: https://img.shields.io/github/v/tag/rblaine95/docker_wownero "Github tag (latest by date)"
[github-tag-link]: https://github.com/rblaine95/docker_wownero/tags
[github-actions-badge]: https://img.shields.io/github/workflow/status/rblaine95/docker_wownero/Docker/master "Github Workflow Status (master)"
[github-actions-link]: https://github.com/rblaine95/docker_wownero/actions?query=workflow%3ADocker
[docker-image-size-badge]: https://img.shields.io/docker/image-size/rblaine/wownero "Docker Image Size (latest by date)"
[docker-image-link]: https://hub.docker.com/r/rblaine/wownero
