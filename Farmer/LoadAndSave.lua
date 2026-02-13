------------------------------------------------------------------------------------------
-- create or load the settings
------------------------------------------------------------------------------------------
function LoadSettings()
settings = PatchDataLoad(Turbine.DataScope.Character, "Farmer_Settings", settings);

	if ( type( settings ) ~= "table" ) then
		settings = { };
	end
	
	if ( not settings.positionX) then		
		settings.positionX = 500;	
	end
	
	if ( not settings.positionY) then	
		settings.positionY = 500;
	end	

	if ( not settings.optionsPositionX) then		
		settings.optionsPositionX = 500;		
	end
	
	if ( not settings.optionsPositionY) then	
		settings.optionsPositionY = 500;
	end	
		
	if ( not settings.minimizeX) then	
		settings.minimizeX = 450;
	end

	if ( not settings.minimizeY) then	
		settings.minimizeY = 450;
	end
	
	if ( not settings.isMinimizeEnabled) then	
		settings.isMinimizeEnabled = true;
	end

	if ( not settings.isWindowVisible) then	
		settings.isWindowVisible = tostring("true");
	end
	
	if ( not settings.isOptionsWindowVisible) then	
		settings.isOptionsWindowVisible = false;
	end

	if ( not settings.shortcutData_1) then	
		settings.shortcutData_1 = tostring("");
	end	

	if ( not settings.itemName_1) then	
		settings.itemName_1 = tostring("");
	end

	if ( not settings.itemName_2) then	
		settings.itemName_2 = tostring("");
	end

	if ( not settings.itemName_3) then	
		settings.itemName_3 = tostring("");
	end

	if ( not settings.itemName_4) then	
		settings.itemName_4 = tostring("");
	end

	if ( not settings.itemName_5) then	
		settings.itemName_5 = tostring("");
	end

	if ( not settings.itemName_6) then	
		settings.itemName_6 = tostring("");
	end

	if ( not settings.itemName_7) then	
		settings.itemName_7 = tostring("");
	end

	if ( not settings.itemName_8) then	
		settings.itemName_8 = tostring("");
	end

	if ( not settings.itemName_9) then	
		settings.itemName_9 = tostring("");
	end

	if ( not settings.itemName_10) then	
		settings.itemName_10 = tostring("");
	end
	
	if ( not settings.shortcutData_2) then	
		settings.shortcutData_2 = tostring("");
	end	

	if ( not settings.shortcutData_3) then	
		settings.shortcutData_3 = tostring("");
	end	
	
	if ( not settings.shortcutData_4) then	
		settings.shortcutData_4 = tostring("");
	end	

	if ( not settings.shortcutData_5) then	
		settings.shortcutData_5 = tostring("");
	end
	
	if ( not settings.shortcutData_6) then	
		settings.shortcutData_6 = tostring("");
	end
	if ( not settings.shortcutData_7) then	
		settings.shortcutData_7 = tostring("");
	end
	if ( not settings.shortcutData_8) then	
		settings.shortcutData_8 = tostring("");
	end
	if ( not settings.shortcutData_9) then	
		settings.shortcutData_9 = tostring("");
	end
	if ( not settings.shortcutData_10) then	
		settings.shortcutData_10 = tostring("");
	end

	if ( not settings.limitSlot_1) then	
		settings.limitSlot_1 = 0;
	end
	if ( not settings.limitSlot_2) then	
		settings.limitSlot_2 = 0;
	end
	if ( not settings.limitSlot_3) then	
		settings.limitSlot_3 = 0;
	end
	if ( not settings.limitSlot_4) then	
		settings.limitSlot_4 = 0;
	end
	if ( not settings.limitSlot_5) then	
		settings.limitSlot_5 = 0;
	end
	if ( not settings.limitSlot_6) then	
		settings.limitSlot_6 = 0;
	end
	if ( not settings.limitSlot_7) then	
		settings.limitSlot_7 = 0;
	end
	if ( not settings.limitSlot_8) then	
		settings.limitSlot_8 = 0;
	end
	if ( not settings.limitSlot_9) then	
		settings.limitSlot_9 = 0;
	end
	if ( not settings.limitSlot_10) then	
		settings.limitSlot_10 = 0;
	end

	if ( not settings.valBagSeearch) then	
		settings.valBagSeearch = 200;
	end

	if ( not settings.valSharedSeearch) then	
		settings.valSharedSeearch = 12000;
	end

	if ( not settings.valVaultSeearch) then	
		settings.valVaultSeearch = 12000;
	end
	
	if ( not settings.escEnable) then	
		settings.escEnable = tostring("true");
	end

	if ( not settings.altEnable) then	
		settings.altEnable = false;
	end

	if ( not settings.restart) then	
		settings.restart = false;
	end
	
	if ( not settings.wantPrevention) then	
		settings.wantPrevention = tostring("true");
	end

