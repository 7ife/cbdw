<div align="center">

# CBDW
::ChatBox : for : DarkWeb::

</div>

### General Information:
Automatic launch ChatBox on your own NGINX & PHP-FPM server in Android system through Termux. You don't have to pay for the domain, we'll run it in the Tor network as well as in Ngrok.

<div align="right">

[![Visits Badge](https://badges.pufler.dev/visits/7ife/cbdw)](https://github.com/7ife/cbdw)
[![](https://img.shields.io/badge/-Donate-%23181717?style=flat-square&logo=bitcoin)](https://commerce.coinbase.com/checkout/61780323-c37c-41a2-8d13-571f125e813a)
</div>

---
### Instructions:
>**Launching a ChatBox in the Tor network** <br>
First, install app Termux in [Google Play](https://play.google.com/store/apps/details?id=com.termux&hl=en_US&gl=US). After in Termux, we writing commands: <br>
- `pkg update && pkg upgrade`
- `pkg install git`
- `git clone https://github.com/7ife/cbdw`
- `cd cbdw`
- `bash s.sh` <br>

>When you have received your onion address, you can collapse the application and in any browser open address `localhost:8080` or `127.0.0.1:8080` <br>
if you closed the tor, then to start it: <br>
- `cd $HOME/cbdw`
- `bash t.sh`

>if for some reason your device with the ChatBox turned off or rebooted, use this command to start: <br>
- `cd $HOME/cbdw`
- `bash b.sh`

>**Launching a ChatBox in Ngrok** <br>
- `cd $HOME/cbdw`
- `bash n.sh`

###### continuation in development

>**Tested working on Android:** `6.0`-[ok](#continuation-in-development "stably SAMSUNG A5"), `7.0`-[ok](#continuation-in-development "stably MEIZU PRO7"), `11.0`-[ok](#continuation-in-development "stably SAMSUNG S10 Lite") <br>
device: SAMSUNG A5, MEIZU PRO7, SAMSUNG S10 Lite


[Top](#top "Back to top")
