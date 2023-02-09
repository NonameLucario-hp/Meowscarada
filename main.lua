local MeowscaradaMOD = RegisterMod("Meowscarada", 1)
local game = Game()


MeowscaradaMOD.COLLECTIBLE_MEOWSCARADASTART = Isaac.GetItemIdByName("MeowscaradaStart")
MeowscaradaMOD.COSTUME_MEOWSCARADA = Isaac.GetCostumeIdByPath("gfx/characters/costume_meowscarada.anm2")

function MeowscaradaMOD:onUpdate(player)
	if player:GetName() == "Meowscarada" then
		-- if game:GetFrameCount() == 1 then
			-- MeowscaradaMOD.HasMeowscarada = false
		-- end
		-- if not MeowscaradaMOD.HasMeowscarada and player:HasCollectible(MeowscaradaMOD.COLLECTIBLE_MEOWSCARADASTART) then
			-- player:AddNullCostume(MeowscaradaMOD.COSTUME_MEOWSCARADA)
			-- MeowscaradaMOD.HasMeowscarada = true
		-- end
	end
end
function MeowscaradaMOD:onStart(player)
	--print("[Meowscarada] onStart(player)")
	if player:GetName() == "Meowscarada" then
		player:AddNullCostume(MeowscaradaMOD.COSTUME_MEOWSCARADA)
		
	end
end

MeowscaradaMOD:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, MeowscaradaMOD.onStart)
MeowscaradaMOD:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, MeowscaradaMOD.onUpdate)

