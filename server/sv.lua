if Config.Framework == "esx" then 
    ESX = exports["es_extended"]:getSharedObject()
else
    QBCore = exports['qb-core']:GetCoreObject()
end

RegisterCommand(Config.Command, function(source, args, rawCommand)
    if Config.Framework == "esx" then
        local xPlayer = ESX.GetPlayerFromId(source)

        if xPlayer then
            local trabajo = xPlayer.job.name
            local mensaje = table.concat(args, ' ')

            if Config.Trabajos[trabajo] then
                local logo = Config.Trabajos[trabajo].logo

                TriggerClientEvent('dsco_jobads:mostraranuncio', -1, logo, mensaje, Config.Trabajos[trabajo].colorfondo, Config.Trabajos[trabajo].colorbarra, Config.Trabajos[trabajo].colorletratitulo)
            else
                TriggerClientEvent('chatMessage', source, '^1Error^7', {255, 0, 0}, 'No puedes enviar anuncios desde este trabajo.')
            end
        end
    else
        local xPlayer = QBCore.Functions.GetPlayer(source)

        if xPlayer then
            local trabajo = xPlayer.PlayerData.job.name
            local mensaje = table.concat(args, ' ')

            if Config.Trabajos[trabajo] then
                local logo = Config.Trabajos[trabajo].logo

                TriggerClientEvent('dsco_jobads:mostraranuncio', -1, logo, mensaje, Config.Trabajos[trabajo].colorfondo, Config.Trabajos[trabajo].colorbarra, Config.Trabajos[trabajo].colorletratitulo)
            else
                TriggerClientEvent('chatMessage', source, '^1Error^7', {255, 0, 0}, 'No puedes enviar anuncios desde este trabajo.')
            end
        end
    end
end, false)
