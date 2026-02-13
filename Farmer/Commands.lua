
FarmerCommand = Turbine.ShellCommand();

------------------------------------------------------------------------------------------
-- commands
------------------------------------------------------------------------------------------
function FarmerCommand:Execute( command, arguments )

	if ( arguments == "help" ) then
		Turbine.Shell.WriteLine(Strings.PluginHelp);
------------------------------------------------------------------------------------------
--  show
------------------------------------------------------------------------------------------
	elseif ( arguments == "show" ) then
		--Turbine.Shell.WriteLine("Show the Empty Window");
		FarmerWindow:SetVisible(true);
		settings.isWindowVisible = true;
		SaveSettings();
------------------------------------------------------------------------------------------
--  hide
------------------------------------------------------------------------------------------
	elseif ( arguments == "hide" ) then
		--Turbine.Shell.WriteLine("Hide the Empty Window");
		FarmerWindow:SetVisible(false);
		settings.isWindowVisible = false;
		SaveSettings();
------------------------------------------------------------------------------------------
--  escape
------------------------------------------------------------------------------------------
	elseif ( arguments == "esc" ) then
		if(settings.escEnable == "true") then
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginEscDesable);
			settings.escEnable = false;
		else
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginEscEnable);
			settings.escEnable = true;
		end
		SaveSettings();
------------------------------------------------------------------------------------------
-- toggle command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "toggle" ) then
		if(settings.isWindowVisible == "true")then
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginWindowHide);
			FarmerWindow:SetVisible(false);
			settings.isWindowVisible = "false";
		else
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginWindowShow);
			FarmerWindow:SetVisible(true);
			settings.isWindowVisible = "true";
		end
		SaveSettings();
------------------------------------------------------------------------------------------
-- alt command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "alt" ) then
		if(settings.altEnable == true) then
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginAltDesable);
			settings.altEnable = false;
		else
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginAltEnable);
			settings.altEnable = true;
		end
		SaveSettings();
------------------------------------------------------------------------------------------
--  options
------------------------------------------------------------------------------------------
	elseif ( arguments == "options" ) then
		Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginOptionShowWindow);
		OptionsWindow:SetVisible(true);
		settings.isOptionsWindowVisible = true;
		SaveSettings();
------------------------------------------------------------------------------------------
--  clear
------------------------------------------------------------------------------------------
	elseif ( arguments == "clear" ) then
		Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginWindowClear);
		ClearAll();
	end
end

Turbine.Shell.AddCommand( "Fa;Farmer", FarmerCommand );

