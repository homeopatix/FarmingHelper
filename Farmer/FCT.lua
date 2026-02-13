------------------------------------------------------------------------------------------
-- Closing window handler
------------------------------------------------------------------------------------------
function ClosingWindow()
	function FarmerWindow:Closing(sender, args)
		settings.isWindowVisible = false;
		SaveSettings();
	end
end

------------------------------------------------------------------------------------------
-- mouseHover handling
------------------------------------------------------------------------------------------
function SetTheMouseEnter()
	centerLabelB.MouseEnter = function()
		BagButtonLabel:SetVisible(true);
	end

	centerLabelB.MouseLeave = function()
		BagButtonLabel:SetVisible(false);
	end

	centerLabelB2.MouseEnter = function()
		BagButtonLabel2:SetVisible(true);
	end

	centerLabelB2.MouseLeave = function()
		BagButtonLabel2:SetVisible(false);
	end

	centerLabelB3.MouseEnter = function()
		BagButtonLabel3:SetVisible(true);
	end

	centerLabelB3.MouseLeave = function()
		BagButtonLabel3:SetVisible(false);
	end
end

------------------------------------------------------------------------------------------
-- setting the shortcuts
------------------------------------------------------------------------------------------
function SetTheShortCut()

	if(settings.shortcutData_1 ~= "") then
		centerQS1:SetShortcut( Turbine.UI.Lotro.Shortcut( 2, settings.shortcutData_1 ) );
	end
	if(settings.shortcutData_2 ~= "") then
		centerQS2:SetShortcut( Turbine.UI.Lotro.Shortcut( 2, settings.shortcutData_2 ) );
	end
	if(settings.shortcutData_3 ~= "") then
		centerQS3:SetShortcut( Turbine.UI.Lotro.Shortcut( 2, settings.shortcutData_3 ) );
	end
	if(settings.shortcutData_4 ~= "") then
		centerQS4:SetShortcut( Turbine.UI.Lotro.Shortcut( 2, settings.shortcutData_4 ) );
	end
	if(settings.shortcutData_5 ~= "") then
		centerQS5:SetShortcut( Turbine.UI.Lotro.Shortcut( 2, settings.shortcutData_5 ) );
	end
	if(settings.shortcutData_6 ~= "") then
		centerQS6:SetShortcut( Turbine.UI.Lotro.Shortcut( 2, settings.shortcutData_6 ) );
	end
	if(settings.shortcutData_7 ~= "") then
		centerQS7:SetShortcut( Turbine.UI.Lotro.Shortcut( 2, settings.shortcutData_7 ) );
	end
	if(settings.shortcutData_8 ~= "") then
		centerQS8:SetShortcut( Turbine.UI.Lotro.Shortcut( 2, settings.shortcutData_8 ) );
	end
	if(settings.shortcutData_9 ~= "") then
		centerQS9:SetShortcut( Turbine.UI.Lotro.Shortcut( 2, settings.shortcutData_9 ) );
	end
	if(settings.shortcutData_10 ~= "") then
		centerQS10:SetShortcut( Turbine.UI.Lotro.Shortcut( 2, settings.shortcutData_10 ) );
	end
end

