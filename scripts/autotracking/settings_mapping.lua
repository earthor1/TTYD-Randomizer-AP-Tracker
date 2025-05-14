SLOT_CODES =
{
  ChapterClears =
  {
    code = "Chapter_Clears",
    mapping =
    {
      [0] = 1, --  0 Chapters
      [1] = 2, --  1 Chapters
      [2] = 3, --  2 Chapters
      [3] = 4, --  3 Chapters
      [4] = 5, --  4 Chapters
      [5] = 6, --  5 Chapters
      [6] = 7, --  6 Chapters
      [7] = 8, --  7 Chapters
    }
  },
  PitItems =
  {
    code = "Pit_Items",
    mapping =
    {
      [0] = 0, -- Vanilla Pit
      [1] = 0, -- Filler Pit
      [2] = 1  -- Any item in Pit
    }
  },
--[[ commenting these out for now to prevent trying to load code that's not needed until we have an implementation we want to do
  LimitChapterLogic =
  {
    code = "limit_chapter_logic",
    mapping =
    {
      [0] = 0, -- False
      [1] = 1, -- True
    }
  },
  LimitChapterEight =
  {
    code = "limit_chapter_eight", -- All chapter 8 keys will be vanilla, all other locations will have non-progression items.
    mapping =
    {
      [0] = 0, --False
      [1] = 1  -- True
    }
  },
--]]
  PalaceSkip =
  {
    code = "palace_skip", -- Entering the Thousand-Year door will take you straight to Grodus.
    mapping =
    {
      [0] = 0, -- False
      [1] = 1  -- True
    }
  },
--[[
StartingCoins =
{
  code = "starting_coins",
  mapping =
  {
   }
 },
StartingPartner =
  {
    code = "starting_partner",
    mapping =
    {
      [1] = 1, -- Goombella
      [2] = 2, -- Koops
      [3] = 3, -- Bobbery
      [4] = 4, -- Yoshi
      [5] = 5, -- Flurrie
      [6] = 6, -- Vivian
      [7] = 7, -- Ms. Mowz
    }
  },
--]]
{
code = "yoshi_color",
    mapping =
    {
      [0] = "1", -- Green
      [1] = "2", -- Red
      [2] = "3", -- Blue
      [3] = "4", -- Orange
      [4] = "5", -- Pink
      [5] = "6", -- Black
      [6] = "7", -- White
    }
  }
}