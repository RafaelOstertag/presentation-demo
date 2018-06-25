Anath Demo
===

Setup a complete anath demo with openvpn.

Requirements
---

It requires a local docker installation to run the demo. 

Bootstrap
---

Run the bootstrap script from the repository root

	./bootstrap.sh
	
It will create and launch the demo. Upon each invocation of
`bootstrap.sh`, the CA is discarded and created from scratch.


Starting and Stopping demo
---

Use the script `run-demo.sh` start an already boostraped demo. The
script `stop-demo.sh` will stop all docker containers spawned during
the demo.


Starting the VPN
---

1. Go to `http://localhost:8081` and login with the user
`user1@example.com` and the password `test1234.`. 
1. Create a certificate with for `openvpn`.
1. Download the openvpn configuration into the repository root as
   `testfile.conf`
1. Run the script `start-vpn.sh`


Starting Firefox
---

1. Make sure you use X11.
1. Run `xhost +` (In general, this is not a good idea, but for the
   sake of the demo it's ok.)
1. Run the script `start-firefox.sh`
1. Point firefox to `http://10.1.0.3`

This procedure has been tested on Fedora 27 with Xorg.
