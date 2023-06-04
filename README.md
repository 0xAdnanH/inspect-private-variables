
## Installation

### cloning the repository

Alternatively you can also clone the repository and install its dependencies to start using the smart contracts.

```bash
$ git clone https://github.com/0xAdnanH/inspect-private-variables.git
$ cd ./inspect-private-variables
$ npm install
```


## Explanation 

These are example contracts to elucidate that any private variable is not really private . It just can't be called by other smart contracts , but the content of these variables can be retrieved via inspecting the storage slot on the blockchain . 
