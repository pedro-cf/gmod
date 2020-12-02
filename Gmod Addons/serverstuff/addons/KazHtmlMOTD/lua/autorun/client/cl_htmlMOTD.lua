-- By Kazaki

local MotdTable = {}
MotdBTable = {}


local Tab1ENABLED = ( MotdTable[ "Tab1" ] == "on" ) or false
local Tab1NAME = MotdTable[ "Tab1NAME" ] or ""
local Tab1URL = MotdTable[ "Tab1URL" ] or ""
local Tab1ICON = MotdTable[ "Tab1ICON" ] or ""

local Tab2ENABLED = ( MotdTable[ "Tab2" ] == "on" ) or false
local Tab2NAME = MotdTable[ "Tab2NAME" ] or ""
local Tab2URL = MotdTable[ "Tab2URL" ] or ""
local Tab2ICON = MotdTable[ "Tab2ICON" ] or ""

local Tab3ENABLED = ( MotdTable[ "Tab3" ] == "on" ) or false
local Tab3NAME = MotdTable[ "Tab3NAME" ] or ""
local Tab3URL = MotdTable[ "Tab3URL" ] or ""
local Tab3ICON = MotdTable[ "Tab3ICON" ] or ""

local Tab4ENABLED = ( MotdTable[ "Tab4" ] == "on" ) or false
local Tab4NAME = MotdTable[ "Tab4NAME" ] or ""
local Tab4URL = MotdTable[ "Tab4URL" ] or ""
local Tab4ICON = MotdTable[ "Tab4ICON" ] or ""

local Tab5ENABLED = ( MotdTable[ "Tab5" ] == "on" ) or false
local Tab5NAME = MotdTable[ "Tab5NAME" ] or ""
local Tab5URL = MotdTable[ "Tab5URL" ] or ""
local Tab5ICON = MotdTable[ "Tab5ICON" ] or ""


usermessage.Hook( "MotdInfo", function( um )
	local index = um:ReadString()
	local var = um:ReadString()
	MotdTable[ index ] = var
	
	Tab1ENABLED = ( MotdTable[ "Tab1" ] == "on" ) or false
	Tab1NAME = MotdTable[ "Tab1NAME" ] or ""
	Tab1URL = MotdTable[ "Tab1URL" ] or ""
	Tab1ICON = MotdTable[ "Tab1ICON" ] or ""

	Tab2ENABLED = ( MotdTable[ "Tab2" ] == "on" ) or false
	Tab2NAME = MotdTable[ "Tab2NAME" ] or ""
	Tab2URL = MotdTable[ "Tab2URL" ] or ""
	Tab2ICON = MotdTable[ "Tab2ICON" ] or ""

	Tab3ENABLED = ( MotdTable[ "Tab3" ] == "on" ) or false
	Tab3NAME = MotdTable[ "Tab3NAME" ] or ""
	Tab3URL = MotdTable[ "Tab3URL" ] or ""
	Tab3ICON = MotdTable[ "Tab3ICON" ] or ""

	Tab4ENABLED = ( MotdTable[ "Tab4" ] == "on" ) or false
	Tab4NAME = MotdTable[ "Tab4NAME" ] or ""
	Tab4URL = MotdTable[ "Tab4URL" ] or ""
	Tab4ICON = MotdTable[ "Tab4ICON" ] or ""

	Tab5ENABLED = ( MotdTable[ "Tab5" ] == "on" ) or false
	Tab5NAME = MotdTable[ "Tab5NAME" ] or ""
	Tab5URL = MotdTable[ "Tab5URL" ] or ""
	Tab5ICON = MotdTable[ "Tab5ICON" ] or ""
end )

local Button1ENABLED = false
local Button1NAME = ""
local Button1IP = ""
local Button1NEW = false

local Button2ENABLED = false
local Button2NAME = ""
local Button2IP = ""
local Button2NEW = false

local Button3ENABLED = false
local Button3NAME = ""
local Button3IP = ""
local Button3NEW = false

