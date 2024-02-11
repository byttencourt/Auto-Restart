-----------------------------------------------------------------------------------------------------------------------------------------
-- AUTO TEMPESTADE
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		RestartTimes = {
			Times1 = '13:29:00',
			Times2 = '17:50:00', 
		}
		local minuto = 60000
		local time = os.date('%X')
		if time == RestartTimes.Times1 or time == RestartTimes.Times2 then
			print('^5Auto Restart: ^1Iniciado.')
			--TriggerEvent("discordLogs","Tempestade","**Auto restart:** Iniciado.\n**Horário:** "..os.date("%H:%M:%S"),3092790)
			TriggerClientEvent("Notify",-1,"azul","<b>AVISO: </b>Tempestade chegando em 10 minutos.<br>Enviado pela: <b>Agencia Meterológica.</b>",60000)
			GlobalState["Weather"] = "RAIN"
			Wait(5 * minuto)
			TriggerClientEvent("Notify",-1,"azul","<b>AVISO: </b>Tempestade chegando em 5 minutos.<br>Enviado pela: <b>Agencia Meterológica.</b>",60000)
			GlobalState["Weather"] = "THUNDER"
			Wait(2 * minuto)
			TriggerClientEvent("Notify",-1,"azul","<b>AVISO: </b>Tempestade chegando em 3 minutos.<br>Enviado pela: <b>Agencia Meterológica.</b>",59000)
			Wait(minuto)
			TriggerClientEvent("Notify",-1,"azul","<b>AVISO: </b>Tempestade chegando em 2 minutos.<br>Enviado pela: <b>Agencia Meterológica.</b>",59000)
			GlobalState["Blackout"] = true
			Wait(minuto)
			TriggerClientEvent("Notify",-1,"vermelho","<b>AVISO: </b>Tempestade chegando em 1 minuto.<br>Enviado pela: <b>Agencia Meterológica.</b>",59000)
			Wait(minuto)
			local playerList = vRP.userList()
				for k,v in pairs(playerList) do
					vRP.kick(k,"Desconectado, você foi vitima da tempestade.")
					Citizen.Wait(100)
				end

			TriggerEvent("admin:KickAll")
			Wait(1000)
			os.execute("start C:/Users/Administrator/Desktop/Mansory/server.bat") -- Precisa mudar o diretório aqui
			Wait(1)
			os.exit()
		end        
        Wait(1000)
    end
end)