------------------------------------------------------------------------------------------
-- OptionWindow file
-- Written by Homeopatix
-- 7 january 2021
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- define size of the window
------------------------------------------------------------------------------------------
local windowWidth = 0;
local windowHeight = 0;
local positionInitiale = 0;

windowWidth = 400;
windowHeight = 670;
positionInitiale = 50;

local textBoxLinesSlot = {};
local limitSlot = {};
local LabelButton = {};
local ButtonPlusVoc = {};
local centerLabelBVoc = {};

------------------------------------------------------------------------------------------
-- create the options window
------------------------------------------------------------------------------------------
function GenerateOptionsWindow()
		OptionsWindow=Turbine.UI.Lotro.GoldWindow(); 
		OptionsWindow:SetSize(windowWidth, windowHeight); 
		OptionsWindow:SetText(Strings.PluginOptionsText); 

		OptionsWindow.Message=Turbine.UI.Label(); 
		OptionsWindow.Message:SetParent(OptionsWindow); 
		OptionsWindow.Message:SetSize(150,10); 
		OptionsWindow.Message:SetPosition(windowWidth/2 - 75, windowHeight - 17 ); 
		OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		OptionsWindow.Message:SetText(Strings.PluginText); 
		OptionsWindow:SetZOrder(0);
		OptionsWindow:SetWantsKeyEvents(true);

		OptionsWindow:SetPosition((Turbine.UI.Display:GetWidth()-OptionsWindow:GetWidth())/2,(Turbine.UI.Display:GetHeight()-OptionsWindow:GetHeight())/2);
		OptionsWindow:SetVisible(false);

		------------------------------------------------------------------------------------------
		-- center window
		------------------------------------------------------------------------------------------
		OptionsWindow.Message=Turbine.UI.Label(); 
		OptionsWindow.Message:SetParent(OptionsWindow); 
		OptionsWindow.Message:SetSize(300, 20); 
		OptionsWindow.Message:SetPosition(windowWidth/2 - 150, positionInitiale ); 
		OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		OptionsWindow.Message:SetFont(Turbine.UI.Lotro.Font.Verdana16);
		OptionsWindow.Message:SetText(Strings.PluginOption1); 

		OptionsWindow.Message=Turbine.UI.Label(); 
		OptionsWindow.Message:SetParent(OptionsWindow); 
		OptionsWindow.Message:SetSize(300, 20); 
		OptionsWindow.Message:SetPosition(windowWidth/2 - 150, positionInitiale + 15 ); 
		OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		OptionsWindow.Message:SetFont(Turbine.UI.Lotro.Font.Verdana12);
		OptionsWindow.Message:SetText("Min 200 - Max 60000"); 
  
		textBoxLines = Turbine.UI.Lotro.TextBox();
		textBoxLines:SetParent( OptionsWindow );
		textBoxLines:SetSize(100, 30); 
		textBoxLines:SetText(settings.valBagSeearch); 
		textBoxLines:SetPosition(windowWidth/2 - 50, positionInitiale + 30);
		textBoxLines:SetVisible(true);
		textBoxLines:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		textBoxLines:SetForeColor( Turbine.UI.Color( 0.7, 0.6, 0.2 ));
		textBoxLines:SetBackColor( Turbine.UI.Color( .9, .5, .7, .5));

		OptionsWindow.Message=Turbine.UI.Label(); 
		OptionsWindow.Message:SetParent(OptionsWindow); 
		OptionsWindow.Message:SetSize(100, 20); 
		OptionsWindow.Message:SetPosition(windowWidth/2 + 60, positionInitiale + 35); 
		OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft); 
		OptionsWindow.Message:SetFont(Turbine.UI.Lotro.Font.Verdana12);
		OptionsWindow.Message:SetText("200 = ~1 sec"); 

		OptionsWindow.Message=Turbine.UI.Label(); 
		OptionsWindow.Message:SetParent(OptionsWindow); 
		OptionsWindow.Message:SetSize(300, 20); 
		OptionsWindow.Message:SetPosition(windowWidth/2 - 150, positionInitiale + 80 ); 
		OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		OptionsWindow.Message:SetFont(Turbine.UI.Lotro.Font.Verdana16);
		OptionsWindow.Message:SetText(Strings.PluginOption2); 

		OptionsWindow.Message=Turbine.UI.Label(); 
		OptionsWindow.Message:SetParent(OptionsWindow); 
		OptionsWindow.Message:SetSize(300, 20); 
		OptionsWindow.Message:SetPosition(windowWidth/2 - 150, positionInitiale + 95 ); 
		OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		OptionsWindow.Message:SetFont(Turbine.UI.Lotro.Font.Verdana12);
		OptionsWindow.Message:SetText("Min 200 - Max 60000"); 

		textBoxSlots = Turbine.UI.Lotro.TextBox();
		textBoxSlots:SetParent( OptionsWindow );
		textBoxSlots:SetSize(100, 30); 
		textBoxSlots:SetText(settings.valSharedSeearch); 
		textBoxSlots:SetPosition(windowWidth/2 - 50, positionInitiale + 110);
		textBoxSlots:SetVisible(true);
		textBoxSlots:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		textBoxSlots:SetForeColor( Turbine.UI.Color( 0.7, 0.6, 0.2 ));
		textBoxSlots:SetBackColor( Turbine.UI.Color( .9, .5, .7, .5));	
		
		OptionsWindow.Message=Turbine.UI.Label(); 
		OptionsWindow.Message:SetParent(OptionsWindow); 
		OptionsWindow.Message:SetSize(100, 20); 
		OptionsWindow.Message:SetPosition(windowWidth/2 + 60, positionInitiale + 115); 
		OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft); 
		OptionsWindow.Message:SetFont(Turbine.UI.Lotro.Font.Verdana12);
		OptionsWindow.Message:SetText("12000 = ~1 min"); 

		OptionsWindow.Message=Turbine.UI.Label(); 
		OptionsWindow.Message:SetParent(OptionsWindow); 
		OptionsWindow.Message:SetSize(390, 20); 
		OptionsWindow.Message:SetPosition(windowWidth/2 - 195, 210 ); 
		OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		OptionsWindow.Message:SetFont(Turbine.UI.Lotro.Font.Verdana16);
		OptionsWindow.Message:SetText(Strings.PluginOption3); 

		OptionsWindow.Message=Turbine.UI.Label(); 
		OptionsWindow.Message:SetParent(OptionsWindow); 
		OptionsWindow.Message:SetSize(390, 20); 
		OptionsWindow.Message:SetPosition(windowWidth/2 - 195, 225 ); 
		OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		OptionsWindow.Message:SetFont(Turbine.UI.Lotro.Font.Verdana12);
		OptionsWindow.Message:SetText("Min 200 - Max 60000"); 

		textBoxTeleport = Turbine.UI.Lotro.TextBox();
		textBoxTeleport:SetParent( OptionsWindow );
		textBoxTeleport:SetSize(100, 30); 
		textBoxTeleport:SetText(settings.valVaultSeearch); 
		textBoxTeleport:SetPosition(windowWidth/2 - 50, 240);
		textBoxTeleport:SetVisible(true);
		textBoxTeleport:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		textBoxTeleport:SetForeColor( Turbine.UI.Color( 0.7, 0.6, 0.2 ));
		textBoxTeleport:SetBackColor( Turbine.UI.Color( .9, .5, .7, .5));

		OptionsWindow.Message=Turbine.UI.Label(); 
		OptionsWindow.Message:SetParent(OptionsWindow); 
		OptionsWindow.Message:SetSize(100, 20); 
		OptionsWindow.Message:SetPosition(windowWidth/2 + 60, 245); 
		OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft); 
		OptionsWindow.Message:SetFont(Turbine.UI.Lotro.Font.Verdana12);
		OptionsWindow.Message:SetText("12000 = ~1 min"); 



		--- testage for the limit
		local startPosY = 295;
		local startPosX = windowWidth - windowWidth + 50;
		local nbrLine = 0;
		for i=1, 10 do

			OptionsWindow.Message=Turbine.UI.Label(); 
			OptionsWindow.Message:SetParent(OptionsWindow); 
			OptionsWindow.Message:SetSize(100, 20); 
			OptionsWindow.Message:SetPosition(startPosX, startPosY ); 
			OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
			OptionsWindow.Message:SetFont(Turbine.UI.Lotro.Font.Verdana12);
			OptionsWindow.Message:SetText("Slot " .. i .. " - Limit"); 
  
			textBoxLinesSlot[i] = Turbine.UI.Lotro.TextBox();
			textBoxLinesSlot[i]:SetParent( OptionsWindow );
			textBoxLinesSlot[i]:SetSize(100, 30); 
			textBoxLinesSlot[i]:SetText(tonumber(settings["limitSlot_" .. i])); 
			textBoxLinesSlot[i]:SetPosition(startPosX, startPosY + 20);
			textBoxLinesSlot[i]:SetVisible(true);
			textBoxLinesSlot[i]:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
			textBoxLinesSlot[i]:SetForeColor( Turbine.UI.Color( 0.7, 0.6, 0.2 ));
			textBoxLinesSlot[i]:SetBackColor( Turbine.UI.Color( .9, .5, .7, .5));

			buttonDefineHouseLocationPersonalFaux = Turbine.UI.Extensions.SimpleWindow();
			buttonDefineHouseLocationPersonalFaux:SetParent( OptionsWindow );
			buttonDefineHouseLocationPersonalFaux:SetPosition(startPosX + 110, startPosY + 28);
			buttonDefineHouseLocationPersonalFaux:SetSize( 16, 16 );
			buttonDefineHouseLocationPersonalFaux:SetVisible(true);
			buttonDefineHouseLocationPersonalFaux:SetZOrder(19);
			buttonDefineHouseLocationPersonalFaux:SetBackground(0x410001C5);
			
			ButtonPlusVoc[i] = Turbine.UI.Extensions.SimpleWindow();
			ButtonPlusVoc[i]:SetParent( OptionsWindow );
			ButtonPlusVoc[i]:SetPosition(startPosX + 135 , startPosY + 15 );
			ButtonPlusVoc[i]:SetSize( 180, 30 );
			ButtonPlusVoc[i]:SetVisible(false);
			ButtonPlusVoc[i]:SetZOrder(100);
			ButtonPlusVoc[i]:SetBackground(ResourcePath .. "/Cadre_180_30.tga");

			centerLabelBVoc[i] = Turbine.UI.Label();
			centerLabelBVoc[i]:SetParent(ButtonPlusVoc[i]);
			centerLabelBVoc[i]:SetPosition( 2, 2 );
			centerLabelBVoc[i]:SetSize( 176, 26  );
			centerLabelBVoc[i]:SetFont(Turbine.UI.Lotro.Font.BookAntiquaBold22);
			centerLabelBVoc[i]:SetText( Strings.PluginReset );
			centerLabelBVoc[i]:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
			centerLabelBVoc[i]:SetZOrder(101);
			centerLabelBVoc[i]:SetForeColor(Turbine.UI.Color.Gold);
			centerLabelBVoc[i]:SetBackColor( Turbine.UI.Color( .8, .1, .4, .9) );

			buttonDefineHouseLocationPersonalFaux.MouseEnter = function()
				ButtonPlusVoc[i]:SetVisible(true);
			end

			buttonDefineHouseLocationPersonalFaux.MouseLeave = function()
				ButtonPlusVoc[i]:SetVisible(false);
			end

			buttonDefineHouseLocationPersonalFaux.MouseClick = function()
				settings["limitSlot_" .. i] = 0;
				textBoxLinesSlot[i]:SetText(tonumber(settings["limitSlot_" .. i])); 
			end
		

			startPosY = startPosY + 60;
			nbrLine = nbrLine + 1;

			if(nbrLine == 5)then
				startPosX = windowWidth - 150;
				startPosY = 295;
			end
		end


		buttonValider = Turbine.UI.Lotro.GoldButton();
		buttonValider:SetParent( OptionsWindow );
		buttonValider:SetPosition(windowWidth/2 - 125, windowHeight - 50);
		buttonValider:SetSize( 300, 20 );
		buttonValider:SetFont(Turbine.UI.Lotro.Font.Verdana16);
		buttonValider:SetText( Strings.PluginOption10 );
		buttonValider:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
		buttonValider:SetVisible(true);
		buttonValider:SetMouseVisible(true);

		ValidateChanges();
