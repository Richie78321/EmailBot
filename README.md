<p align="center">
  <img src="docs/emailbot.png" />
</p>

**EmailBot** allows you to verify that your Discord server members have an email address with a specific domain.

[![Discord](https://img.shields.io/discord/731028346569228288)](https://discord.gg/MfFMxu9) [![License](https://img.shields.io/badge/license-GPL-brightgreen)](LICENSE)

> Invite: https://discord.com/api/oauth2/authorize?client_id=731027450607435846&permissions=268503040&scope=bot

> Discord server: https://discord.gg/MfFMxu9

Let's say you want a Discord server just for people who have a @randomuniversity.edu email address. Add this bot to your server and when someone joins, they will get a DM asking for their @randomuniversity.edu email address. The bot then emails them a verification code. If they reply with the correct code, they get the "Verified" role.

<p align="center">
  <img src="docs/screenshot.png" />
</p>

## Usage

After inviting the bot to your server, a domain must be added using `.dominadd domain`. `.vstatus` is the help command:

```
User commands: 
   .verify -> Sends a DM to the user to verify their email
   .vstatus -> This help message

Admin commands: 
 - A domain must be added before users can be verified.
 - Use .rolechange instead of server settings to change the name of the verified role.
   .enableonjoin -> Enables verifying users on join
   .disableonjoin -> Disables verifying users on join
   .domainadd domain -> Adds an email domain
   .domainremove domain -> Removes an email domain
   .rolechange role -> Changes the name of the verified role

Domains: 
Verify when a user joins? (default=False): False
Verified role (default=Verified): Verified
```

## Installation

Install the dependencies:

```
pip install -r requirements.txt
```

Before running it make sure these environment variables are set:

```
export SENDGRID_API_KEY='YOUR_SENDGRID_API_KEY'
export SENDGRID_EMAIL='YOUR_SENDGRID_EMAIL'
export DISCORD_TOKEN='YOUR_DISCORD_TOKEN'
```

Run the bot with:

```
python bot.py
```

## License

EmailBot is licensed under [GNU GPL v3](https://www.gnu.org/licenses/gpl-3.0.en.html).