------------------------------------------------------------------------------------------
-- setting the shortcuts for drag and drop
------------------------------------------------------------------------------------------
function SetTheDragAndDrop()
	centerQS1.DragDrop = function(sender, args)
		local tmp = Turbine.UI.Lotro.Quickslot();	
		tmp = centerQS1:GetShortcut();
		tmp = tmp:GetData();
		settings.shortcutData_1 = tmp;

		if(centerQS1:GetShortcut():GetItem() == nil)then
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. 
				" - " .. rgb["error"] .. Strings.ErrorDrag ..  rgb["clear"]);
		else
			tmpName = centerQS1:GetShortcut():GetItem():GetName();
			settings.itemName_1 =  tmpName;
			settings.restart = true;
			Turbine.Shell.WriteLine("tmpName : " .. tmpName);
		end

		SaveSettings();
	end

	centerQS2.DragDrop = function(sender, args)
		local tmp = Turbine.UI.Lotro.Quickslot();	
		tmp = centerQS2:GetShortcut();
		tmp = tmp:GetData();
		settings.shortcutData_2 = tmp;

		if(centerQS2:GetShortcut():GetItem() == nil)then
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. 
				" - " .. rgb["error"] .. Strings.ErrorDrag ..  rgb["clear"]);
		else
			tmpName = centerQS2:GetShortcut():GetItem():GetName();
			settings.itemName_2 =  tmpName;
			settings.restart = true;
		end
		SaveSettings();
	end

	centerQS3.DragDrop = function(sender, args)
		local tmp = Turbine.UI.Lotro.Quickslot();	
		tmp = centerQS3:GetShortcut();
		tmp = tmp:GetData();
		settings.shortcutData_3 = tmp;

		if(centerQS3:GetShortcut():GetItem() == nil)then
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. 
				" - " .. rgb["error"] .. Strings.ErrorDrag ..  rgb["clear"]);
		else
			tmpName = centerQS3:GetShortcut():GetItem():GetName();
			settings.itemName_3 =  tmpName;
			settings.restart = true;
		end
		SaveSettings();
	end

	centerQS4.DragDrop = function(sender, args)
		local tmp = Turbine.UI.Lotro.Quickslot();	
		tmp = centerQS4:GetShortcut();
		tmp = tmp:GetData();
		settings.shortcutData_4 = tmp;

		if(centerQS4:GetShortcut():GetItem() == nil)then
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. 
				" - " .. rgb["error"] .. Strings.ErrorDrag ..  rgb["clear"]);
		else
			tmpName = centerQS4:GetShortcut():GetItem():GetName();
			settings.itemName_4 =  tmpName;
			settings.restart = true;
		end
		
		SaveSettings();
	end

	centerQS5.DragDrop = function(sender, args)
		local tmp = Turbine.UI.Lotro.Quickslot();	
		tmp = centerQS5:GetShortcut();
		tmp = tmp:GetData();
		settings.shortcutData_5 = tmp;

		if(centerQS5:GetShortcut():GetItem() == nil)then
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. 
				" - " .. rgb["error"] .. Strings.ErrorDrag ..  rgb["clear"]);
		else
			tmpName = centerQS5:GetShortcut():GetItem():GetName();
			settings.itemName_5 =  tmpName;
			settings.restart = true;
		end
		SaveSettings();
	end

	centerQS6.DragDrop = function(sender, args)
		local tmp = Turbine.UI.Lotro.Quickslot();	
		tmp = centerQS6:GetShortcut();
		tmp = tmp:GetData();
		settings.shortcutData_6 = tmp;
		
		if(centerQS6:GetShortcut():GetItem() == nil)then
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. 
				" - " .. rgb["error"] .. Strings.ErrorDrag ..  rgb["clear"]);
		else
			tmpName = centerQS6:GetShortcut():GetItem():GetName();
			settings.itemName_6 =  tmpName;
			settings.restart = true;
		end
		SaveSettings();
	end
	
	centerQS7.DragDrop = function(sender, args)
		local tmp = Turbine.UI.Lotro.Quickslot();	
		tmp = centerQS7:GetShortcut();
		tmp = tmp:GetData();
		settings.shortcutData_7 = tmp;
		
		if(centerQS7:GetShortcut():GetItem() == nil)then
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. 
				" - " .. rgb["error"] .. Strings.ErrorDrag ..  rgb["clear"]);
		else
			tmpName = centerQS7:GetShortcut():GetItem():GetName();
			settings.itemName_7 =  tmpName;
			settings.restart = true;
		end
		SaveSettings();
	end
	
	centerQS8.DragDrop = function(sender, args)
		local tmp = Turbine.UI.Lotro.Quickslot();	
		tmp = centerQS8:GetShortcut();
		tmp = tmp:GetData();
		settings.shortcutData_8 = tmp;
		
		if(centerQS8:GetShortcut():GetItem() == nil)then
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. 
				" - " .. rgb["error"] .. Strings.ErrorDrag ..  rgb["clear"]);
		else
			tmpName = centerQS8:GetShortcut():GetItem():GetName();
			settings.itemName_8 =  tmpName;
			settings.restart = true;
		end
		SaveSettings();
	end
	
	centerQS9.DragDrop = function(sender, args)
		local tmp = Turbine.UI.Lotro.Quickslot();	
		tmp = centerQS9:GetShortcut();
		tmp = tmp:GetData();
		settings.shortcutData_9 = tmp;
		
		if(centerQS9:GetShortcut():GetItem() == nil)then
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. 
				" - " .. rgb["error"] .. Strings.ErrorDrag ..  rgb["clear"]);
		else
			tmpName = centerQS9:GetShortcut():GetItem():GetName();
			settings.itemName_9 =  tmpName;
			settings.restart = true;
		end
		SaveSettings();
	end
	
	centerQS10.DragDrop = function(sender, args)
		local tmp = Turbine.UI.Lotro.Quickslot();	
		tmp = centerQS10:GetShortcut();
		tmp = tmp:GetData();
		settings.shortcutData_10 = tmp;
		
		if(centerQS10:GetShortcut():GetItem() == nil)then
			Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. 
				" - " .. rgb["error"] .. Strings.ErrorDrag ..  rgb["clear"]);
		else
			tmpName = centerQS10:GetShortcut():GetItem():GetName();
			settings.itemName_10 =  tmpName;
			settings.restart = true;
		end
		SaveSettings();
	end
end

function returnBagValue(itemToSearch)
	local tq1 = 0;	
	local backpack = Turbine.Gameplay.LocalPlayer:GetInstance():GetBackpack();
	local bagSize = backpack:GetSize();
	for i=1, bagSize do
		if(backpack:GetItem(i) ~= nil) then
			if(backpack:GetItem(i):GetName() == itemToSearch ) then
				tq1 = tq1 + tostring(backpack:GetItem(i):GetQuantity());
			end
		end
	end
	return tq1;
end
function returnSharedStorageValue(itemToSearch)
	local tq2 = 0;	
	local sharedStorage = Turbine.Gameplay.LocalPlayer:GetInstance():GetSharedStorage();
	local sharedStorageSize = sharedStorage:GetCapacity();
	for i=1, sharedStorageSize do
			if(sharedStorage:GetItem(i) ~= nil) then
				if(sharedStorage:GetItem(i):GetName() == itemToSearch ) then
					tq2 = tq2 + tostring(sharedStorage:GetItem(i):GetQuantity());
				end
			end
		end
	return tq2;