local Button4ENABLED = false
local Button4NAME = ""
local Button4IP = ""
local Button4NEW = false

local Button5ENABLED = false
local Button5NAME = ""
local Button5IP = ""
local Button5NEW = false

local Button6ENABLED = false
local Button6NAME = ""
local Button6IP = ""
local Button6NEW = false



usermessage.Hook( "MotdButtons", function( um )
	local index = um:ReadString()
	local var = um:ReadString()
	MotdBTable[ index ] = var
	
	Button1ENABLED = ( MotdBTable[ "Button1" ] == "on" ) or false
	Button1NAME = MotdBTable[ "Button1NAME" ] or ""
	Button1IP = MotdBTable[ "Button1IP" ] or ""
	Button1NEW = ( MotdBTable[ "Button1NEW" ] == "yes" ) or false

	Button2ENABLED = ( MotdBTable[ "Button2" ] == "on" ) or false
	Button2NAME = MotdBTable[ "Button2NAME" ] or ""
	Button2IP = MotdBTable[ "Button2IP" ] or ""
	Button2NEW = ( MotdBTable[ "Button2NEW" ] == "yes" ) or false

	Button3ENABLED = ( MotdBTable[ "Button3" ] == "on" ) or false
	Button3NAME = MotdBTable[ "Button3NAME" ] or ""
	Button3IP = MotdBTable[ "Button3IP" ] or ""
	Button3NEW = ( MotdBTable[ "Button3NEW" ] == "yes" ) or false

	Button4ENABLED = ( MotdBTable[ "Button4" ] == "on" ) or false
	Button4NAME = MotdBTable[ "Button4NAME" ] or ""
	Button4IP = MotdBTable[ "Button4IP" ] or ""
	Button4NEW = ( MotdBTable[ "Button4NEW" ] == "yes" ) or false

	Button5ENABLED = ( MotdBTable[ "Button5" ] == "on" ) or false
	Button5NAME = MotdBTable[ "Button5NAME" ] or ""
	Button5IP = MotdBTable[ "Button5IP" ] or ""
	Button5NEW = ( MotdBTable[ "Button5NEW" ] == "yes" ) or false

	Button6ENABLED = ( MotdBTable[ "Button6" ] == "on" ) or false
	Button6NAME = MotdBTable[ "Button6NAME" ] or ""
	Button6IP = MotdBTable[ "Button6IP" ] or ""
	Button6NEW = ( MotdBTable[ "Button6NEW" ] == "yes" ) or false
end )

local StickerOSX = -0.08
local StickerOSY = 0.039