end
------------------------------------------------------------------------------------------
-- boutton valider
------------------------------------------------------------------------------------------
function ValidateChanges()
	buttonValider.MouseClick = function(sender, args)
			local tmpLine = 0;
			tmpLine = tonumber(textBoxLines:GetText());

			if(tmpLine < 200 or tmpLine > 60000)then
				tmpLine = 200;
				textBoxLines:SetText(tmpLine);
				settings.valBagSeearch =  tmpLine;
			else
				settings.valBagSeearch =  tmpLine;
			end

			local tmpSlots = 0;
			tmpSlots = tonumber(textBoxSlots:GetText());

			if(tmpSlots > 60000 or tmpSlots < 200)then
				tmpSlots = 200;
				textBoxSlots:SetText(tmpSlots);
				settings.valSharedSeearch = tmpSlots;
			else
				settings.valSharedSeearch = tmpSlots;
			end
			------------------------------------------------------------------------------------------
			-- free people option panel --
			------------------------------------------------------------------------------------------
				local tmpTeleport = 0;
				tmpTeleport = tonumber(textBoxTeleport:GetText());

				if(tmpTeleport < 200 or tmpTeleport > 60000)then
					tmpTeleport = 200;
					textBoxTeleport:SetText(tmpTeleport);
					settings.valVaultSeearch = tmpTeleport;
				else
					settings.valVaultSeearch = tmpTeleport;
				end
				--Turbine.Shell.WriteLine(rgb["error"] .. Strings.PluginOptionAlert .. rgb["clear"]);
				------------------------------------------------------------------------------------------
				-- checking the checkbox --
				------------------------------------------------------------------------------------------

			OptionsWindow:SetVisible(false);
			settings.isOptionsWindowVisible = false;

			local valueConvertedBag = 0;
			local valueConvertedShared = 0;
			local valueConvertedVault = 0;

			if(settings.valBagSeearch < 12000)then
				valueConvertedBag = settings.valBagSeearch / 200 ;
				Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginOption1 .. " : ~" .. string.format( "%.1f", valueConvertedBag) .. " sec");
			else
				valueConvertedBag = (settings.valBagSeearch / 200) / 60 ;
				Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginOption1 .. " : ~" .. string.format( "%.1f", valueConvertedBag) .. " min");
			end

			if(settings.valSharedSeearch < 12000)then
				valueConvertedShared = settings.valSharedSeearch / 200 ;
				Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginOption2 .. " : ~" .. string.format( "%.1f", valueConvertedShared) .. " sec");
			else
				valueConvertedShared = (settings.valSharedSeearch / 200) / 60 ;
				Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginOption2 .. " : ~" .. string.format( "%.1f", valueConvertedShared) .. " min");
			end

			if(settings.valVaultSeearch < 12000)then
				valueConvertedVault = settings.valVaultSeearch / 200 ;
				Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginOption3 .. " : ~" .. string.format( "%.1f", valueConvertedVault) .. " sec");
			else
				valueConvertedVault = (settings.valVaultSeearch / 200) / 60 ;
				Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginOption3 .. " : ~" .. string.format( "%.1f", valueConvertedVault) .. " min");
			end


			for i=1, 10 do
				settings["limitSlot_" .. i] = tonumber(textBoxLinesSlot[i]:GetText());
				if(settings["limitSlot_" .. i] > 0)then
					Turbine.Shell.WriteLine(rgb["start"] .. Strings.PluginName .. rgb["clear"] .. " - " .. Strings.PluginOption4 .. i .. " " .. Strings.PluginOption5 .. settings["limitSlot_" .. i]);
				end
			end


			SaveSettings();
			CreateMainWindow();
			UpdateOptionsWindow();
			ClosingTheOptionsWindow();
			FarmerWindow:SetVisible(true);
			settings.isWindowVisible = true;
		end
end

------------------------------------------------------------------------------------------
-- Closing window handler
------------------------------------------------------------------------------------------
function ClosingTheOptionsWindow()
	function OptionsWindow:Closing(sender, args)
		settings.isOptionsWindowVisible = false;
		SaveSettings();
	end
end
------------------------------------------------------------------------------------------
-- updating the options window
------------------------------------------------------------------------------------------
function UpdateOptionsWindow()
	GenerateOptionsWindow();
	ClosingTheWindow();
	ClosingTheOptionsWindow();
end