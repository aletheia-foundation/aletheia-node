![alt tag](https://cloud.githubusercontent.com/assets/24201238/24583976/ced4c43e-179f-11e7-9c40-c0988c346f55.png)

_**Publish science for free, access science for free.**_

# Install

tested on ubuntu 16.10

```bash
  # geth
  sudo apt-get install software-properties-common
  sudo add-apt-repository -y ppa:ethereum/ethereum
  sudo apt-get update
  sudo apt-get install -y ethereum


  # ipfs
  sudo snap install ipfs
  ipfs init

  # node 7.x from nodesource
  sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 68576280
  sudo apt-add-repository "deb https://deb.nodesource.com/node_7.x $(lsb_release -sc) main"
  sudo apt-get update
  sudo apt-get install -y nodejs

  #add user for service
  adduser srv-aletheia-node

  # clone codebase
  git clone https://github.com/aletheia-foundation/aletheia-node

  cd aletheia-node
  #install and run
  npm install
```

Enable the service

``` bash
  sudo cp aletheia-node.service  /etc/systemd/system/aletheia-node.service
  systemctl enable aletheia-node
  systemctl start aletheia-node
```
