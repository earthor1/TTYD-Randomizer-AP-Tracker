SLOT_CODES =
{
  ChapterClears =
  {
    code = "Chapter_Clears",
    mapping =
    {
      [0] = 0, --  1 Chapter
      [1] = 1, --  2 Chapters
      [2] = 2, --  3 Chapters
      [3] = 3, --  4 Chapters
      [4] = 4, --  5 Chapters
      [5] = 5, --  6 Chapters
      [6] = 6, --  7 Chapters
    }
  },
  PitItems =
  {
    code = "Pit_Items",
    mapping =
    {
      [0] = 0, -- Vanilla Pit
      [1] = 1, -- Filler Pit
      [2] = 2  -- Any item in Pit
    }
  },
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
  YoshiColor =
  {
    code = "yoshi_color",
    mapping =
    {
      [0] = "GYoshi", -- Green
      [1] = "RYoshi", -- Red
      [2] = "BYoshi", -- Blue
      [3] = "OYoshi", -- Orange
      [4] = "PYoshi", -- Pink
      [5] = "DYoshi", -- Black
      [6] = "WYoshi", -- White
    }
  }
}