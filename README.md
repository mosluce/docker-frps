# frp server

## Usage

```
docker run \
  --network host \
  --restart always \
  -v `pwd`/frps.ini:/var/lib/frp/frps.ini:ro \
  mosluce/frps:0.44.0
```
