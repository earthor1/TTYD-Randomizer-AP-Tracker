MAP_MAPPING = {}

function addMapIds(map, range_start, range_end, tabpath)
    for i = range_start, range_end do
        MAP_MAPPING[string.format("%s_%02d", map, i)] = tabpath
    end
end

--Rogueport
addMapIds("gor", 0, 4, {"Rogueport", "Rogueport"})
--Underground
addMapIds("tik", 0, 21, {"Rogueport", "Underground"})
--Hooktail Castle
addMapIds("gon", 0, 13, {"Chapter 1", "Hooktail Castle"})
--Petal Meadows
addMapIds("hei", 0, 1, {"Chapter 1", "Petal Meadows"})
addMapIds("hei", 13, 13, {"Chapter 1", "Petal Meadows"})
--Petalburg
addMapIds("nok", 0, 1, {"Chapter 1", "Petal Meadows"})
--Shhwonk Fortress
addMapIds("hei", 2, 12, {"Chapter 1", "Shhwonk Fortress"})
--Great Tree
addMapIds("mri", 0, 20, {"Chapter 2", "The Great Tree"})
--Boggly Woods
addMapIds("win", 0, 6, {"Chapter 2", "Boggly Woods"})
--Glitzville
addMapIds("tou", 1, 1, {"Chapter 3"})
--Glitzpit
addMapIds("tou", 2, 13, {"Chapter 3"})
--Twilight trail
addMapIds("gra", 0, 6, {"Chapter 4"})
--Creepy Steeple
addMapIds("jin", 0, 11, {"Chapter 4"})
--Twilight Town
addMapIds("usu", 0, 1, {"Chapter 4"})
--Pirate's Grotto
addMapIds("dou", 0, 13, {"Chapter 5"})
--Keelhaul Key
addMapIds("muj", 0, 12, {"Chapter 5"})
--Riverside Station
addMapIds("hom", 0, 0, {"Chapter 6"})
addMapIds("eki", 0, 6, {"Chapter 6"})
--Poshley Heights
addMapIds("pik", 0, 4, {"Chapter 6"})
--Excess Express
addMapIds("rsh", 0, 6, {"Chapter 6"})
--X-Naut Fortress
addMapIds("aji", 0, 19, {"Chapter 7"})
--Fahr Outpost
addMapIds("bom", 0, 4, {"Chapter 7"})
--The Moon
addMapIds("moo", 0, 7, {"Chapter 7"})
--The Thousand-Year Door
addMapIds("las", 0, 30, {"Chapter 8"})
--Pit of 100 Trials
addMapIds("jon", 0, 6, {"Magical Map"})