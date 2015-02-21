//HTML
NiandraMOTD.DefaultWebpage = "http://www.garrysmod.com/"

//General Design
NiandraMOTD.MainFrameColour = Color(21,21,21,255) 
NiandraMOTD.TopFrameColour = Color(171,47,47,255) -- Refers to the bar at the top of the screen
NiandraMOTD.BottomFrameColour = Color(171,47,47,255) -- Refers to the bar at the bottom of the screen

//Top Panel
NiandraMOTD.BannerText = GetHostName()
NiandraMOTD.BannerTagline = "Welcome to the server!" 

//Buttons
NiandraMOTD.EvenOddSwap = true -- Instead of having buttons individually coloured, should we just alternative between two?
NiandraMOTD.EvenButtons = Color(45, 45, 45, 255) -- Even buttons are this colour if above is true
NiandraMOTD.OddButtons = Color(30, 30, 30, 255) -- Odd buttons are this colour if above is true

//Buttons Text
NiandraMOTD.ButtonsTextColour = Color(255, 255, 255, 255) -- What colour should the text on buttons be?
NiandraMOTD.ButtonsHoverColour = Color(1, 177, 236, 255) -- What colour should the text turn when you hover over them?

//Buttons
NiandraMOTD.ButtonWidth = 200 -- What width should the buttons be?
NiandraMOTD.ButtonHeight = 100 -- What height should the buttons be?

//HTML Panel
NiandraMOTD.HTMLWidth = ScrW()-200-25-25 -- What width should the html panel be? (Screen width, minus default button height, and then 25 pixels for each side)
NiandraMOTD.HTMLHeight = 550 -- What height should the HTML panel be?
NiandraMOTD.HTMLSpacing = 25 -- How much space should there be from the end of the buttons and start of the html panel?
NiandraMOTD.HTML_Y = 200 -- What is the Y pos of the HTML frame? 
NiandraMOTD.HTML_X = 100 -- What is the X pos of the HTML frame?

AddNiandraMOTDButton("Rules", 
{
	func = "http://www.garrysmod.com/",
	colour = ""
})

AddNiandraMOTDButton("Website", 
{
	func = "http://www.facepunch.com/",
	colour = ""
})

AddNiandraMOTDButton("Steam Group", 
{
	func = "http://www.garrysmod.com/",
	colour = ""
})

AddNiandraMOTDButton("Donate", 
{
	func = "http://www.paypal.co.uk",
	colour = ""
})

AddNiandraMOTDButton("Forums", 
{
	func = "http://www.garrysmod.com/",
	colour = ""
})

AddNiandraMOTDButton("Content", 
{
	func = "http://www.garrysmod.com/",
	colour = ""
})

/// EXTRA TABS
--[[
AddExtraTab_NiandraMOTD("key", -- what info to display
{
	image = "", -- Which 32x32 image should be used?
	width = NUMBER, -- How wide should the background panel be?
	height = NUMBER, -- How tall should the background panel be?
	panel_colour = Color(r,g,b), -- What colour should the panel be?
	image_colour = Color(r,g,b) -- What colour should the icon be?
}) 
--]]

timer.Simple(1, function()
AddExtraTab_NiandraMOTD(""..GAMEMODE.Name.."",
{
	image = "materials/niandralades/motd/32/32_gamemode.png",
	width = 300, 
	height = 50, 
	panel_colour = Color(236,236,236), 
	image_colour = Color(45, 45, 45)
})
end)

AddExtraTab_NiandraMOTD(""..game.GetMap().."",
{
	image = "materials/niandralades/motd/32/32_map.png",
	width = 300, 
	height = 50, 
	panel_colour = Color(236,236,236), 
	image_colour = Color(45, 45, 45)
})

AddExtraTab_NiandraMOTD("www.facepunch.com",
{
	image = "materials/niandralades/motd/32/32_website.png",
	width = 300, 
	height = 50, 
	panel_colour = Color(236,236,236), 
	image_colour = Color(45, 45, 45)
})

