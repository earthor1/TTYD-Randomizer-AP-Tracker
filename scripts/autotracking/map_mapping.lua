MAP_MAPPING = {}

local mapData = {
    -- Rogueport
    {"gor", 0, 4, {"Rogueport", "Town"}},
    -- Underground
    {"tik", 0, 21, {"Rogueport", "Sewers"}},
    -- Hooktail Castle
    {"gon", 0, 13, {"Chapter 1", "Hooktail Castle"}},
    -- Petal Meadows
    {"hei", 0, 1, {"Chapter 1", "Petal Meadows"}},
    {"hei", 13, 13, {"Chapter 1", "Petal Meadows"}},
    -- Petalburg
    {"nok", 0, 1, {"Chapter 1", "Petal Meadows"}},
    -- Shhwonk Fortress
    {"hei", 2, 12, {"Chapter 1", "Shhwonk Fortress"}},
    -- Great Tree
    {"mri", 0, 20, {"Chapter 2", "The Great Tree"}},
    -- Boggly Woods
    {"win", 0, 6, {"Chapter 2", "Boggly Woods"}},
    -- Glitzville
    {"tou", 0, 1, {"Chapter 3"}},
    -- Glitzpit
    {"tou", 2, 13, {"Chapter 3"}},
    -- Twilight Trail
    {"gra", 0, 6, {"Chapter 4"}},
    -- Creepy Steeple
    {"jin", 0, 11, {"Chapter 4"}},
    -- Twilight Town
    {"usu", 0, 1, {"Chapter 4"}},
    -- Pirate's Grotto
    {"dou", 0, 13, {"Chapter 5"}},
    -- Keelhaul Key
    {"muj", 0, 12, {"Chapter 5"}},
    -- Riverside Station
    {"hom", 0, 0, {"Chapter 6"}},
    {"eki", 0, 6, {"Chapter 6"}},
    -- Poshley Heights
    {"pik", 0, 4, {"Chapter 6"}},
    -- Excess Express
    {"rsh", 0, 6, {"Chapter 6"}},
    -- X-Naut Fortress
    {"aji", 0, 19, {"Chapter 7"}},
    -- Fahr Outpost
    {"bom", 0, 4, {"Chapter 7"}},
    -- The Moon
    {"moo", 0, 7, {"Chapter 7"}},
    -- The Thousand-Year Door
    {"las", 0, 30, {"Chapter 8"}},
    -- Pit of 100 Trials
    {"jon", 0, 6, {"Magical Map"}}
}

local function addMapIds(map, range_start, range_end, tabpath)
    for i = range_start, range_end do
        MAP_MAPPING[string.format("%s_%02d", map, i)] = tabpath
    end
end

for _, data in ipairs(mapData) do
    addMapIds(data[1], data[2], data[3], data[4])
end