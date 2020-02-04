const Discord = require('discord.js');
const client = new Discord.Client();
const config = require('./config');

client.login(config.Discord.BotToken).then(() => {
	console.log(`Logged in as $(client.user.tag)!`);
	var server = client.guilds.find("name", config.Discord.ServerName);
	var chat = server.channels.find("name", config.resourceAutomation.ChatChannel);
	
	var textMessage = ":arrows_counterclockwise: Latest Live Server Resource Added to Galaxy Harvester [Updated] \n" +
		"http://galaxyharvester.net/ghHome.py?galaxy=89 \n \n" +
		"Latest Live Server Resources Added to Resource Map [Updated] \n" + 
		"http://swgflurry.com/Status/parseResourceJSON.html"
	
	if (server && chat) {
		console.log("Sending Chat Message!");
		chat.send(textMessage).then(() => client.destroy());
	} else {
		console.log("nope");
	}
	client.destroy();
});
