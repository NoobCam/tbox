# Tbox

Docker stack for torrenting and usenet

## Description

A fullstack docker setup to download torrents and nzb, while protecting the stack behind an openvpn client

* Gluetun - Lightweight swiss-knife-like VPN client to multiple VPN service providers
* Deluge -  Lightweight, Free Software, cross-platform BitTorrent client.
* NZBGET - Binary downloader, which downloads files from Usenet 
* Sonarr - advanced software-based Personal Video Recorder (PVR) for TV shows.
* Radarr - advanced software-based Personal Video Recorder (PVR) for movies.
* Prowler - Indexer manager/proxy to integrate with your various PVR apps.
* Jellyfin - Volunteer-built media solution

### Dependencies

* Docker
* OpenVPN 

## Getting Started

* Clone this repo
* Edit copy the ```example.env``` file to ```.env``` and add variables accordingly
* mount the cifs share to the docker host via fstab
* chmod +x all the ```*.sh``` files
* launch the montior stack  ```./launch-monitor.sh```
* launch the tbox stack ```./launch-tbox.sh```
* When configuring the applications (sonarr, radarr, prowlarr) use the gluetun static IP to setup the apps and download clients
```
    networks:
      gluetun-network:
        ipv4_address: 192.168.224.2
```

## Authors

NoobCam

## Version History

* 0.1
    * Initial Release

