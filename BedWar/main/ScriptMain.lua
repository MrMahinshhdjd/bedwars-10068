package.path = package.path .. ';..\\?.lua';

BaseListener.registerCallBack(GameInitEvent, function(config)
    require "game.BedWarServer"

    local keys = DbUtil:getAllKey()
    for _, key in pairs(keys) do
        DBManager:addMustLoadSubKey(key)
    end
    BedWarServer.onGameInit(config)
end)