end

function returnVaultValue(itemToSearch)
	local tq3 = 0;	
	local vault = Turbine.Gameplay.LocalPlayer:GetInstance():GetVault();
	local vaultSize = vault:GetCapacity();
	for i=1, vaultSize do
			if(vault:GetItem(i) ~= nil) then
				if(vault:GetItem(i):GetName() == itemToSearch ) then
					tq3 = tq3 + tostring(vault:GetItem(i):GetQuantity());
				end
			end
		end
	return tq3;
end

function UpdateWindow()
	local valBag = 0;
	valBag = settings.valBagSeearch;
	local valShared = 0;
	valShared = settings.valSharedSeearch;
	local valVault = 0;
	valVault = settings.valVaultSeearch;

	local bagValue1 = 0;
	local sharedValue1 = 0;
	local vaultValue1 = 0;
	local bagValue2 = 0;
	local sharedValue2 = 0;
	local vaultValue2 = 0;
	local bagValue3 = 0;
	local sharedValue3 = 0;
	local vaultValue3 = 0;
	local bagValue4 = 0;
	local sharedValue4 = 0;
	local vaultValue4 = 0;
	local bagValue5 = 0;
	local sharedValue5 = 0;
	local vaultValue5 = 0;
	local bagValue6 = 0;
	local sharedValue6 = 0;
	local vaultValue6 = 0;
	local bagValue7 = 0;
	local sharedValue7 = 0;
	local vaultValue7 = 0;
	local bagValue8 = 0;
	local sharedValue8 = 0;
	local vaultValue8 = 0;
	local bagValue9 = 0;
	local sharedValue9 = 0;
	local vaultValue9 = 0;
	local bagValue10 = 0;
	local sharedValue10 = 0;
	local vaultValue10 = 0;

	centerQS1.Update = function(sender, args)
			if(settings.itemName_1 ~= "")then
				if(valBag >= settings.valBagSeearch)then
					bagValue1 = returnBagValue(settings.itemName_1);
				
					if(bagValue1 == 0) then
						FarmerWindow.Message_1:SetText("0");
					else
						FarmerWindow.Message_1:SetText(bagValue1);
					end
				end

				if(valShared >= settings.valSharedSeearch)then
					sharedValue1 = returnSharedStorageValue(settings.itemName_1);
					if(sharedValue1 == 0) then
						FarmerWindow.Message_1b:SetText("0");
					else
						FarmerWindow.Message_1b:SetText(sharedValue1);
					end
				end

				if(valVault >= settings.valVaultSeearch)then
					vaultValue1 = returnVaultValue(settings.itemName_1);
					if(vaultValue1 == 0) then
						FarmerWindow.Message_1c:SetText("0");
					else
						FarmerWindow.Message_1c:SetText(vaultValue1);
					end
				end

				local total1 = 0;
				total1 = bagValue1 + sharedValue1 + vaultValue1;

				if(total1 <= 0) then
					FarmerWindow.Message_1d:SetText("0");
				else
					FarmerWindow.Message_1d:SetText(total1);
				end

				if(total1 >= settings.limitSlot_1 and settings.limitSlot_1 ~= 0)then
					FarmerWindow.Message_1:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_1b:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_1c:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_1d:SetForeColor(Turbine.UI.Color.Gold);
				else
					FarmerWindow.Message_1:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_1b:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_1c:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_1d:SetForeColor(Turbine.UI.Color.Lime);
				end

			else
				FarmerWindow.Message_1:SetText("");
				FarmerWindow.Message_1b:SetText("");
				FarmerWindow.Message_1c:SetText("");
				FarmerWindow.Message_1d:SetText("");
			end
	end
	centerQS2.Update = function(sender, args)
			if(settings.itemName_2 ~= "")then
				if(valBag >= settings.valBagSeearch)then
					bagValue2 = returnBagValue(settings.itemName_2);
				
					if(bagValue2 == 0) then
						FarmerWindow.Message_2:SetText("0");
					else
						FarmerWindow.Message_2:SetText(bagValue2);
					end
				end

				if(valShared >= settings.valSharedSeearch)then
					sharedValue2 = returnSharedStorageValue(settings.itemName_2);
					if(sharedValue2 == 0) then
						FarmerWindow.Message_2b:SetText("0");
					else
						FarmerWindow.Message_2b:SetText(sharedValue2);
					end
				end

				if(valVault >= settings.valVaultSeearch)then
					vaultValue2 = returnVaultValue(settings.itemName_2);
					if(vaultValue2 == 0) then
						FarmerWindow.Message_2c:SetText("0");
					else
						FarmerWindow.Message_2c:SetText(vaultValue2);
					end
				end

				local tota2l = 0;
				total2 = bagValue2 + sharedValue2 + vaultValue2;

				if(total2 <= 0) then
					FarmerWindow.Message_2d:SetText("0");
				else
					FarmerWindow.Message_2d:SetText(total2);
				end

				if(total2 >= settings.limitSlot_2 and settings.limitSlot_2 ~= 0)then
					FarmerWindow.Message_2:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_2b:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_2c:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_2d:SetForeColor(Turbine.UI.Color.Gold);
				else
					FarmerWindow.Message_2:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_2b:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_2c:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_2d:SetForeColor(Turbine.UI.Color.Lime);
				end

			else
				FarmerWindow.Message_2:SetText("");
				FarmerWindow.Message_2b:SetText("");
				FarmerWindow.Message_2c:SetText("");
				FarmerWindow.Message_2d:SetText("");
			end
	end
	centerQS3.Update = function(sender, args)
			if(settings.itemName_3 ~= "")then
				if(valBag >= settings.valBagSeearch)then
					bagValue3 = returnBagValue(settings.itemName_3);
				
					if(bagValue3 == 0) then
						FarmerWindow.Message_3:SetText("0");
					else
						FarmerWindow.Message_3:SetText(bagValue3);
					end
				end

				if(valShared >= settings.valSharedSeearch)then
					sharedValue3 = returnSharedStorageValue(settings.itemName_3);
					if(sharedValue3 == 0) then
						FarmerWindow.Message_3b:SetText("0");
					else
						FarmerWindow.Message_3b:SetText(sharedValue3);
					end
				end

				if(valVault >= settings.valVaultSeearch)then
					vaultValue3 = returnVaultValue(settings.itemName_3);
					if(vaultValue3 == 0) then
						FarmerWindow.Message_3c:SetText("0");
					else
						FarmerWindow.Message_3c:SetText(vaultValue3);
					end
				end

				local total3 = 0;
				total3 = bagValue3 + sharedValue3 + vaultValue3;

				if(total3 <= 0) then
					FarmerWindow.Message_3d:SetText("0");
				else
					FarmerWindow.Message_3d:SetText(total3);
				end

				if(total3 >= settings.limitSlot_3 and settings.limitSlot_3 ~= 0)then
					FarmerWindow.Message_3:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_3b:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_3c:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_3d:SetForeColor(Turbine.UI.Color.Gold);
				else
					FarmerWindow.Message_3:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_3b:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_3c:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_3d:SetForeColor(Turbine.UI.Color.Lime);
				end
			else
				FarmerWindow.Message_3:SetText("");
				FarmerWindow.Message_3b:SetText("");
				FarmerWindow.Message_3c:SetText("");
				FarmerWindow.Message_3d:SetText("");
			end
	end
	centerQS4.Update = function(sender, args)
			if(settings.itemName_4 ~= "")then
				if(valBag >= settings.valBagSeearch)then
					bagValue4 = returnBagValue(settings.itemName_4);
				
					if(bagValue4 == 0) then
						FarmerWindow.Message_4:SetText("0");
					else
						FarmerWindow.Message_4:SetText(bagValue4);
					end
				end

				if(valShared >= settings.valSharedSeearch)then
					sharedValue4 = returnSharedStorageValue(settings.itemName_4);
					if(sharedValue4 == 0) then
						FarmerWindow.Message_4b:SetText("0");
					else
						FarmerWindow.Message_4b:SetText(sharedValue4);
					end
				end

				if(valVault >= settings.valVaultSeearch)then
					vaultValue4 = returnVaultValue(settings.itemName_4);
					if(vaultValue4 == 0) then
						FarmerWindow.Message_4c:SetText("0");
					else
						FarmerWindow.Message_4c:SetText(vaultValue4);
					end
				end

				local total4 = 0;
				total4 = bagValue4 + sharedValue4 + vaultValue4;

				if(total4 <= 0) then
					FarmerWindow.Message_4d:SetText("0");
				else
					FarmerWindow.Message_4d:SetText(total4);
				end

				if(total4 >= settings.limitSlot_4 and settings.limitSlot_4 ~= 0)then
					FarmerWindow.Message_4:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_4b:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_4c:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_4d:SetForeColor(Turbine.UI.Color.Gold);
				else
					FarmerWindow.Message_4:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_4b:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_4c:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_4d:SetForeColor(Turbine.UI.Color.Lime);
				end
			else
				FarmerWindow.Message_4:SetText("");
				FarmerWindow.Message_4b:SetText("");
				FarmerWindow.Message_4c:SetText("");
				FarmerWindow.Message_4d:SetText("");
			end
	end
	centerQS5.Update = function(sender, args)
			if(settings.itemName_5 ~= "")then
				if(valBag >= settings.valBagSeearch)then
					bagValue5 = returnBagValue(settings.itemName_5);
				
					if(bagValue5 == 0) then
						FarmerWindow.Message_5:SetText("0");
					else
						FarmerWindow.Message_5:SetText(bagValue5);
					end
				end

				if(valShared >= settings.valSharedSeearch)then
					sharedValue5 = returnSharedStorageValue(settings.itemName_5);
					if(sharedValue5 == 0) then
						FarmerWindow.Message_5b:SetText("0");
					else
						FarmerWindow.Message_5b:SetText(sharedValue5);
					end
				end

				if(valVault >= settings.valVaultSeearch)then
					vaultValue5 = returnVaultValue(settings.itemName_5);
					if(vaultValue5 == 0) then
						FarmerWindow.Message_5c:SetText("0");
					else
						FarmerWindow.Message_5c:SetText(vaultValue5);
					end
				end

				local total5 = 0;
				total5 = bagValue5 + sharedValue5 + vaultValue5;

				if(total5 <= 0) then
					FarmerWindow.Message_5d:SetText("0");
				else
					FarmerWindow.Message_5d:SetText(total5);
				end
				if(total5 >= settings.limitSlot_5 and settings.limitSlot_5 ~= 0)then
					FarmerWindow.Message_5:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_5b:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_5c:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_5d:SetForeColor(Turbine.UI.Color.Gold);
				else
					FarmerWindow.Message_5:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_5b:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_5c:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_5d:SetForeColor(Turbine.UI.Color.Lime);
				end

			else
				FarmerWindow.Message_5:SetText("");
				FarmerWindow.Message_5b:SetText("");
				FarmerWindow.Message_5c:SetText("");
				FarmerWindow.Message_5d:SetText("");
			end
	end
	centerQS6.Update = function(sender, args)
			if(settings.itemName_6 ~= "")then
				if(valBag >= settings.valBagSeearch)then
					bagValue6 = returnBagValue(settings.itemName_6);
				
					if(bagValue6 == 0) then
						FarmerWindow.Message_6:SetText("0");
					else
						FarmerWindow.Message_6:SetText(bagValue6);
					end
				end

				if(valShared >= settings.valSharedSeearch)then
					sharedValue6 = returnSharedStorageValue(settings.itemName_6);
					if(sharedValue6 == 0) then
						FarmerWindow.Message_6b:SetText("0");
					else
						FarmerWindow.Message_6b:SetText(sharedValue6);
					end
				end

				if(valVault >= settings.valVaultSeearch)then
					vaultValue6 = returnVaultValue(settings.itemName_6);
					if(vaultValue6 == 0) then
						FarmerWindow.Message_6c:SetText("0");
					else
						FarmerWindow.Message_6c:SetText(vaultValue6);
					end
				end

				local total6 = 0;
				total6 = bagValue6 + sharedValue6 + vaultValue6;

				if(total6 <= 0) then
					FarmerWindow.Message_6d:SetText("0");
				else
					FarmerWindow.Message_6d:SetText(total6);
				end
				if(total6 >= settings.limitSlot_6 and settings.limitSlot_6 ~= 0)then
					FarmerWindow.Message_6:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_6b:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_6c:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_6d:SetForeColor(Turbine.UI.Color.Gold);
				else
					FarmerWindow.Message_6:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_6b:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_6c:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_6d:SetForeColor(Turbine.UI.Color.Lime);
				end

			else
				FarmerWindow.Message_6:SetText("");
				FarmerWindow.Message_6b:SetText("");
				FarmerWindow.Message_6c:SetText("");
				FarmerWindow.Message_6d:SetText("");
			end
	end
	centerQS7.Update = function(sender, args)
			if(settings.itemName_7 ~= "")then
				if(valBag >= settings.valBagSeearch)then
					bagValue7 = returnBagValue(settings.itemName_7);
				
					if(bagValue7 == 0) then
						FarmerWindow.Message_7:SetText("0");
					else
						FarmerWindow.Message_7:SetText(bagValue7);
					end
				end

				if(valShared >= settings.valSharedSeearch)then
					sharedValue7 = returnSharedStorageValue(settings.itemName_7);
					if(sharedValue7 == 0) then
						FarmerWindow.Message_7b:SetText("0");
					else
						FarmerWindow.Message_7b:SetText(sharedValue7);
					end
				end

				if(valVault >= settings.valVaultSeearch)then
					vaultValue7 = returnVaultValue(settings.itemName_7);
					if(vaultValue7 == 0) then
						FarmerWindow.Message_7c:SetText("0");
					else
						FarmerWindow.Message_7c:SetText(vaultValue7);
					end
				end

				local total7 = 0;
				total7 = bagValue7 + sharedValue7 + vaultValue7;

				if(total7 <= 0) then
					FarmerWindow.Message_7d:SetText("0");
				else
					FarmerWindow.Message_7d:SetText(total7);
				end

				if(total7 >= settings.limitSlot_7 and settings.limitSlot_7 ~= 0)then
					FarmerWindow.Message_7:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_7b:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_7c:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_7d:SetForeColor(Turbine.UI.Color.Gold);
				else
					FarmerWindow.Message_7:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_7b:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_7c:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_7d:SetForeColor(Turbine.UI.Color.Lime);
				end
			else
				FarmerWindow.Message_7:SetText("");
				FarmerWindow.Message_7b:SetText("");
				FarmerWindow.Message_7c:SetText("");
				FarmerWindow.Message_7d:SetText("");
			end
	end
	centerQS8.Update = function(sender, args)
			if(settings.itemName_8 ~= "")then
				if(valBag >= settings.valBagSeearch)then
					bagValue8 = returnBagValue(settings.itemName_8);
				
					if(bagValue8 == 0) then
						FarmerWindow.Message_8:SetText("0");
					else
						FarmerWindow.Message_8:SetText(bagValue8);
					end
				end

				if(valShared >= settings.valSharedSeearch)then
					sharedValue8 = returnSharedStorageValue(settings.itemName_8);
					if(sharedValue8 == 0) then
						FarmerWindow.Message_8b:SetText("0");
					else
						FarmerWindow.Message_8b:SetText(sharedValue8);
					end
				end

				if(valVault >= settings.valVaultSeearch)then
					vaultValue8 = returnVaultValue(settings.itemName_8);
					if(vaultValue8 == 0) then
						FarmerWindow.Message_8c:SetText("0");
					else
						FarmerWindow.Message_8c:SetText(vaultValue8);
					end
				end

				local total8 = 0;
				total8 = bagValue8 + sharedValue8 + vaultValue8;

				if(total8 <= 0) then
					FarmerWindow.Message_8d:SetText("0");
				else
					FarmerWindow.Message_8d:SetText(total8);
				end

				if(total8 >= settings.limitSlot_8 and settings.limitSlot_8 ~= 0)then
					FarmerWindow.Message_8:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_8b:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_8c:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_8d:SetForeColor(Turbine.UI.Color.Gold);
				else
					FarmerWindow.Message_8:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_8b:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_8c:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_8d:SetForeColor(Turbine.UI.Color.Lime);
				end
			else
				FarmerWindow.Message_8:SetText("");
				FarmerWindow.Message_8b:SetText("");
				FarmerWindow.Message_8c:SetText("");
				FarmerWindow.Message_8d:SetText("");
			end
	end
	centerQS9.Update = function(sender, args)
			if(settings.itemName_9 ~= "")then
				if(valBag >= settings.valBagSeearch)then
					bagValue9 = returnBagValue(settings.itemName_9);
				
					if(bagValue9 == 0) then
						FarmerWindow.Message_9:SetText("0");
					else
						FarmerWindow.Message_9:SetText(bagValue9);
					end
				end

				if(valShared >= settings.valSharedSeearch)then
					sharedValue9 = returnSharedStorageValue(settings.itemName_9);
					if(sharedValue9 == 0) then
						FarmerWindow.Message_9b:SetText("0");
					else
						FarmerWindow.Message_9b:SetText(sharedValue9);
					end
				end

				if(valVault >= settings.valVaultSeearch)then
					vaultValue9 = returnVaultValue(settings.itemName_9);
					if(vaultValue9 == 0) then
						FarmerWindow.Message_9c:SetText("0");
					else
						FarmerWindow.Message_9c:SetText(vaultValue9);
					end
				end

				local total9 = 0;
				total9 = bagValue9 + sharedValue9 + vaultValue9;

				if(total9 <= 0) then
					FarmerWindow.Message_9d:SetText("0");
				else
					FarmerWindow.Message_9d:SetText(total9);
				end

				if(total9 >= settings.limitSlot_9 and settings.limitSlot_9~= 0)then
					FarmerWindow.Message_9:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_9b:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_9c:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_9d:SetForeColor(Turbine.UI.Color.Gold);
				else
					FarmerWindow.Message_9:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_9b:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_9c:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_9d:SetForeColor(Turbine.UI.Color.Lime);
				end
			else
				FarmerWindow.Message_9:SetText("");
				FarmerWindow.Message_9b:SetText("");
				FarmerWindow.Message_9c:SetText("");
				FarmerWindow.Message_9d:SetText("");
			end
	end
	centerQS10.Update = function(sender, args)
			if(settings.itemName_10 ~= "")then
				if(valBag >= settings.valBagSeearch)then
					bagValue10 = returnBagValue(settings.itemName_10);
				
					if(bagValue10 == 0) then
						FarmerWindow.Message_10:SetText("0");
					else
						FarmerWindow.Message_10:SetText(bagValue10);
					end
				end

				if(valShared >= settings.valSharedSeearch)then
					sharedValue10 = returnSharedStorageValue(settings.itemName_10);
					if(sharedValue10 == 0) then
						FarmerWindow.Message_10b:SetText("0");
					else
						FarmerWindow.Message_10b:SetText(sharedValue10);
					end
				end

				if(valVault >= settings.valVaultSeearch)then
					vaultValue10 = returnVaultValue(settings.itemName_10);
					if(vaultValue10 == 0) then
						FarmerWindow.Message_10c:SetText("0");
					else
						FarmerWindow.Message_10c:SetText(vaultValue10);
					end
				end

				local total10 = 0;
				total10 = bagValue10 + sharedValue10 + vaultValue10;

				if(total10 <= 0) then
					FarmerWindow.Message_10d:SetText("0");
				else
					FarmerWindow.Message_10d:SetText(total10);
				end

				if(total10 >= settings.limitSlot_10 and settings.limitSlot_10 ~= 0)then
					FarmerWindow.Message_10:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_10b:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_10c:SetForeColor(Turbine.UI.Color.Gold);
					FarmerWindow.Message_10d:SetForeColor(Turbine.UI.Color.Gold);
				else
					FarmerWindow.Message_10:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_10b:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_10c:SetForeColor(Turbine.UI.Color.White);
					FarmerWindow.Message_10d:SetForeColor(Turbine.UI.Color.Lime);
				end
			else
				FarmerWindow.Message_10:SetText("");
				FarmerWindow.Message_10b:SetText("");
				FarmerWindow.Message_10c:SetText("");
				FarmerWindow.Message_10d:SetText("");
			end
	end

	FarmerWindow.Update = function(sender, args)
		if(settings.restart == true)then
			valBag = settings.valBagSeearch + 5;
			valShared = settings.valSharedSeearch + 5;
			valVault = settings.valVaultSeearch + 5;
			settings.restart = false;
		end
		
		if(settings.itemName_1 ~= "" or 
		settings.itemName_2 ~= "" or 
		settings.itemName_3 ~= "" or 
		settings.itemName_4 ~= "" or 
		settings.itemName_5 ~= "" or 
		settings.itemName_6 ~= "" or 
		settings.itemName_7 ~= "" or 
		settings.itemName_8 ~= "" or 
		settings.itemName_9 ~= "" or 
		settings.itemName_10 ~= "")then
			valBag = valBag - 1;
			valShared = valShared - 1;
			valVault = valVault - 1;

			if(valBag <= 0)then
				valBag = settings.valBagSeearch;
			end
			if(valShared <= 0)then
				valShared = settings.valSharedSeearch;
			end
			if(valVault <= 0)then
				valVault = settings.valVaultSeearch;
			end
		end
	end
