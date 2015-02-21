surface.CreateFont( "Bebas40", {
	font = "Bebas Neue", 
	size = 45, 
	weight = 500, 
	blursize = 0, 
	scanlines = 0, 
	antialias = true, 
	underline = false, 
	italic = false, 
	strikeout = false, 
	symbol = false, 
	rotary = false, 
	shadow = false, 
	additive = false, 
	outline = false, 
} )

surface.CreateFont( "Bebas70", {
	font = "Bebas Neue", 
	size = 70, 
	weight = 500, 
	blursize = 0, 
	scanlines = 0, 
	antialias = true, 
	underline = false, 
	italic = false, 
	strikeout = false, 
	symbol = false, 
	rotary = false, 
	shadow = false, 
	additive = false, 
	outline = false, 
} )

surface.CreateFont( "Bebas30", {
	font = "Bebas Neue", 
	size = 30, 
	weight = 500, 
	blursize = 0, 
	scanlines = 0, 
	antialias = true, 
	underline = false, 
	italic = false, 
	strikeout = false, 
	symbol = false, 
	rotary = false, 
	shadow = false, 
	additive = false, 
	outline = false, 
} )


net.Receive("NiandraMOTD_Open", function()

	gui.EnableScreenClicker(true)
	
	local frame = vgui.Create("DFrame")
	frame:SetSize(ScrW(), 800)
	frame:SetPos(0, 75)
	frame:ShowCloseButton(true)
	frame.Paint = function()
		draw.RoundedBox(0, 0, 0, ScrW(), 800, NiandraMOTD.MainFrameColour)
	end	
	
	local NiandraMOTD_HTML_Panel = vgui.Create("HTML", frame)
	NiandraMOTD_HTML_Panel:SetPos(NiandraMOTD.HTML_Y+NiandraMOTD.HTMLSpacing, NiandraMOTD.HTML_X+NiandraMOTD.HTMLSpacing)
	NiandraMOTD_HTML_Panel:SetSize(ScrW()-200-NiandraMOTD.HTMLSpacing-NiandraMOTD.HTMLSpacing-NiandraMOTD.HTMLSpacing, 550)
	NiandraMOTD_HTML_Panel:OpenURL(NiandraMOTD.DefaultWebpage)
	
	local NiandraMOTD_Panel_Top = vgui.Create("DPanel", frame)
	NiandraMOTD_Panel_Top:SetSize(ScrW(), 100)
	NiandraMOTD_Panel_Top:SetPos(0, 0)
	NiandraMOTD_Panel_Top.Paint = function()
		draw.RoundedBox(0, 0, 0, ScrW(), 100, NiandraMOTD.TopFrameColour)
	end	
	
	local NiandraMOTD_Panel_Bottom = vgui.Create("DPanel", frame)
	NiandraMOTD_Panel_Bottom:SetSize(ScrW(), 100)
	NiandraMOTD_Panel_Bottom:SetPos(0, 700)
	NiandraMOTD_Panel_Bottom.Paint = function()
		draw.RoundedBox(0, 0, 0, ScrW(), 100, NiandraMOTD.BottomFrameColour)
	end
	
	
	local NiandraMOTD_Buttons_Back = vgui.Create("DPanel", frame)
	NiandraMOTD_Buttons_Back:SetSize(200, 600)
	NiandraMOTD_Buttons_Back:SetPos(0, 100)

	local NiandraMOTD_BigText = vgui.Create("DLabel", NiandraMOTD_Panel_Top)
	NiandraMOTD_BigText:SetText(NiandraMOTD.BannerText)
	NiandraMOTD_BigText:SetFont("Bebas70")
	NiandraMOTD_BigText:SetPos(10, 5)
	NiandraMOTD_BigText:SetColor(Color(255, 255, 255, 255))
	NiandraMOTD_BigText:SizeToContents()
	
	local NiandraMOTD_SmallText = vgui.Create("DLabel", NiandraMOTD_Panel_Top)
	NiandraMOTD_SmallText:SetText(NiandraMOTD.BannerTagline)
	NiandraMOTD_SmallText:SetFont("Bebas30")
	NiandraMOTD_SmallText:SetPos(10, 60)
	NiandraMOTD_SmallText:SetColor(Color(255, 255, 255, 255))
	NiandraMOTD_SmallText:SizeToContents()	
	

	local num = 0
	for k, v in pairs(NiandraMOTD.ButtonsTable) do
	local NiandraMOTD_Buttons = vgui.Create("DButton", NiandraMOTD_Buttons_Back)
	NiandraMOTD_Buttons:SetSize(NiandraMOTD.ButtonWidth, NiandraMOTD.ButtonHeight)
	NiandraMOTD_Buttons:SetPos(0,0+num*NiandraMOTD.ButtonHeight)
	NiandraMOTD_Buttons:SetText(k)
	NiandraMOTD_Buttons:SetFont("Bebas40")
	NiandraMOTD_Buttons:SetColor(NiandraMOTD.ButtonsTextColour)
	if NiandraMOTD.EvenOddSwap then
		if math.fmod(num, 2) == 0 then
			NiandraMOTD_Buttons.Paint = function()
				draw.RoundedBox(0, 0, 0, 200, 100, NiandraMOTD.EvenButtons)
			end
		else
			NiandraMOTD_Buttons.Paint = function()
				draw.RoundedBox(0, 0, 0, 200, 100, NiandraMOTD.OddButtons)
			end
		end
	else
		NiandraMOTD_Buttons.Paint = function()
			draw.RoundedBox(0, 0, 0, 200, 100, v.colour)
		end
	end
	NiandraMOTD_Buttons.DoClick = function()
		if type(v.func) == "string" then	   
			NiandraMOTD_HTML_Panel:OpenURL(v.func)
		else
			v.func()
		end
	end
	num = num + 1
	NiandraMOTD_Buttons.OnCursorEntered = function()
		NiandraMOTD_Buttons:SetColor(NiandraMOTD.ButtonsHoverColour)
	end
	NiandraMOTD_Buttons.OnCursorExited = function()
		NiandraMOTD_Buttons:SetColor(NiandraMOTD.ButtonsTextColour)
	end
	end
	
	local NiandraMOTD_Close_Button = vgui.Create("DImageButton", NiandraMOTD_Panel_Top)
	NiandraMOTD_Close_Button:SetSize(64,64)
	NiandraMOTD_Close_Button:SetImage("materials/niandralades/motd/64/64_cancel.png")
	NiandraMOTD_Close_Button:SetPos(ScrW()-64-20-20, 20)
	NiandraMOTD_Close_Button.DoClick = function()
		NiandraMOTD:CloseMenu()
	end
	
	function NiandraMOTD:CloseMenu()
		frame:Remove()
		gui.EnableScreenClicker(false)
	end
	
	local loops = 0
	for k, v in pairs(NiandraMOTD.ExtrasTable) do
	local NiandraMOTD_Extra_Panel = vgui.Create("DPanel", NiandraMOTD_Panel_Bottom)
	NiandraMOTD_Extra_Panel:SetPos(100+loops*v.space, 25)
	NiandraMOTD_Extra_Panel:SetSize(v.width, v.height)
	NiandraMOTD_Extra_Panel.Paint = function()
		draw.RoundedBox(0, 0, 0, ScrW(), 800, v.panel_colour)
	end	
	
	local NiandraMOTD_Extra_Icon = vgui.Create("DImage", NiandraMOTD_Extra_Panel)
	NiandraMOTD_Extra_Icon:SetSize(32, 32)
	NiandraMOTD_Extra_Icon:SetPos(20, 10)
	NiandraMOTD_Extra_Icon:SetImage(v.image)
	NiandraMOTD_Extra_Icon:SetImageColor(v.image_colour)
	
	local NiandraMOTD_Extra_Text = vgui.Create("DLabel", NiandraMOTD_Extra_Panel)
	NiandraMOTD_Extra_Text:SetPos(20+32+20, 10)
	NiandraMOTD_Extra_Text:SetText(k)
	NiandraMOTD_Extra_Text:SetFont("Bebas30")
	NiandraMOTD_Extra_Text:SetColor(Color(0,0,0))
	NiandraMOTD_Extra_Text:SizeToContents()

	loops = loops + 1
	end
end)