rgb = {
    start = "<rgb=#DAA520>",
    error = "<rgb=#FF0000>",
    clear = "</rgb>"
};
end

function SaveSettings()
		settings.positionX = tostring(settings.positionX);
   		settings.positionY = tostring(settings.positionY);
		settings.optionsPositionY = tostring(settings.optionsPositionY);
		settings.optionsPositionX = tostring(settings.optionsPositionX);
		settings.minimizeX = tostring(settings.minimizeX);
   		settings.minimizeY = tostring(settings.minimizeY);

		settings.valBagSeearch = tonumber(settings.valBagSeearch);
		settings.valSharedSeearch = tonumber(settings.valSharedSeearch);
		settings.valVaultSeearch = tonumber(settings.valVaultSeearch);

		settings.isWindowVisible = tostring(settings.isWindowVisible);
		settings.isOptionsWindowVisible = settings.isOptionsWindowVisible;
		settings.shortcutData_1 = tostring(settings.shortcutData_1);
   		settings.shortcutData_2 = tostring(settings.shortcutData_2);
   		settings.shortcutData_3 = tostring(settings.shortcutData_3);
   		settings.shortcutData_4 = tostring(settings.shortcutData_4);
   		settings.shortcutData_5 = tostring(settings.shortcutData_5);
		settings.shortcutData_6 = tostring(settings.shortcutData_6);
		settings.shortcutData_7 = tostring(settings.shortcutData_7);
		settings.shortcutData_8 = tostring(settings.shortcutData_8);
		settings.shortcutData_9 = tostring(settings.shortcutData_9);
		settings.shortcutData_10 = tostring(settings.shortcutData_10);
		settings.wantPrevention = tostring(settings.wantPrevention);
		settings.escEnable = tostring(settings.escEnable);

		settings.itemName_1 = tostring(settings.itemName_1);
		settings.itemName_2 = tostring(settings.itemName_2);
		settings.itemName_3 = tostring(settings.itemName_3);
		settings.itemName_4 = tostring(settings.itemName_4);
		settings.itemName_5 = tostring(settings.itemName_5);
		settings.itemName_6 = tostring(settings.itemName_6);
		settings.itemName_7 = tostring(settings.itemName_7);
		settings.itemName_8 = tostring(settings.itemName_8);
		settings.itemName_9 = tostring(settings.itemName_9);
		settings.itemName_10 = tostring(settings.itemName_10);

		settings.limitSlot_1 = settings.limitSlot_1;
		settings.limitSlot_2 = settings.limitSlot_2;
		settings.limitSlot_3 = settings.limitSlot_3;
		settings.limitSlot_4 = settings.limitSlot_4;
		settings.limitSlot_5 = settings.limitSlot_5;
		settings.limitSlot_6 = settings.limitSlot_6;
		settings.limitSlot_7 = settings.limitSlot_7;
		settings.limitSlot_8 = settings.limitSlot_8;
		settings.limitSlot_9 = settings.limitSlot_9;
		settings.limitSlot_10 = settings.limitSlot_10;

   -- save the settings
	PatchDataSave( Turbine.DataScope.Character, "Farmer_Settings", settings);
end