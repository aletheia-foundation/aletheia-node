![alt tag](https://cloud.githubusercontent.com/assets/24201238/24583976/ced4c43e-179f-11e7-9c40-c0988c346f55.png)

_**Publish science for free, access science for free.**_

# Install

tested on ubuntu 16.10

```bash
  # geth
  sudo apt-get install software-properties-common
  sudo add-apt-repository -y ppa:ethereum/ethereum
  sudo apt-get update
  sudo apt-get install ethereum


  # ipfs
  snap install ipfs
  ipfs init

  # node 7.x from nodesource
  curl -sL https://deb.nodesource.com/setup_7.x | bash #todo shouldn't be doing this
  apt-get install nodejs

  #add user for service
  adduser srv-aletheia-node

  # clone codebase
  git clone https://github.com/aletheia-foundation/aletheia-node

  #install and run
  npm install
```

Copy aletheia-node.service to `/etc/systemd/system/aletheia-node.service`

``` bash
  systemctl enable aletheia-node
  systemctl start aletheia-node
```
