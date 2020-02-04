const Discord = require('discord.js');
const SWG = require('./swgclient');
const config = require('./config');
SWG.login(config.SWG);

var client, server, notif, chat, notifRole;
function discordBot() {
    client = new Discord.Client();

    client.on('message', message => {
        if (message.content.startsWith('!server')) {
            message.reply(SWG.isConnected ? "The Flurry server Is UP!" : "The Flurry Server Is DOWN :(");
        }
        if (message.content.startsWith('!fixchat')) {
            message.reply("Rebooting Flurry Chat Bot");
            process.exit(0);
        }
        if (message.content.startsWith('!pausechat')) {
            message.reply(SWG.paused ? "Unpausing" : "Pausing");
            SWG.paused = !SWG.paused;
        }
        if (message.channel.name != config.Discord.ChatChannel) return;
        if (message.author.username == config.Discord.BotName) return;
       	testReturn = SWG.sendChat(message.cleanContent, server.members.get(message.author.id).displayName);
	console.log(testReturn);
	if (testReturn = 0) {
		SWG.login(config.SWG);
	}
    });

    client.on('disconnect', event => {
        try {notif.send("Flurry Bot Disconnected");}catch(ex){}
        client = server = notif = chat = notifRole = null;
        console.log("Discord disconnect: " + JSON.stringify(event,null,2));
        setTimeout(discordBot, 1000);
    });

    client.login(config.Discord.BotToken)
        .then(t => {
            client.user.setPresence({ status: "online", game: {name: "Flurry-Chat"}});
            server = client.guilds.find("name", config.Discord.ServerName);
            notif = server.channels.find("name", config.Discord.NotificationChannel);
            chat = server.channels.find("name", config.Discord.ChatChannel);
            notifRole = server.roles.find("name", config.Discord.NotificationMentionRole);
        })
        .catch(reason => {
            console.log(reason);
            setTimeout(discordBot, 1000);
        });
}
discordBot();

SWG.serverDown = function() {
    if (notif) notif.send(notifRole + " Flurry Server DOWN");
}

SWG.serverUp = function() {
    if (notif) notif.send(notifRole + " Flurry Server UP!");
}

SWG.reconnected = function() {
    //if (chat) chat.send("Flurry Chat Bot Online");
}

SWG.recvChat = function(message, player) {
    console.log("sending chat to discord " + player + ": " + message);
    if (chat) chat.send("**" + player + ":**  " + message);
    else console.log("discord disconnected");
}

SWG.recvTell = function(from, message) {
    console.log("received tell from: " + from + ": " + message);
    if (from != config.SWG.Character) SWG.sendTell(from, "Hi!");
}

//setInterval(() => SWG.sendTell(config.SWG.Character, "ping"), 30000);
setInterval(() => SWG.login(config.SWG), 30000);
