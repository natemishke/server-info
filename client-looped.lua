-- Register new command /help changed over to infinite loop (aka the line where it says Citzen.CreateThread(function() while true do) with a timer of every 5 seconds
Citizen.CreateThread(function()
    while true do
        msg("Discord: https://discord.gg/qPdaxJ9DhZ")
        Citizen.Wait(5 * 1000)
    end
    -- when /help i used the following msg will be printed to client
    -- This is just where you would put your discord, website, etc. and/or any message you would like to send
end, false)

--Function with the new event trigger
function msg(text)
    -- Triggering new event chat:addMessage instead of depreceated "chatMessage"
    TriggerEvent("chat:addMessage", {
        -- Color of the msg printer
        color = { 255, 0, 0 }, -- This is RGB. Remember, rgb only allows up to but not over 255,255,255
        -- Allowed to use more than 1 line? true/false. It's recommended that you copy+paste this and always use multiline true
        multiline = true,
        -- arguments = {author, otherargs...}
        args = { "[Server]", text }
    })
end
