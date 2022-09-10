# iocage-plugin-mylar
Artifact file(s) for mylar iocage plugin

https://github.com/mylar3/mylar3

## Installation

```
sudo iocage fetch -P mylar -n mylar -g https://github.com/diamondpete/iocage-diamondpete-plugins.git ip4_addr="em0|192.168.0.100/24"
```

The network options have to be changed to suit the execution environment. The following is an example of using VNET.
```
sudo iocage fetch -P mylar -n mylar -g https://github.com/diamondpete/iocage-diamondpete-plugins.git ip4_addr="vnet0|192.168.0.100/24" vnet=yes
```

## Usage

After the installation is complete, go to the following URL You will need to create a user only the first time.

http://your_ip_addr:8090/

## Configure

By accessing the console of the plugin (Jail), you can configure settings that cannot be done with the WebUI.

```
sudo iocage update mylar
```
