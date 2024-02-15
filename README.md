# Grass

An unofficial Docker Image for getgrass.io Available on Docker Hub

Source code available at: GitHub
```
### Now supports Raspberry Pi 2 and above! (ARMv7 / ARM64) ###
```
## What's Grass?

Grass allows you to earn passive income by sharing your network bandwidth

## How to get started?
> 1.Register a Grass Account if you don't have one already: [getgrass.io](https://app.getgrass.io/register/?referralCode=4IY0LKAfrNbr3if)

> 2.Either build this image from source, or download it from Docker Hub

> 3.Set envriomental variables to their respective values: GRASS_USER and GRASS_PASS

> 4.You're good to go! Once started, the docker exposes your current network status and lifetime earnings on port 80
```json
# FastAPI Json Return
{
    "connected": true,
    "network_quality": "75",
    "epoch_earnings": "25,552.15"
}
```

### Docker Run Command
```yaml
docker run -d \
    --name Grass \
    -p 8080:80 \
    -e GRASS_USER=myuser@mail.com \
    -e GRASS_PASS=mypass \
    -e ALLOW_DEBUG=False \
    cyrus0880/grass
```
Please replace 8080 with the port you want to be able to access the status with, as well as GRASS_USER and GRASS_PASS. In case of issues, you can replace ALLOW_DEBUG=False with True to grab screenshots from the emulated browser and submit them in a ticket on GitHub.

## License
This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.