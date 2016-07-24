# blufor's Docker Light baseimage

This Docker image is based on [Gliderlabs' Alpine Linux image](https://github.com/gliderlabs/docker-alpine).

## Modifications
- Ruby 2.3
- Go 1.6
- RunIt daemon
- Useful CLI tools (```unzip```, ```make```, ```git```)
- ETCD toolset (```etcdctl```, ```etcd2yaml```, ```yaml2etcd```, ```etcd-erb```)
- ```port-authority``` gem

There are additional scripts to ease building subsequent images:
- ```b```, ```bl```: print pretty banner
- ```cleanup```: clear temporary locations, caches and logs - useful at the end of build
- ```svc_dir```: creates named service dir for RunIt
