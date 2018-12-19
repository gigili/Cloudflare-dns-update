# Cloudflare dns update
Allows me to update my Cloudflare dns record so that I can have access to my server with a dynamic IP

Since I have a dynamic IP at home, but have setup myself with a little web server I needed a way to have nice domain to access it and not worry about the IP changes. There are many greate options out there such as ddns or noip, but why pay for something or go trough the trouble of confirming your account should you choose the free version when you can try and learn something new and create your own script that would mimic the actions of those clients :)

Also the good thing about this is that you can use it for any of your domains / sub domains hosted trough Cloudflare and not having to pick one of those free domains. 

***Requirements:***
- Basic knowledge of shell scripting
- You domain nameservers pointing to Cloudflare
- [sSMTP ](https://www.linux.com/news/ssmtp-simple-alternative-sendmail) - used to send an email if the update fails 

***NOTE:***

***I take no responsibility*** should this script break your dns records and/or anything else. By using it, you acknowledge that you understand what this script does and how it may affect you in any way.
