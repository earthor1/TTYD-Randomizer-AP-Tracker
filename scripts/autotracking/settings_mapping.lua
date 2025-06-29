SLOT_CODES =
{
  chapter_clears =
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
  pit_items =
  {
    code = "Pit_Items",
    mapping =
    {
      [0] = 0, -- Vanilla Pit
      [1] = 0, -- Filler Pit
      [2] = 1,  -- Any item in Pit
    }
  },
  limit_chapter_logic =
  {
    code = "limit_chapter_logic",
    mapping =
    {
      [0] = 0, -- False
      [1] = 1, -- True
    }
  },
  limit_chapter_eight =
  {
    code = "limit_chapter_eight", -- All chapter 8 keys will be vanilla, all other locations will have non-progression items.
    mapping =
    {
      [0] = 1, --False
      [1] = 0  -- True
    }
  },
  palace_skip =
  {
    code = "palace_skip", -- Entering the Thousand-Year door will take you straight to Grodus.
    mapping =
    {
      [0] = 0, -- False
      [1] = 1  -- True
    }
  },
  yoshi_color =
  {
    code = "yoshi",
    mapping =
    {
      [1] = "1", -- Green
      [2] = "2", -- Red
      [3] = "3", -- Blue
      [4] = "4", -- Orange
      [5] = "5", -- Pink
      [6] = "6", -- Black
      [7] = "7", -- White
    }
  },
  westside =
  {
    code = "open_westside",
    mapping =
    {
      [0] = "0", -- False
      [1] = "1", -- True
    }
  },
  tattlesanity =
  {
    code = "tattlesanity",
    mapping =
    {
      [0] = "0", -- False
      [1] = "1", -- True
    }
  }
}