function ShowHTMLMOTD()

	local window = vgui.Create("DFrame")
		if ScrW() > 640 then
			window:SetSize( ScrW()*0.9, ScrH()*0.9 )
		else
			window:SetSize( 640, 480 )
		end
		window:SetTitle("")
		window:SetVisible(true)
		window:SetDraggable(false)
		window:SetBackgroundBlur(true)
		window:ShowCloseButton(true)
		window:MakePopup()
		window:Center()
	
	local CloseButton = vgui.Create( "DButton", window )
		CloseButton:SetText( "CLOSE" )
		CloseButton:SetSize( window:GetWide()*0.14, window:GetTall()*0.075 )
		CloseButton:SetPos( window:GetWide()/2 - CloseButton:GetWide()/2, window:GetTall() - CloseButton:GetTall() - 10)
		CloseButton.DoClick = function()
			if window then
				window:Close()
			end
		end
		
	if Button1ENABLED then
		local TTTButton = vgui.Create( "DButton", window )
			TTTButton:SetText( Button1NAME )
			TTTButton:SetSize( window:GetWide()*0.12, window:GetTall()*0.05 )
			TTTButton:SetPos( window:GetWide()*0.08 - TTTButton:GetWide()/2, window:GetTall() - TTTButton:GetTall() - 20)
			TTTButton.DoClick = function()
				LocalPlayer():ConCommand("play common/bugreporter_succeeded.wav" )
				timer.Simple(1, function()
					LocalPlayer():ConCommand("connect "..Button1IP)
				end )
			end
		if Button1NEW then
			local sticker = vgui.Create( "DImage", window )
				if ScrH() >= 900 then
					sticker:SetImage( "gui/newsticker" )
					sticker:SetPos( window:GetWide()*0.08 - TTTButton:GetWide()/2 -ScrW()*StickerOSX, window:GetTall() - TTTButton:GetTall() - 20 -ScrH()*StickerOSY)
					sticker:SizeToContents()
				else
					sticker:SetImage( "gui/smallnewsticker" )
					sticker:SetPos( window:GetWide()*0.08 - TTTButton:GetWide()/2 -ScrW()*StickerOSX, window:GetTall() - TTTButton:GetTall() - 20 -ScrH()*StickerOSY+17)
					sticker:SizeToContents()
				end
		end
	end
		
	if Button2ENABLED then
		local RPButton = vgui.Create( "DButton", window )
			RPButton:SetText( Button2NAME )
			RPButton:SetSize( window:GetWide()*0.12, window:GetTall()*0.05 )
			RPButton:SetPos( window:GetWide()*0.216 - RPButton:GetWide()/2, window:GetTall() - RPButton:GetTall() - 20)
			RPButton.DoClick = function()
				LocalPlayer():ConCommand("play common/bugreporter_succeeded.wav" )
				timer.Simple(1, function()
					LocalPlayer():ConCommand("connect "..Button2IP)
				end )
			end
		if Button2NEW then
			local sticker = vgui.Create( "DImage", window )
				if ScrH() >= 900 then
					sticker:SetImage( "gui/newsticker" )
					sticker:SetPos( window:GetWide()*0.216 - RPButton:GetWide()/2 -ScrW()*StickerOSX, window:GetTall() - RButton:GetTall() - 20 -ScrH()*StickerOSY)
					sticker:SizeToContents()
				else
					sticker:SetImage( "gui/smallnewsticker" )
					sticker:SetPos( window:GetWide()*0.216 - RPButton:GetWide()/2 -ScrW()*StickerOSX, window:GetTall() - RButton:GetTall() - 20 -ScrH()*StickerOSY+17)
					sticker:SizeToContents()
				end
		end
	end

	if Button3ENABLED then
		local DRButton = vgui.Create( "DButton", window )
			DRButton:SetText( Button3NAME )
			DRButton:SetSize( window:GetWide()*0.12, window:GetTall()*0.05 )
			DRButton:SetPos( window:GetWide()*0.35 - DRButton:GetWide()/2, window:GetTall() - DRButton:GetTall() - 20)
			DRButton.DoClick = function()
				LocalPlayer():ConCommand("play common/bugreporter_succeeded.wav" )
				timer.Simple(1, function()
					LocalPlayer():ConCommand("connect "..Button3IP)
				end )
			end
		if Button3NEW then
			local sticker = vgui.Create( "DImage", window )
				if ScrH() >= 900 then
					sticker:SetImage( "gui/newsticker" )
					sticker:SetPos( window:GetWide()*0.35 - DRButton:GetWide()/2 -ScrW()*StickerOSX, window:GetTall() - DRButton:GetTall() - 20 -ScrH()*StickerOSY)
					sticker:SizeToContents()
				else
					sticker:SetImage( "gui/smallnewsticker" )
					sticker:SetPos( window:GetWide()*0.35 - DRButton:GetWide()/2 -ScrW()*StickerOSX, window:GetTall() - DRButton:GetTall() - 20 -ScrH()*StickerOSY+17)
					sticker:SizeToContents()
				end
		end
	end
	
	if Button4ENABLED then
		local BButton = vgui.Create( "DButton", window )
			BButton:SetText( Button4NAME )
			BButton:SetSize( window:GetWide()*0.12, window:GetTall()*0.05 )
			BButton:SetPos( window:GetWide()*0.65 - BButton:GetWide()/2, window:GetTall() - BButton:GetTall() - 20)
			BButton.DoClick = function()
				LocalPlayer():ConCommand("play common/bugreporter_succeeded.wav" )
				timer.Simple(1, function()
					LocalPlayer():ConCommand("connect "..Button4IP)
				end )
			end
		if Button4NEW then
			local sticker = vgui.Create( "DImage", window )
				if ScrH() >= 900 then
					sticker:SetImage( "gui/newsticker" )
					sticker:SetPos( window:GetWide()*0.65 - BButton:GetWide()/2 -ScrW()*StickerOSX, window:GetTall() - BButton:GetTall() - 20 -ScrH()*StickerOSY)
					sticker:SizeToContents()
				else
					sticker:SetImage( "gui/smallnewsticker" )
					sticker:SetPos( window:GetWide()*0.65 - BButton:GetWide()/2 -ScrW()*StickerOSX, window:GetTall() - BButton:GetTall() - 20 -ScrH()*StickerOSY+17)
					sticker:SizeToContents()
				end
		end
	end
		
	if Button5ENABLED then
		local GRButton = vgui.Create( "DButton", window )
			GRButton:SetText( Button5NAME )
			GRButton:SetSize( window:GetWide()*0.12, window:GetTall()*0.05 )
			GRButton:SetPos( window:GetWide()*0.785 - GRButton:GetWide()/2, window:GetTall() - GRButton:GetTall() - 20)
			GRButton.DoClick = function()
				LocalPlayer():ConCommand("play common/bugreporter_succeeded.wav" )
				timer.Simple(1, function()
					LocalPlayer():ConCommand("connect "..Button5IP)
				end )
			end
		if Button5NEW then
			local sticker = vgui.Create( "DImage", window )
				if ScrH() >= 900 then
					sticker:SetImage( "gui/newsticker" )
					sticker:SetPos( window:GetWide()*0.785 - GRButton:GetWide()/2 -ScrW()*StickerOSX, window:GetTall() - GRButton:GetTall() - 20 -ScrH()*StickerOSY)
					sticker:SizeToContents()
				else
					sticker:SetImage( "gui/smallnewsticker" )
					sticker:SetPos( window:GetWide()*0.785 - GRButton:GetWide()/2 -ScrW()*StickerOSX, window:GetTall() - GRButton:GetTall() - 20 -ScrH()*StickerOSY+17)
					sticker:SizeToContents()
				end
		end
	end
	
	if Button6ENABLED then
		local FButton = vgui.Create( "DButton", window )
			FButton:SetText( Button6NAME )
			FButton:SetSize( window:GetWide()*0.12, window:GetTall()*0.05 )
			FButton:SetPos( window:GetWide()*0.92 - FButton:GetWide()/2, window:GetTall() - FButton:GetTall() - 20)
			FButton.DoClick = function()
				LocalPlayer():ConCommand("play common/bugreporter_succeeded.wav" )
				timer.Simple(1, function()
					LocalPlayer():ConCommand("connect "..Button6IP)
				end )
			end
		if Button6NEW then
			local sticker = vgui.Create( "DImage", window )
				if ScrH() >= 900 then
					sticker:SetImage( "gui/newsticker" )
					sticker:SetPos( window:GetWide()*0.92 - FButton:GetWide()/2 -ScrW()*StickerOSX, window:GetTall() - FButton:GetTall() - 20 -ScrH()*StickerOSY)
					sticker:SizeToContents()
				else
					sticker:SetImage( "gui/smallnewsticker" )
					sticker:SetPos( window:GetWide()*0.92 - FButton:GetWide()/2 -ScrW()*StickerOSX, window:GetTall() - FButton:GetTall() - 20 -ScrH()*StickerOSY+17)
					sticker:SizeToContents()
				end
		end
	end
	
	local Tabs = vgui.Create("DPropertySheet", window)
		Tabs:SetPos(5, 30)
		Tabs:SetSize(window:GetWide() - 10, window:GetTall()*0.85)
	
	if Tab1ENABLED then
		local Tab1 = vgui.Create("DPanelList", Tabs)
			Tab1:SetSize(Tabs:GetWide() - 10, Tabs:GetTall() - 10)
			local html1 = vgui.Create( "HTML", Tab1 )
				html1:SetPos( 5, 5 )
				html1:SetSize( Tab1:GetWide(), Tab1:GetTall() - 35 )
				html1:OpenURL(Tab1URL)
			Tabs:AddSheet(Tab1NAME, Tab1, Tab1ICON, false, false, false)
	end
	
	if Tab2ENABLED then
		local Tab2 = vgui.Create("DPanelList", Tabs)
			Tab2:SetSize(Tabs:GetWide() - 10, Tabs:GetTall() - 10)
			local html2 = vgui.Create( "HTML", Tab2 )
				html2:SetPos( 5, 5 )
				html2:SetSize( Tab2:GetWide(), Tab2:GetTall() - 35 )
				html2:OpenURL(Tab2URL)
			Tabs:AddSheet(Tab2NAME, Tab2, Tab2ICON, false, false, false)
	end
	
	if Tab3ENABLED then
		local Tab3 = vgui.Create("DPanelList", Tabs)
			Tab3:SetSize(Tabs:GetWide() - 10, Tabs:GetTall() - 10)
			local html3 = vgui.Create( "HTML", Tab3 )
				html3:SetPos( 5, 5 )
				html3:SetSize( Tab3:GetWide(), Tab3:GetTall() - 35 )
				html3:OpenURL(Tab3URL)
			Tabs:AddSheet(Tab3NAME, Tab3, Tab3ICON, false, false, false)
	end
	
	if Tab4ENABLED then
		local Tab4 = vgui.Create("DPanelList", Tabs)
			Tab4:SetSize(Tabs:GetWide() - 10, Tabs:GetTall() - 10)
			local html4 = vgui.Create( "HTML", Tab4 )
				html4:SetPos( 5, 5 )
				html4:SetSize( Tab4:GetWide(), Tab4:GetTall() - 35 )
				html4:OpenURL(Tab4URL)
			Tabs:AddSheet(Tab4NAME, Tab4, Tab4ICON, false, false, false)
	end
	
	if Tab5ENABLED then
		local Tab5 = vgui.Create("DPanelList", Tabs)
			Tab5:SetSize(Tabs:GetWide() - 10, Tabs:GetTall() - 10)
			local html5 = vgui.Create( "HTML", Tab5 )
				html5:SetPos( 5, 5 )
				html5:SetSize( Tab5:GetWide(), Tab5:GetTall() - 35 )
				html5:OpenURL(Tab5URL)
			Tabs:AddSheet(Tab5NAME, Tab5, Tab5ICON, false, false, false)
	end
	
	window:SetSkin("MBlackskin")

