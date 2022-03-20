-- This function is used to register a command for the chat. 
-- When this is exectuted, it will execute a function, doing the msg function to the client
RegisterCommand("discord", function()
    print("Heres our discord:" )
end, false)

-- We declare this 'msg' function on the bottom due to better practices.
    function msg(text)
        -- Triggering new event chat:addMessage instead of depreceated "chatMessage"
        TriggerEvent("chat:addMessage", {
            -- Color of the msg printer
            color = {255,0,0},
            -- Allowed to use more than 1 line? true/false
            multiline = true,
           -- arguments = {author, otherargs...}
            args = {"[Texas-State-RP]", text}
        })
    end