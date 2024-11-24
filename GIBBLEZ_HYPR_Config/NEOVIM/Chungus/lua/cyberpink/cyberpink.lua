--require lush--

local lush = require('lush')
local hsl = lush.hsl

--colors--

local colors = {
bg = '#0f090d',
fg = hsl(327, 100, 50),
magenta1 = hsl(305, 100, 70),
red1 = hsl(345, 100, 50),
red2 = hsl(345, 80, 40),
yellow1 =hsl(60, 100, 60),
green1 = hsl(110, 100, 50),
cyan1 = hsl(170, 100, 50),
blue1 = hsl(205, 100, 50),
blue2 = hsl(230, 100, 55), 
purple1 = hsl(250, 100, 65),
gray = hsl(0, 0, 60),
white = hsl(0, 100, 100),
black = hsl(0, 0, 0)
}

--where da colors go--

return lush(function()
  return{
    Normal          { fg = colors.fg, bg = colors.bg, gui = "bold"},
    Function        { fg = colors.blue1},
    Keyword         { fg = colors.fg},
    Visual          { fg = colors.black , bg = colors.yellow1, gui = "bold"},

    Comment         { fg = colors.gray, gui = "italic" },
    String          { fg = colors.green1 },

    Identifier      { fg = colors.red1},
    CursorLine      { fg = colors.black, bg = colors.fg, gui = "bold"},
    Statement       { fg = colors.purple1},
  }
  end
)