end

concommand.Add("showhtmlmotd", ShowHTMLMOTD ) 


-------------- Skin------------
surface.CreateFont ("coolvetica", ScrW()*0.0168, 400, true, false, "MKCV40") --scaled
surface.CreateFont ("coolvetica", ScrW()*0.0156, 400, true, false, "MKCV30") --scaled
surface.CreateFont ("coolvetica", ScrW()*0.0084, 400, true, false, "MKCV20") --scaled
surface.CreateFont ("coolvetica", 20, 400, true, false, "TKCV20") --unscaled


local SKIN = {}

SKIN.PrintName          = "MBlackskin"
SKIN.Author             = "Kazaki"
SKIN.DermaVersion       = 1

function SKIN:PaintButton(button)
	local w, h = button:GetSize()
	local x, y = 0,0
	
	local bordersize = 8
	if w <= 32 or h <= 32 then bordersize = 4 end -- This is so small buttons don't look messed up
	
	if button.m_bBackground then
		local color1 = Color(50, 50, 50, 255)
		local color2 = Color(0, 0, 0, 200)
		
		if button:GetDisabled() then
			color2 = Color(80, 80, 80, 255)
		elseif button.Depressed or button:GetSelected() then
			color2 = Color(color2.r + 200, color2.g + 200, color2.b + 200, color2.a + 40)
		elseif button.Hovered then
			color1 = Color(color1.r + 150, color1.g + 150, color1.b + 150, color1.a)
			color2 = Color(color2.r + 40, color2.g + 40, color2.b + 40, color2.a + 40)
		end
		draw.RoundedBox(bordersize, x, y, w, h, color1)
		draw.RoundedBox(bordersize, x+1, y+1, w-2, h-2, color2)
		draw.RoundedBox(bordersize, x+1, y+1, w-2, (h-2)/2, Color(100,100,100,255))
	end