end

function ClearAll()
	UpdateWindow();
		settings.shortcutData_1 = tostring("");
		settings.shortcutData_2 = tostring(""); 
		settings.shortcutData_3 = tostring(""); 
		settings.shortcutData_4 = tostring(""); 
		settings.shortcutData_5 = tostring(""); 
		settings.shortcutData_6 = tostring(""); 
		settings.shortcutData_7 = tostring(""); 
		settings.shortcutData_8 = tostring(""); 
		settings.shortcutData_9 = tostring(""); 
		settings.shortcutData_10 = tostring(""); 
		settings.itemName_1 = tostring("");
		settings.itemName_2 = tostring("");
		settings.itemName_3 = tostring("");
		settings.itemName_4 = tostring("");
		settings.itemName_5 = tostring("");
		settings.itemName_6 = tostring("");
		settings.itemName_7 = tostring("");
		settings.itemName_8 = tostring("");
		settings.itemName_9 = tostring("");
		settings.itemName_10 = tostring("");
		centerQS1:SetShortcut(Turbine.UI.Lotro.Shortcut()); 
		centerQS2:SetShortcut(Turbine.UI.Lotro.Shortcut());
		centerQS3:SetShortcut(Turbine.UI.Lotro.Shortcut());
		centerQS4:SetShortcut(Turbine.UI.Lotro.Shortcut());
		centerQS5:SetShortcut(Turbine.UI.Lotro.Shortcut());
		centerQS6:SetShortcut(Turbine.UI.Lotro.Shortcut());
		centerQS7:SetShortcut(Turbine.UI.Lotro.Shortcut());
		centerQS8:SetShortcut(Turbine.UI.Lotro.Shortcut());
		centerQS9:SetShortcut(Turbine.UI.Lotro.Shortcut());
		centerQS10:SetShortcut(Turbine.UI.Lotro.Shortcut());
		FarmerWindow.Message_1:SetText("");
		FarmerWindow.Message_1b:SetText("");
		FarmerWindow.Message_1c:SetText("");
		FarmerWindow.Message_1d:SetText("");
		FarmerWindow.Message_2:SetText("");
		FarmerWindow.Message_2b:SetText("");
		FarmerWindow.Message_2c:SetText("");
		FarmerWindow.Message_2d:SetText("");
		FarmerWindow.Message_3:SetText("");
		FarmerWindow.Message_3b:SetText("");
		FarmerWindow.Message_3c:SetText("");
		FarmerWindow.Message_3d:SetText("");
		FarmerWindow.Message_4:SetText("");
		FarmerWindow.Message_4b:SetText("");
		FarmerWindow.Message_4c:SetText("");
		FarmerWindow.Message_4d:SetText("");
		FarmerWindow.Message_5:SetText("");
		FarmerWindow.Message_5b:SetText("");
		FarmerWindow.Message_5c:SetText("");
		FarmerWindow.Message_5d:SetText("");
		FarmerWindow.Message_6:SetText("");
		FarmerWindow.Message_6b:SetText("");
		FarmerWindow.Message_6c:SetText("");
		FarmerWindow.Message_6d:SetText("");
		FarmerWindow.Message_7:SetText("");
		FarmerWindow.Message_7b:SetText("");
		FarmerWindow.Message_7c:SetText("");
		FarmerWindow.Message_7d:SetText("");
		FarmerWindow.Message_8:SetText("");
		FarmerWindow.Message_8b:SetText("");
		FarmerWindow.Message_8c:SetText("");
		FarmerWindow.Message_8d:SetText("");
		FarmerWindow.Message_9:SetText("");
		FarmerWindow.Message_9b:SetText("");
		FarmerWindow.Message_9c:SetText("");
		FarmerWindow.Message_9d:SetText("");
		FarmerWindow.Message_10:SetText("");
		FarmerWindow.Message_10b:SetText("");
		FarmerWindow.Message_10c:SetText("");
		FarmerWindow.Message_10d:SetText("");
		SaveSettings();
