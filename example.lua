-- Register new command /help
RegisterCommand("help", function()
    -- when /help i used the following msg will be printed to client
    msg("Enter your text here") -- This is just where you would put your discord, website, etc. and/or any message you would like to send
end, false)

--Function with the new event trigger
function msg(text)
    -- Triggering new event chat:addMessage instead of depreceated "chatMessage"
    TriggerEvent("chat:addMessage", {
        -- Color of the msg printer
        color = {255,0,0}, -- This is RGB. Remember, rgb only allows up to but not over 255,255,255
        -- Allowed to use more than 1 line? true/false. It's recommended that you copy+paste this and always use multiline true
        multiline = true,
       -- arguments = {author, otherargs...}
        args = {"[Server]", text}
    })
end