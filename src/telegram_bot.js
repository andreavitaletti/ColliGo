// https://blog.srnd.org/intro-to-node-js-making-a-telegram-bot-964b8cfe1129
// https://github.com/hosein2398/node-telegram-bot-api-tutorial

const util = require('util')
require('dotenv').config()
const fs = require('fs'); 

var TelegramBot = require('node-telegram-bot-api'),
    // Be sure to replace YOUR_BOT_TOKEN with your actual bot token on this line.
telegram = new TelegramBot(process.env.BOT_TOKEN, { polling: true });

/* void 

{
  "shops":[ ]
}

*/

var data = require("./data.json");

// https://javascript.info/promise-chaining

telegram.on('channel_post', (chat) => {
    //console.log(util.inspect(chat, false, null, true ))
    var location = chat.text.substring(
        chat.text.lastIndexOf("[") + 1, 
        chat.text.lastIndexOf("]")
    );
    //console.log(location);
    telegram.exportChatInviteLink(chat.chat.id).then(function(ch) {
        //console.log(util.inspect(ch, false, null, true ))
        telegram.getChat(chat.chat.id).then(function(ch) {
            //console.log(util.inspect(ch, false, null, true ));
            console.log(location+" "+ch.title+" "+ch.description+" "+ch.invite_link);
            data.shops.push({"lat":location.split(",")[0], "lon":location.split(",")[1],"name":ch.title,"description":ch.description,"link":ch.invite_link});
            fs.writeFileSync('./data.json',JSON.stringify(data))
            // write this info to data.js https://stackoverflow.com/questions/19706046/how-to-read-an-external-local-json-file-in-javascript/45035939
          }, function() {
            // one or more failed
          })  
      }, function() {
        // one or more failed
      })      
});


telegram.on("inline_query", (query) => {
    telegram.answerInlineQuery(query.id, [
      {
        type: "article",
        id: "testarticle",
        title: "Registra",
        input_message_content: {
          message_text: "La tua posizione è ["+query.location.latitude+","+query.location.longitude+ "]"
        }
      }
    ]);
  });
