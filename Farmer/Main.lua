------------------------------------------------------------------------------------------
-- import librarys
------------------------------------------------------------------------------------------
import "Homeopatix.Farmer.Librarys";

Turbine.Shell.WriteLine("<rgb=#DAA520>Farming Helper</rgb> <rgb=#DDDDDD>".. plugin:GetVersion() .." par Homeo</rgb>")

CreateLocalizationInfo();
LoadSettings();

------------------------------------------------------------------------------------------
-- create the main window
------------------------------------------------------------------------------------------
CreateMainWindow();
GenerateOptionsWindow();

------------------------------------------------------------------------------------------
-- Closing window handler
------------------------------------------------------------------------------------------
ClosingWindow();

------------------------------------------------------------------------------------------
--show the prevention window if needed
------------------------------------------------------------------------------------------
if(settings.wantPrevention == "true") then
	ShowPrevention();
end
------------------------------------------------------------------------------------------
-- handle minimizeIcon
------------------------------------------------------------------------------------------
if(settings.isWindowVisible == "true") then
	MainMinimizedIcon = MinimizedIcon(Images.MinimizedIcon, 32, 32, FarmerWindow:SetVisible(true));
else
	MainMinimizedIcon = MinimizedIcon(Images.MinimizedIcon, 32, 32, FarmerWindow:SetVisible(false));
end

MainMinimizedIcon:SetPosition(settings.minimizeX, settings.minimizeY);
MainMinimizedIcon:SetZOrder(0);
MainMinimizedIcon.PositionChanged = function()
	settings.minimizeX = MainMinimizedIcon:GetLeft();
	settings.minimizeY = MainMinimizedIcon:GetTop();
	SaveSettings();
end
------------------------------------------------------------------------------------------
-- event handling
------------------------------------------------------------------------------------------
FarmerWindow.KeyDown=function(sender, args)
	if ( args.Action == Turbine.UI.Lotro.Action.Escape ) then
		if(settings.escEnable == "true") then
			FarmerWindow:SetVisible(false);
			settings.isWindowVisible = false;
			FarmerWindow:SetZOrder(-1);
			SaveSettings();
		end
		OptionsWindow:SetVisible(false);
		settings.isOptionsWindowVisible = false;
	end
	
	-- https://www.lotro.com/forums/showthread.php?493466-How-to-hide-a-window-on-F12&p=6581962#post6581962
	if ( args.Action == 268435635 ) then
		hudVisible = not hudVisible;
		if hudVisible then
			FarmerWindow:SetVisible(false);
			MainMinimizedIcon:SetVisible(false);
		else
			if(settings.isWindowVisible == "true") then
				FarmerWindow:SetVisible(true);
			else
				FarmerWindow:SetVisible(false);
			end
			MainMinimizedIcon:SetVisible(true);
		end
	end
end
------------------------------------------------------------------------------------------
-- if the position changes, save the new window location
------------------------------------------------------------------------------------------
FarmerWindow.PositionChanged = function( sender, args )
    local x,y = FarmerWindow:GetPosition();
    settings.positionX = x;
    settings.positionY = y;
	SaveSettings();
end

OptionsWindow.PositionChanged = function( sender, args )
    local x,y = OptionsWindow:GetPosition();
    settings.optionsPositionX = x;
    settings.optionsPositionY = y;
	SaveSettings();
end