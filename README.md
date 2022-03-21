# jetson-exporter

 exporter for nvidia jetson 
 
## QuickStart
### docker
```bash
docker run  -it -v /run/jtop.sock:/run/jtop.sock basefly/jetson-exporter:v0.1

curl htrtp://xxxx:9201/metrics
```
### kubernetes

```bash
kubectl applyt  -f  ./deploy.yaml

curl htrtp://xxxx:9201/metrics
```