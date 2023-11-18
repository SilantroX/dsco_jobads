RegisterNetEvent('dsco_jobads:mostraranuncio')
AddEventHandler('dsco_jobads:mostraranuncio', function(logo, mensaje, colorfondo, colorbarra, colorletratitulo)
    print(logo)
    print(mensaje)
    SendNUIMessage({
        type = 'mostrarAnuncio',
        logo = logo,
        mensaje = mensaje,
        colorfondo = colorfondo,
        colorbarra = colorbarra,
        colorletratitulo = colorletratitulo
    })
end)