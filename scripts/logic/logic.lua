STARS = {"DiamondStar", "EmeraldStar", "GoldStar", "RubyStar", "SapphireStar", "GarnetStar", "CrystalStar"}

function stars(AMOUNT)
	AMOUNT = tonumber(AMOUNT)
	local req = AMOUNT
	local count = 0
	for _, item in pairs(STARS) do
		if has(item) then
			count = count + 1
		end
	end
return count >= req
end

-- Access Functions

function tube()
return has("PaperCurse") and has("TubeCurse")
end

function yoshi()
	return has("Yoshi") or has("Gyoshi") or has("RYoshi") or has("BYoshi") or has("OYoshi") or has("PYoshi") or has("DYoshi") or has("WYoshi")
	end

function westside()
	return has("ContactLens") or has("Bobbery") or (tube()) or has("UltraHammer")
	end

function bogglywoods()
	return has("PaperCurse") or (has("Superhammer") and has("SuperBoots"))
	end

function pit()
	return (has("PaperCurse") and has("PlaneCurse")) or (has("ContactLens") and has("PaperCurse") and has("Flurrie")) or(has("Bobbery") and has("Flurrie")) or ((tube())and has("Flurrie")) or (has("UltraHammer") and has("Flurrie"))
	end
	
function sewerwest()
	return (has("ContactLens") and has("PaperCurse")) or (has("UltraHammer") and has("PaperCurse")) or (has("UltraBoots") and (yoshi())) or (tube()) or (has("Bobbery"))
	end	

function sewerwestground()
	return (has("ContactLens") and has("PaperCurse")) or (has("UltraHammer") and has("PaperCurse")) or (has("UltraBoots") and (yoshi())) or (tube()) or (has("Bobbery"))
	end		

function ttyd()
return has("PlaneCurse") or has("SuperHammer") or (has("Flurrie") and has("Bobbery")) or (has("Flurrie") and(tube())) or (has("ContactLens") and has("PaperCurse"))
end	

function twilight_town()
	return ((silly()) and ((yoshi()) or has("UltraBoots")))
	end	

function steeple()
	return ((twilight_town()) and has("Flurrie") and (has("SuperBoots"))) and (tube())
	end

function keelhaul_key()
	return ((yoshi()) and (tube()) and (has("OldLetter"))) or (has("UltraHammer") and has("SuperBoots"))
	end	

function general_white()
	return ((has("Bobbery") and has("PlaneCurse")) or (has("Bobbery") and has("SuperHammer") and has("SuperBoots"))) and (twilight_town()) and (keelhaul_key()) and (westside()) and has("BlimpTicket") and (bogglywoods()) and(fahr_outpost()) and has("Flurrie") and (twilight_town())
	end		

function moon()
	return has("Bobbery") and (has("GoldbobGuide")) and (general_white())
	end	

function riverside()
	return has("Vivian") and has("Autograph") and has("RaggedDiary") and has("Blanket") and has("VitalPaper")
	end		

function fahr_outpost()
	return has("UltraHammer") and ((yoshi()) or (has("UltraBoots")))
	end		

function pirates_grotto()
	return has("Bobbery") and has("SkullGem") and (yoshi()) and has("SuperBoots")
	end		

function silly()
	return (has("ContactLens") and has("PaperCurse")) or has("Bobbery") or (tube()) or has("UltraHammer")
	end		

function poshley_heights()
	return (has("TrainTicket") and (westside()) and (riverside()) and has("StationKey1") and has("ElevatorKey") and has("SuperHammer")) or (has("UltraHammer") and has("SuperBoots"))
	end			

function poshleysanctum()
	return has("TrainTicket") and (westside()) and (riverside()) and has("StationKey1") and has("ElevatorKey") and has("SuperHammer")
	end			

function htcastle()
	return (has("PlaneCurse")) or (yoshi())
	end		

function riddle_tower()
	return (has("Vivian") or (tube())) and has("PalaceKey1") and has("BoatCurse") and has("Bobbery")
	end	

function palaceright()
	return (riddle_tower()) and has("StarKey") and has("PalaceKey(RiddleTower)8")
	end			

function palace()
	return (ttyd()) and (((stars(0)) and has("0ChapterClears")) or ((stars(1)) and has("1ChapterClears")) or ((stars(2)) and has("2ChapterClears")) or ((stars(3)) and has("3ChapterClears")) or ((stars(4)) and has("4ChapterClears")) or ((stars(5)) and has("5ChapterClears")) or ((stars(6)) and has("6ChapterClears")) or ((stars(7)) and has("7ChapterClears")))
	end		
