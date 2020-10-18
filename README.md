# Cloudflare dns update
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->
Allows me to update my Cloudflare dns record so that I can have access to my server with a dynamic IP

Since I have a dynamic IP at home, but have setup myself with a little web server I needed a way to have nice domain to access it and not worry about the IP changes. There are many great options out there such as ddns or noip, but why pay for something or go trough the trouble of confirming your account should you choose the free version when you can try and learn something new and create your own script that would mimic the actions of those clients :)

Also the good thing about this is that you can use it for any of your domains / sub domains hosted trough Cloudflare and not having to pick one of those free domains. 

***Requirements:***
- Basic knowledge of shell scripting
- Your domain nameservers pointing to Cloudflare
- [sSMTP ](https://www.linux.com/news/ssmtp-simple-alternative-sendmail) - used to send an email if the update fails 

Read my article on how and why I created this script on [dev.to](https://dev.to/gigilibl/cloudflare-dns-update---free-alternative-to-ddns-437c)


***NOTE:***

***I take no responsibility*** should this script break your dns records and/or anything else. By using it, you acknowledge that you understand what this script does and how it may affect you in any way.

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://github.com/jenszo"><img src="https://avatars3.githubusercontent.com/u/6693266?v=4" width="100px;" alt=""/><br /><sub><b>Jens Nachtigall</b></sub></a><br /><a href="https://github.com/gigili/Cloudflare-dns-update/commits?author=jenszo" title="Code">💻</a></td>
  </tr>
</table>

<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->
<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!