end

function SKIN:SchemeButton( panel )
	if ScrW() > 1600 then
		panel:SetFont( "MKCV40" )
	else
		panel:SetFont( "MKCV20" )
	end
	
	if ( panel:GetDisabled() ) then
		panel:SetTextColor( self.colButtonText )
	else
		panel:SetTextColor( self.colButtonText )
	end
	
	DLabel.ApplySchemeSettings( panel )

end

function SKIN:PaintFrame(frame)
        local w, h = frame:GetSize()
        local color = Color(50,50,50,255)
        draw.RoundedBox(8, 0, 0, w, h, color)
        
        surface.SetDrawColor(color)
        surface.DrawLine(0, 20, w, 20)
end

function SKIN:PaintTab( panel )

	// This adds a little shadow to the right which helps define the tab shape..
	draw.RoundedBox( 4, 0, 0, panel:GetWide(), panel:GetTall() + 8, self.colTabShadow )
	
	if ( panel:GetPropertySheet():GetActiveTab() == panel ) then
		draw.RoundedBox( 4, 1, 0, panel:GetWide()-2, panel:GetTall() + 8, Color(100,100,100,255) )
	else
		draw.RoundedBox( 4, 0, 0, panel:GetWide()-1, panel:GetTall() + 8, Color(100,100,100,150) )
	end
	
