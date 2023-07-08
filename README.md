# Tbox

Docker stack for torrenting and usenet, this is intended to not be exposed to the internet as I use a VPN to access my network remotely.

## Description

A fullstack docker setup to download torrents and usenet, while protecting the stack behind an openvpn client

* Gluetun - Lightweight swiss-knife-like VPN client to multiple VPN service providers - https://github.com/qdm12/gluetun
* Traefik - Cloud native application proxy - https://doc.traefik.io/traefik/getting-started/quick-start/
* Deluge -  Lightweight, Free Software, cross-platform BitTorrent client. - https://hub.docker.com/r/linuxserver/deluge
* SABnzbd - Free and easy binary newsreader - https://sabnzbd.org/
* Sonarr - advanced software-based Personal Video Recorder (PVR) for TV shows. - https://sonarr.tv/
* Radarr - advanced software-based Personal Video Recorder (PVR) for movies. - https://radarr.video/
* Prowler - Indexer manager/proxy to integrate with your various PVR apps. https://github.com/Prowlarr/Prowlarr
* Jellyfin - Volunteer-built media solution - https://jellyfin.org/
* jellyseer - https://github.com/Fallenbagel/jellyseerr

## Getting Started

* Clone this repo
* Edit copy the ```example.env``` file to ```.env``` and add variables accordingly
* (Optional) mount the file share to the docker host via fstab
* configure share permissions from share host - in my case I use a NFS share hosted remotly

```
mkdir /foo
chown -R nobody /foo
chmod -R a=,a+rX,u+w,g+w /folder  (775)
```

* chmod +x all the ```*.sh``` files
* launch the montior stack  ```./launch-monitor.sh```
* launch the tbox stack ```./launch-tbox.sh```
* setup subdomains in your internal dns overrides

## Authors

NoobCam

## Version History

* 0.1
    * Initial Release