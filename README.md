# Tbox

Docker stack for torrenting and usenet, this is intended to not be exposed to the internet as I use a VPN to access my network remotely.

## Description

A fullstack docker setup to download torrents and usenet, while protecting the stack behind an openvpn client

* Gluetun - Lightweight swiss-knife-like VPN client to multiple VPN service providers
* Traefik - Cloud native application proxy
* Deluge -  Lightweight, Free Software, cross-platform BitTorrent client.
* SABnzbd - Free and easy binary newsreader
* Sonarr - advanced software-based Personal Video Recorder (PVR) for TV shows.
* Radarr - advanced software-based Personal Video Recorder (PVR) for movies.
* Prowler - Indexer manager/proxy to integrate with your various PVR apps.
* Jellyfin - Volunteer-built media solution

## Getting Started

* Clone this repo
* Edit copy the ```example.env``` file to ```.env``` and add variables accordingly
* (Optional) mount the file share to the docker host via fstab
* configure share permissions

```
sudo chown -R docker:users /folder

sudo chmod -R a=,a+rX,u+w,g+w /folder  (775)
```

* chmod +x all the ```*.sh``` files
* launch the montior stack  ```./launch-monitor.sh```
* launch the tbox stack ```./launch-tbox.sh```
* When configuring the applications (sonarr, radarr, prowlarr) use the gluetun static IP to setup the apps and download clients

```
    networks:
      gluetun-network:
        ipv4_address: 192.168.224.2

```
* setup subdomains in your internal dns overrides

## Authors

NoobCam

## Version History

* 0.1
    * Initial Release