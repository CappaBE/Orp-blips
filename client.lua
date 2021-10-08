local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},
	 {name="Example", color=4, id=71, x=136.8, y=-1708.4, z=28.3},
	 {name="Example", color=4, id=71, x=-1282.6, y=-1116.8, z=6.0}
	

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.7)
      SetBlipColour(info.blip, info.color)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.name)
      EndTextCommandSetBlipName(info.blip)
    end
end)