end

function SKIN:SchemeTab( panel )

	panel:SetFont( "TKCV20" )

	local ExtraInset = 10

	if ( panel.Image ) then
		ExtraInset = ExtraInset + panel.Image:GetWide()
	end
	
	panel:SetTextInset( ExtraInset )
	panel:SizeToContents()
	panel:SetSize( panel:GetWide() + 10, panel:GetTall() + 8 )
	
	local Active = panel:GetPropertySheet():GetActiveTab() == panel
	
	if ( Active ) then
		panel:SetTextColor( self.colTabText )
	else
		panel:SetTextColor( self.colTabTextInactive )
	end
	
	panel.BaseClass.ApplySchemeSettings( panel )
		
end

function SKIN:LayoutTab( panel )

	panel:SetTall( 25 )

	if ( panel.Image ) then
	
		local Active = panel:GetPropertySheet():GetActiveTab() == panel
		
		local Diff = panel:GetTall() - panel.Image:GetTall()
		panel.Image:SetPos( 7, Diff * 0.6 )
		
		if ( !Active ) then
			panel.Image:SetImageColor( Color( 170, 170, 170, 155 ) )
		else
			panel.Image:SetImageColor( Color( 255, 255, 255, 255 ) )
		end
	
	end	
	
end

function SKIN:PaintPropertySheet( panel )

	local ActiveTab = panel:GetActiveTab()
	local Offset = 0
	if ( ActiveTab ) then Offset = ActiveTab:GetTall() end
	
	// This adds a little shadow to the right which helps define the tab shape..
	draw.RoundedBox( 4, 0, Offset, panel:GetWide(), panel:GetTall()-Offset, Color(100,100,100,255) )
	
end

function SKIN:SchemeCategoryHeader( panel )
	
	panel:SetTextInset( 5 )
	panel:SetFont( self.fontCategoryHeader )
	
	if ( panel:GetParent():GetExpanded() ) then
		panel:SetTextColor( self.colCategoryText )
	else
		panel:SetTextColor( self.colCategoryText )
	end
	
end



derma.DefineSkin( "MBlackskin", "Black Color", SKIN )