end

function SetMouseCLick()
	function FarmerButton:MouseClick()
		ClearAll();
	end
end

------------------------------------------------------------------------------------------
-- delete the shortcut with mouse wheel
------------------------------------------------------------------------------------------
function DeleteOnMouseWheel()
	centerQS1.MouseWheel = function(sender, args)
		settings.shortcutData_1 = tostring(""); 
		settings.itemName_1 = tostring("");
		centerQS1:SetShortcut(Turbine.UI.Lotro.Shortcut());
		FarmerWindow.Message_1:SetText("");
		FarmerWindow.Message_1b:SetText("");
		FarmerWindow.Message_1c:SetText("");
		FarmerWindow.Message_1d:SetText("");
		SaveSettings();
	end
	centerQS2.MouseWheel = function(sender, args)
		settings.shortcutData_2 = tostring(""); 
		settings.itemName_2 = tostring("");
		centerQS2:SetShortcut(Turbine.UI.Lotro.Shortcut());
		FarmerWindow.Message_2:SetText("");
		FarmerWindow.Message_2b:SetText("");
		FarmerWindow.Message_2c:SetText("");
		FarmerWindow.Message_2d:SetText("");
		SaveSettings();
	end
	centerQS3.MouseWheel = function(sender, args)
		settings.shortcutData_3 = tostring(""); 
		settings.itemName_3 = tostring("");
		centerQS3:SetShortcut(Turbine.UI.Lotro.Shortcut());
		FarmerWindow.Message_3:SetText("");
		FarmerWindow.Message_3b:SetText("");
		FarmerWindow.Message_3c:SetText("");
		FarmerWindow.Message_3d:SetText("");
		SaveSettings();
	end
	centerQS4.MouseWheel = function(sender, args)
		settings.shortcutData_4 = tostring(""); 
		settings.itemName_4 = tostring("");
		centerQS4:SetShortcut(Turbine.UI.Lotro.Shortcut());
		FarmerWindow.Message_4:SetText("");
		FarmerWindow.Message_4b:SetText("");
		FarmerWindow.Message_4c:SetText("");
		FarmerWindow.Message_4d:SetText("");
		SaveSettings();
	end
	centerQS5.MouseWheel = function(sender, args)
		settings.shortcutData_5 = tostring(""); 
		settings.itemName_5 = tostring("");
		centerQS5:SetShortcut(Turbine.UI.Lotro.Shortcut());
		FarmerWindow.Message_5:SetText("");
		FarmerWindow.Message_5b:SetText("");
		FarmerWindow.Message_5c:SetText("");
		FarmerWindow.Message_5d:SetText("");
		SaveSettings();
	end
	centerQS6.MouseWheel = function(sender, args)
		settings.shortcutData_6 = tostring(""); 
		settings.itemName_6 = tostring("");
		centerQS6:SetShortcut(Turbine.UI.Lotro.Shortcut());
		FarmerWindow.Message_6:SetText("");
		FarmerWindow.Message_6b:SetText("");
		FarmerWindow.Message_6c:SetText("");
		FarmerWindow.Message_6d:SetText("");
		SaveSettings();
	end
	centerQS7.MouseWheel = function(sender, args)
		settings.shortcutData_7 = tostring(""); 
		settings.itemName_7 = tostring("");
		centerQS7:SetShortcut(Turbine.UI.Lotro.Shortcut());
		FarmerWindow.Message_7:SetText("");
		FarmerWindow.Message_7b:SetText("");
		FarmerWindow.Message_7c:SetText("");
		FarmerWindow.Message_7d:SetText("");
		SaveSettings();
	end
	centerQS8.MouseWheel = function(sender, args)
		settings.shortcutData_8 = tostring(""); 
		settings.itemName_8 = tostring("");
		centerQS8:SetShortcut(Turbine.UI.Lotro.Shortcut());
		FarmerWindow.Message_8:SetText("");
		FarmerWindow.Message_8b:SetText("");
		FarmerWindow.Message_8c:SetText("");
		FarmerWindow.Message_8d:SetText("");
		SaveSettings();
	end
	centerQS9.MouseWheel = function(sender, args)
		settings.shortcutData_9 = tostring(""); 
		settings.itemName_9 = tostring("");
		centerQS9:SetShortcut(Turbine.UI.Lotro.Shortcut());
		FarmerWindow.Message_9:SetText("");
		FarmerWindow.Message_9b:SetText("");
		FarmerWindow.Message_9c:SetText("");
		FarmerWindow.Message_9d:SetText("");
		SaveSettings();
	end
	centerQS10.MouseWheel = function(sender, args)
		settings.shortcutData_10 = tostring(""); 
		settings.itemName_10 = tostring("");
		centerQS10:SetShortcut(Turbine.UI.Lotro.Shortcut());
		FarmerWindow.Message_10:SetText("");
		FarmerWindow.Message_10b:SetText("");
		FarmerWindow.Message_10c:SetText("");
		FarmerWindow.Message_10d:SetText("");
		SaveSettings();
	end
end