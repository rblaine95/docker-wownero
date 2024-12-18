# Docker Wownero
Such wow.  
Little privilege.  
Many security (maybe)

[![Github tag (latest by date)][github-tag-badge]][github-tag-link]  
[![GitHub Workflow Status (branch)][github-actions-badge]][github-actions-link]  

Usage:
```sh
docker run \
  -dit \
  --restart=always \
  --net=host \
  --name=wownerod \
  -v /path/to/wownero:/opt/bitwownero \
  ghcr.io/rblaine95/wownero ${EXTRA_WOWNEROD_ARGS}
```

### Where can I download the image?
I'm using Github Actions to build and publish this image to:
* [ghcr.io/rblaine95/wownero](https://ghcr.io/rblaine95/wownero)

### Take my Weewow!
This is just a hobby project for me, if you really want to give me your Weewow, thank you :)  

WOW: `WW2Ngnhqk7uXL92YjofsWDYDMmz8V1XoPamuZhtUCR5jW2bLT2CZE8N5DmgjnA9j7HSzUCRCLFkQXeofLoNfqv1k1Wbte1xNV`  
![WOW Address](https://api.qrserver.com/v1/create-qr-code/?data=WW2Ngnhqk7uXL92YjofsWDYDMmz8V1XoPamuZhtUCR5jW2bLT2CZE8N5DmgjnA9j7HSzUCRCLFkQXeofLoNfqv1k1Wbte1xNV&amp;size=150x150 "WW2Ngnhqk7uXL92YjofsWDYDMmz8V1XoPamuZhtUCR5jW2bLT2CZE8N5DmgjnA9j7HSzUCRCLFkQXeofLoNfqv1k1Wbte1xNV")

Monero: `83TeC9hCsZjjUcvNVH6VD64FySQ2uTbgw6ETfzNJa51sJaM6XL4NParSNsKqEQN4znfpbtVj84smigtLBtT1AW6BTVQVQGh`  
![XMR Address](https://api.qrserver.com/v1/create-qr-code/?data=83TeC9hCsZjjUcvNVH6VD64FySQ2uTbgw6ETfzNJa51sJaM6XL4NParSNsKqEQN4znfpbtVj84smigtLBtT1AW6BTVQVQGh&amp;size=150x150 "83TeC9hCsZjjUcvNVH6VD64FySQ2uTbgw6ETfzNJa51sJaM6XL4NParSNsKqEQN4znfpbtVj84smigtLBtT1AW6BTVQVQGh")

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
[github-actions-badge]: https://img.shields.io/github/actions/workflow/status/rblaine95/docker_wownero/docker.yml?branch=master "Github Workflow Status (master)"
[github-actions-link]: https://github.com/rblaine95/docker_wownero/actions?query=workflow%3ADocker
