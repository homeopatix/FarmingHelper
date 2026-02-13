
function CreateMainWindow()
	------------------------------------------------------------------------------------------
-- create the main window
------------------------------------------------------------------------------------------
FarmerWindow=Turbine.UI.Lotro.GoldWindow(); 
FarmerWindow:SetSize(485,195); 
FarmerWindow:SetText( Strings.PluginName ); 
FarmerWindow:SetWantsUpdates(true);
FarmerWindow:SetVisible(false);
FarmerWindow:SetZOrder(-1);

FarmerWindow.Message_1t=Turbine.UI.Label(); 
FarmerWindow.Message_1t:SetParent(FarmerWindow); 
FarmerWindow.Message_1t:SetSize(40,30); 
FarmerWindow.Message_1t:SetPosition(0, FarmerWindow:GetHeight()/2 + 47); 
FarmerWindow.Message_1t:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_1t:SetText("Tot");
FarmerWindow.Message_1t:SetFont(Turbine.UI.Lotro.Font.Verdana16);


if(tonumber(settings["limitSlot_1"]) > 0)then
	FarmerWindow.Message_1a=Turbine.UI.Label(); 
	FarmerWindow.Message_1a:SetParent(FarmerWindow); 
	FarmerWindow.Message_1a:SetSize(40,20); 
	FarmerWindow.Message_1a:SetPosition(36,  28); 
	FarmerWindow.Message_1a:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
	FarmerWindow.Message_1a:SetText(settings["limitSlot_1"]);
	FarmerWindow.Message_1a:SetZOrder(10);
	FarmerWindow.Message_1a:SetFont(Turbine.UI.Lotro.Font.Verdana12);
	FarmerWindow.Message_1a:SetForeColor(Turbine.UI.Color.Gold);
end

FarmerWindow.Message_1=Turbine.UI.Label(); 
FarmerWindow.Message_1:SetParent(FarmerWindow); 
FarmerWindow.Message_1:SetSize(50,30); 
FarmerWindow.Message_1:SetPosition(28, FarmerWindow:GetHeight()/2 - 17); 
FarmerWindow.Message_1:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_1:SetText("");
FarmerWindow.Message_1:SetZOrder(0);
FarmerWindow.Message_1:SetFont(Turbine.UI.Lotro.Font.Verdana16);

FarmerWindow.Message_1b=Turbine.UI.Label(); 
FarmerWindow.Message_1b:SetParent(FarmerWindow); 
FarmerWindow.Message_1b:SetSize(50,30); 
FarmerWindow.Message_1b:SetPosition(28, FarmerWindow:GetHeight()/2 + 4); 
FarmerWindow.Message_1b:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_1b:SetText("");
FarmerWindow.Message_1b:SetZOrder(0);
FarmerWindow.Message_1b:SetFont(Turbine.UI.Lotro.Font.Verdana16);

FarmerWindow.Message_1c=Turbine.UI.Label(); 
FarmerWindow.Message_1c:SetParent(FarmerWindow); 
FarmerWindow.Message_1c:SetSize(50,30); 
FarmerWindow.Message_1c:SetPosition(28, FarmerWindow:GetHeight()/2 + 25); 
FarmerWindow.Message_1c:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_1c:SetText("");
FarmerWindow.Message_1c:SetZOrder(0);
FarmerWindow.Message_1c:SetFont(Turbine.UI.Lotro.Font.Verdana16);

FarmerWindow.Message_1d=Turbine.UI.Label(); 
FarmerWindow.Message_1d:SetParent(FarmerWindow); 
FarmerWindow.Message_1d:SetSize(50,30); 
FarmerWindow.Message_1d:SetPosition(28, FarmerWindow:GetHeight()/2 + 43); 
FarmerWindow.Message_1d:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_1d:SetText("");
FarmerWindow.Message_1d:SetZOrder(0);
FarmerWindow.Message_1d:SetFont(Turbine.UI.Lotro.Font.Verdana16);
--FarmerWindow.Message_1d:SetForeColor(Turbine.UI.Color.Lime);

if(tonumber(settings["limitSlot_2"]) > 0)then
	FarmerWindow.Message_2a=Turbine.UI.Label(); 
	FarmerWindow.Message_2a:SetParent(FarmerWindow); 
	FarmerWindow.Message_2a:SetSize(40,20); 
	FarmerWindow.Message_2a:SetPosition(78,  28); 
	FarmerWindow.Message_2a:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
	FarmerWindow.Message_2a:SetText(settings["limitSlot_2"]);
	FarmerWindow.Message_2a:SetZOrder(10);
	FarmerWindow.Message_2a:SetFont(Turbine.UI.Lotro.Font.Verdana12);
	FarmerWindow.Message_2a:SetForeColor(Turbine.UI.Color.Gold);
end

FarmerWindow.Message_2=Turbine.UI.Label(); 
FarmerWindow.Message_2:SetParent(FarmerWindow); 
FarmerWindow.Message_2:SetSize(50,30); 
FarmerWindow.Message_2:SetPosition(70, FarmerWindow:GetHeight()/2 - 17); 
FarmerWindow.Message_2:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_2:SetFont(Turbine.UI.Lotro.Font.Verdana16);
FarmerWindow.Message_2:SetText("");

FarmerWindow.Message_2b=Turbine.UI.Label(); 
FarmerWindow.Message_2b:SetParent(FarmerWindow); 
FarmerWindow.Message_2b:SetSize(50,30); 
FarmerWindow.Message_2b:SetPosition(70, FarmerWindow:GetHeight()/2 + 4); 
FarmerWindow.Message_2b:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_2b:SetFont(Turbine.UI.Lotro.Font.Verdana16);
FarmerWindow.Message_2b:SetText("");

FarmerWindow.Message_2c=Turbine.UI.Label(); 
FarmerWindow.Message_2c:SetParent(FarmerWindow); 
FarmerWindow.Message_2c:SetSize(50,30); 
FarmerWindow.Message_2c:SetPosition(70, FarmerWindow:GetHeight()/2 + 25); 
FarmerWindow.Message_2c:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_2c:SetFont(Turbine.UI.Lotro.Font.Verdana16);
FarmerWindow.Message_2c:SetText("");

FarmerWindow.Message_2d=Turbine.UI.Label(); 
FarmerWindow.Message_2d:SetParent(FarmerWindow); 
FarmerWindow.Message_2d:SetSize(50,30); 
FarmerWindow.Message_2d:SetPosition(70, FarmerWindow:GetHeight()/2 + 43); 
FarmerWindow.Message_2d:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_2d:SetFont(Turbine.UI.Lotro.Font.Verdana16);
--FarmerWindow.Message_2d:SetForeColor(Turbine.UI.Color.Lime);
FarmerWindow.Message_2d:SetText("");

if(tonumber(settings["limitSlot_3"]) > 0)then
	FarmerWindow.Message_3a=Turbine.UI.Label(); 
	FarmerWindow.Message_3a:SetParent(FarmerWindow); 
	FarmerWindow.Message_3a:SetSize(40,20); 
	FarmerWindow.Message_3a:SetPosition(120,  28); 
	FarmerWindow.Message_3a:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
	FarmerWindow.Message_3a:SetText(settings["limitSlot_3"]);
	FarmerWindow.Message_3a:SetZOrder(10);
	FarmerWindow.Message_3a:SetFont(Turbine.UI.Lotro.Font.Verdana12);
	FarmerWindow.Message_3a:SetForeColor(Turbine.UI.Color.Gold);
end

FarmerWindow.Message_3=Turbine.UI.Label(); 
FarmerWindow.Message_3:SetParent(FarmerWindow); 
FarmerWindow.Message_3:SetSize(50,30); 
FarmerWindow.Message_3:SetPosition(112, FarmerWindow:GetHeight()/2 - 17); 
FarmerWindow.Message_3:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_3:SetFont(Turbine.UI.Lotro.Font.Verdana16);
FarmerWindow.Message_3:SetText("");

FarmerWindow.Message_3b=Turbine.UI.Label(); 
FarmerWindow.Message_3b:SetParent(FarmerWindow); 
FarmerWindow.Message_3b:SetSize(50,30); 
FarmerWindow.Message_3b:SetPosition(112, FarmerWindow:GetHeight()/2 + 4); 
FarmerWindow.Message_3b:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_3b:SetFont(Turbine.UI.Lotro.Font.Verdana16);
FarmerWindow.Message_3b:SetText("");

FarmerWindow.Message_3c=Turbine.UI.Label(); 
FarmerWindow.Message_3c:SetParent(FarmerWindow); 
FarmerWindow.Message_3c:SetSize(50,30); 
FarmerWindow.Message_3c:SetPosition(112, FarmerWindow:GetHeight()/2 + 25); 
FarmerWindow.Message_3c:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_3c:SetFont(Turbine.UI.Lotro.Font.Verdana16);
FarmerWindow.Message_3c:SetText("");

FarmerWindow.Message_3d=Turbine.UI.Label(); 
FarmerWindow.Message_3d:SetParent(FarmerWindow); 
FarmerWindow.Message_3d:SetSize(50,30); 
FarmerWindow.Message_3d:SetPosition(112, FarmerWindow:GetHeight()/2 + 43); 
FarmerWindow.Message_3d:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_3d:SetFont(Turbine.UI.Lotro.Font.Verdana16);
--FarmerWindow.Message_3d:SetForeColor(Turbine.UI.Color.Lime);
FarmerWindow.Message_3d:SetText("");

if(tonumber(settings["limitSlot_4"]) > 0)then
	FarmerWindow.Message_4a=Turbine.UI.Label(); 
	FarmerWindow.Message_4a:SetParent(FarmerWindow); 
	FarmerWindow.Message_4a:SetSize(40,20); 
	FarmerWindow.Message_4a:SetPosition(162,  28); 
	FarmerWindow.Message_4a:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
	FarmerWindow.Message_4a:SetText(settings["limitSlot_4"]);
	FarmerWindow.Message_4a:SetZOrder(10);
	FarmerWindow.Message_4a:SetFont(Turbine.UI.Lotro.Font.Verdana12);
	FarmerWindow.Message_4a:SetForeColor(Turbine.UI.Color.Gold);
end

FarmerWindow.Message_4=Turbine.UI.Label(); 
FarmerWindow.Message_4:SetParent(FarmerWindow); 
FarmerWindow.Message_4:SetSize(50,30); 
FarmerWindow.Message_4:SetPosition(154, FarmerWindow:GetHeight()/2 - 17); 
FarmerWindow.Message_4:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_4:SetFont(Turbine.UI.Lotro.Font.Verdana16);
FarmerWindow.Message_4:SetText("");

FarmerWindow.Message_4b=Turbine.UI.Label(); 
FarmerWindow.Message_4b:SetParent(FarmerWindow); 
FarmerWindow.Message_4b:SetSize(50,30); 
FarmerWindow.Message_4b:SetPosition(154, FarmerWindow:GetHeight()/2 + 4); 
FarmerWindow.Message_4b:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_4b:SetFont(Turbine.UI.Lotro.Font.Verdana16);
FarmerWindow.Message_4b:SetText("");

FarmerWindow.Message_4c=Turbine.UI.Label(); 
FarmerWindow.Message_4c:SetParent(FarmerWindow); 
FarmerWindow.Message_4c:SetSize(50,30); 
FarmerWindow.Message_4c:SetPosition(154, FarmerWindow:GetHeight()/2 + 25); 
FarmerWindow.Message_4c:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_4c:SetFont(Turbine.UI.Lotro.Font.Verdana16);
FarmerWindow.Message_4c:SetText("");

FarmerWindow.Message_4d=Turbine.UI.Label(); 
FarmerWindow.Message_4d:SetParent(FarmerWindow); 
FarmerWindow.Message_4d:SetSize(50,30); 
FarmerWindow.Message_4d:SetPosition(154, FarmerWindow:GetHeight()/2 + 43); 
FarmerWindow.Message_4d:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_4d:SetFont(Turbine.UI.Lotro.Font.Verdana16);
--FarmerWindow.Message_4d:SetForeColor(Turbine.UI.Color.Lime);
FarmerWindow.Message_4d:SetText("");

if(tonumber(settings["limitSlot_5"]) > 0)then
	FarmerWindow.Message_5a=Turbine.UI.Label(); 
	FarmerWindow.Message_5a:SetParent(FarmerWindow); 
	FarmerWindow.Message_5a:SetSize(40,20); 
	FarmerWindow.Message_5a:SetPosition(204,  28); 
	FarmerWindow.Message_5a:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
	FarmerWindow.Message_5a:SetText(settings["limitSlot_5"]);
	FarmerWindow.Message_5a:SetZOrder(10);
	FarmerWindow.Message_5a:SetFont(Turbine.UI.Lotro.Font.Verdana12);
	FarmerWindow.Message_5a:SetForeColor(Turbine.UI.Color.Gold);
end

FarmerWindow.Message_5=Turbine.UI.Label(); 
FarmerWindow.Message_5:SetParent(FarmerWindow); 
FarmerWindow.Message_5:SetSize(50,30); 
FarmerWindow.Message_5:SetPosition(196, FarmerWindow:GetHeight()/2 - 17); 
FarmerWindow.Message_5:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_5:SetFont(Turbine.UI.Lotro.Font.Verdana16);
FarmerWindow.Message_5:SetText("");

FarmerWindow.Message_5b=Turbine.UI.Label(); 
FarmerWindow.Message_5b:SetParent(FarmerWindow); 
FarmerWindow.Message_5b:SetSize(50,30); 
FarmerWindow.Message_5b:SetPosition(196, FarmerWindow:GetHeight()/2 + 4); 
FarmerWindow.Message_5b:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_5b:SetFont(Turbine.UI.Lotro.Font.Verdana16);
FarmerWindow.Message_5b:SetText("");

FarmerWindow.Message_5c=Turbine.UI.Label(); 
FarmerWindow.Message_5c:SetParent(FarmerWindow); 
FarmerWindow.Message_5c:SetSize(50,30); 
FarmerWindow.Message_5c:SetPosition(196, FarmerWindow:GetHeight()/2 + 25); 
FarmerWindow.Message_5c:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_5c:SetFont(Turbine.UI.Lotro.Font.Verdana16);
FarmerWindow.Message_5c:SetText("");

FarmerWindow.Message_5d=Turbine.UI.Label(); 
FarmerWindow.Message_5d:SetParent(FarmerWindow); 
FarmerWindow.Message_5d:SetSize(50,30); 
FarmerWindow.Message_5d:SetPosition(196, FarmerWindow:GetHeight()/2 + 43); 
FarmerWindow.Message_5d:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_5d:SetFont(Turbine.UI.Lotro.Font.Verdana16);
--FarmerWindow.Message_5d:SetForeColor(Turbine.UI.Color.Lime);
FarmerWindow.Message_5d:SetText("");

if(tonumber(settings["limitSlot_6"]) > 0)then
	FarmerWindow.Message_6a=Turbine.UI.Label(); 
	FarmerWindow.Message_6a:SetParent(FarmerWindow); 
	FarmerWindow.Message_6a:SetSize(40,20); 
	FarmerWindow.Message_6a:SetPosition(246,  28); 
	FarmerWindow.Message_6a:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
	FarmerWindow.Message_6a:SetText(settings["limitSlot_6"]);
	FarmerWindow.Message_6a:SetZOrder(10);
	FarmerWindow.Message_6a:SetFont(Turbine.UI.Lotro.Font.Verdana12);
	FarmerWindow.Message_6a:SetForeColor(Turbine.UI.Color.Gold);
end

FarmerWindow.Message_6=Turbine.UI.Label(); 
FarmerWindow.Message_6:SetParent(FarmerWindow); 
FarmerWindow.Message_6:SetSize(50,30); 
FarmerWindow.Message_6:SetPosition(238, FarmerWindow:GetHeight()/2 - 17); 
FarmerWindow.Message_6:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_6:SetFont(Turbine.UI.Lotro.Font.Verdana16);
FarmerWindow.Message_6:SetText("");

FarmerWindow.Message_6b=Turbine.UI.Label(); 
FarmerWindow.Message_6b:SetParent(FarmerWindow); 
FarmerWindow.Message_6b:SetSize(50,30); 
FarmerWindow.Message_6b:SetPosition(238, FarmerWindow:GetHeight()/2 + 4); 
FarmerWindow.Message_6b:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_6b:SetFont(Turbine.UI.Lotro.Font.Verdana16);
FarmerWindow.Message_6b:SetText("");

FarmerWindow.Message_6c=Turbine.UI.Label(); 
FarmerWindow.Message_6c:SetParent(FarmerWindow); 
FarmerWindow.Message_6c:SetSize(50,30); 
FarmerWindow.Message_6c:SetPosition(238, FarmerWindow:GetHeight()/2 + 25); 
FarmerWindow.Message_6c:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_6c:SetFont(Turbine.UI.Lotro.Font.Verdana16);
FarmerWindow.Message_6c:SetText("");

FarmerWindow.Message_6d=Turbine.UI.Label(); 
FarmerWindow.Message_6d:SetParent(FarmerWindow); 
FarmerWindow.Message_6d:SetSize(50,30); 
FarmerWindow.Message_6d:SetPosition(238, FarmerWindow:GetHeight()/2 + 43); 
FarmerWindow.Message_6d:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_6d:SetFont(Turbine.UI.Lotro.Font.Verdana16);
--FarmerWindow.Message_6d:SetForeColor(Turbine.UI.Color.Lime);
FarmerWindow.Message_6d:SetText("");

if(tonumber(settings["limitSlot_7"]) > 0)then
	FarmerWindow.Message_7a=Turbine.UI.Label(); 
	FarmerWindow.Message_7a:SetParent(FarmerWindow); 
	FarmerWindow.Message_7a:SetSize(40,20); 
	FarmerWindow.Message_7a:SetPosition(288,  28); 
	FarmerWindow.Message_7a:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
	FarmerWindow.Message_7a:SetText(settings["limitSlot_7"]);
	FarmerWindow.Message_7a:SetZOrder(10);
	FarmerWindow.Message_7a:SetFont(Turbine.UI.Lotro.Font.Verdana12);
	FarmerWindow.Message_7a:SetForeColor(Turbine.UI.Color.Gold);
end

FarmerWindow.Message_7=Turbine.UI.Label(); 
FarmerWindow.Message_7:SetParent(FarmerWindow); 
FarmerWindow.Message_7:SetSize(50,30); 
FarmerWindow.Message_7:SetPosition(280, FarmerWindow:GetHeight()/2 - 17); 
FarmerWindow.Message_7:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_7:SetFont(Turbine.UI.Lotro.Font.Verdana16);
FarmerWindow.Message_7:SetText("");

FarmerWindow.Message_7b=Turbine.UI.Label(); 
FarmerWindow.Message_7b:SetParent(FarmerWindow); 
FarmerWindow.Message_7b:SetSize(50,30); 
FarmerWindow.Message_7b:SetPosition(280, FarmerWindow:GetHeight()/2 + 4); 
FarmerWindow.Message_7b:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_7b:SetFont(Turbine.UI.Lotro.Font.Verdana16);
FarmerWindow.Message_7b:SetText("");

FarmerWindow.Message_7c=Turbine.UI.Label(); 
FarmerWindow.Message_7c:SetParent(FarmerWindow); 
FarmerWindow.Message_7c:SetSize(50,30); 
FarmerWindow.Message_7c:SetPosition(280, FarmerWindow:GetHeight()/2 + 25); 
FarmerWindow.Message_7c:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_7c:SetFont(Turbine.UI.Lotro.Font.Verdana16);
FarmerWindow.Message_7c:SetText("");

FarmerWindow.Message_7d=Turbine.UI.Label(); 
FarmerWindow.Message_7d:SetParent(FarmerWindow); 
FarmerWindow.Message_7d:SetSize(50,30); 
FarmerWindow.Message_7d:SetPosition(280, FarmerWindow:GetHeight()/2 + 43); 
FarmerWindow.Message_7d:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_7d:SetFont(Turbine.UI.Lotro.Font.Verdana16);
--FarmerWindow.Message_7d:SetForeColor(Turbine.UI.Color.Lime);
FarmerWindow.Message_7d:SetText("");

if(tonumber(settings["limitSlot_8"]) > 0)then
	FarmerWindow.Message_8a=Turbine.UI.Label(); 
	FarmerWindow.Message_8a:SetParent(FarmerWindow); 
	FarmerWindow.Message_8a:SetSize(40,20); 
	FarmerWindow.Message_8a:SetPosition(330,  28); 
	FarmerWindow.Message_8a:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
	FarmerWindow.Message_8a:SetText(settings["limitSlot_8"]);
	FarmerWindow.Message_8a:SetZOrder(10);
	FarmerWindow.Message_8a:SetFont(Turbine.UI.Lotro.Font.Verdana12);
	FarmerWindow.Message_8a:SetForeColor(Turbine.UI.Color.Gold);
end

FarmerWindow.Message_8=Turbine.UI.Label(); 
FarmerWindow.Message_8:SetParent(FarmerWindow); 
FarmerWindow.Message_8:SetSize(50,30); 
FarmerWindow.Message_8:SetPosition(322, FarmerWindow:GetHeight()/2 - 17); 
FarmerWindow.Message_8:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_8:SetFont(Turbine.UI.Lotro.Font.Verdana16);
FarmerWindow.Message_8:SetText("");

FarmerWindow.Message_8b=Turbine.UI.Label(); 
FarmerWindow.Message_8b:SetParent(FarmerWindow); 
FarmerWindow.Message_8b:SetSize(50,30); 
FarmerWindow.Message_8b:SetPosition(322, FarmerWindow:GetHeight()/2 + 4); 
FarmerWindow.Message_8b:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_8b:SetFont(Turbine.UI.Lotro.Font.Verdana16);
FarmerWindow.Message_8b:SetText("");

FarmerWindow.Message_8c=Turbine.UI.Label(); 
FarmerWindow.Message_8c:SetParent(FarmerWindow); 
FarmerWindow.Message_8c:SetSize(50,30); 
FarmerWindow.Message_8c:SetPosition(322, FarmerWindow:GetHeight()/2 + 25); 
FarmerWindow.Message_8c:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_8c:SetFont(Turbine.UI.Lotro.Font.Verdana16);
FarmerWindow.Message_8c:SetText("");

FarmerWindow.Message_8d=Turbine.UI.Label(); 
FarmerWindow.Message_8d:SetParent(FarmerWindow); 
FarmerWindow.Message_8d:SetSize(50,30); 
FarmerWindow.Message_8d:SetPosition(322, FarmerWindow:GetHeight()/2 + 43); 
FarmerWindow.Message_8d:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_8d:SetFont(Turbine.UI.Lotro.Font.Verdana16);
--FarmerWindow.Message_8d:SetForeColor(Turbine.UI.Color.Lime);
FarmerWindow.Message_8d:SetText("");

if(tonumber(settings["limitSlot_9"]) > 0)then
	FarmerWindow.Message_9a=Turbine.UI.Label(); 
	FarmerWindow.Message_9a:SetParent(FarmerWindow); 
	FarmerWindow.Message_9a:SetSize(40,20); 
	FarmerWindow.Message_9a:SetPosition(372,  28); 
	FarmerWindow.Message_9a:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
	FarmerWindow.Message_9a:SetText(settings["limitSlot_9"]);
	FarmerWindow.Message_9a:SetZOrder(10);
	FarmerWindow.Message_9a:SetFont(Turbine.UI.Lotro.Font.Verdana12);
	FarmerWindow.Message_9a:SetForeColor(Turbine.UI.Color.Gold);
end

FarmerWindow.Message_9=Turbine.UI.Label(); 
FarmerWindow.Message_9:SetParent(FarmerWindow); 
FarmerWindow.Message_9:SetSize(50,30); 
FarmerWindow.Message_9:SetPosition(364, FarmerWindow:GetHeight()/2 - 17); 
FarmerWindow.Message_9:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_9:SetFont(Turbine.UI.Lotro.Font.Verdana16);
FarmerWindow.Message_9:SetText("");

FarmerWindow.Message_9b=Turbine.UI.Label(); 
FarmerWindow.Message_9b:SetParent(FarmerWindow); 
FarmerWindow.Message_9b:SetSize(50,30); 
FarmerWindow.Message_9b:SetPosition(364, FarmerWindow:GetHeight()/2 + 4); 
FarmerWindow.Message_9b:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_9b:SetFont(Turbine.UI.Lotro.Font.Verdana16);
FarmerWindow.Message_9b:SetText("");

FarmerWindow.Message_9c=Turbine.UI.Label(); 
FarmerWindow.Message_9c:SetParent(FarmerWindow); 
FarmerWindow.Message_9c:SetSize(50,30); 
FarmerWindow.Message_9c:SetPosition(364, FarmerWindow:GetHeight()/2 + 25); 
FarmerWindow.Message_9c:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_9c:SetFont(Turbine.UI.Lotro.Font.Verdana16);
FarmerWindow.Message_9c:SetText("");

FarmerWindow.Message_9d=Turbine.UI.Label(); 
FarmerWindow.Message_9d:SetParent(FarmerWindow); 
FarmerWindow.Message_9d:SetSize(50,30); 
FarmerWindow.Message_9d:SetPosition(364, FarmerWindow:GetHeight()/2 + 43); 
FarmerWindow.Message_9d:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_9d:SetFont(Turbine.UI.Lotro.Font.Verdana16);
--FarmerWindow.Message_9d:SetForeColor(Turbine.UI.Color.Lime);
FarmerWindow.Message_9d:SetText("");

if(tonumber(settings["limitSlot_10"]) > 0)then
	FarmerWindow.Message_10a=Turbine.UI.Label(); 
	FarmerWindow.Message_10a:SetParent(FarmerWindow); 
	FarmerWindow.Message_10a:SetSize(40,20); 
	FarmerWindow.Message_10a:SetPosition(414,  28); 
	FarmerWindow.Message_10a:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
	FarmerWindow.Message_10a:SetText(settings["limitSlot_10"]);
	FarmerWindow.Message_10a:SetZOrder(10);
	FarmerWindow.Message_10a:SetFont(Turbine.UI.Lotro.Font.Verdana12);
	FarmerWindow.Message_10a:SetForeColor(Turbine.UI.Color.Gold);
end

FarmerWindow.Message_10=Turbine.UI.Label(); 
FarmerWindow.Message_10:SetParent(FarmerWindow); 
FarmerWindow.Message_10:SetSize(50,30); 
FarmerWindow.Message_10:SetPosition(408, FarmerWindow:GetHeight()/2 - 17); 
FarmerWindow.Message_10:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_10:SetFont(Turbine.UI.Lotro.Font.Verdana16);
FarmerWindow.Message_10:SetText("");

FarmerWindow.Message_10b=Turbine.UI.Label(); 
FarmerWindow.Message_10b:SetParent(FarmerWindow); 
FarmerWindow.Message_10b:SetSize(50,30); 
FarmerWindow.Message_10b:SetPosition(408, FarmerWindow:GetHeight()/2 + 4); 
FarmerWindow.Message_10b:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_10b:SetFont(Turbine.UI.Lotro.Font.Verdana16);
FarmerWindow.Message_10b:SetText("");

FarmerWindow.Message_10c=Turbine.UI.Label(); 
FarmerWindow.Message_10c:SetParent(FarmerWindow); 
FarmerWindow.Message_10c:SetSize(50,30); 
FarmerWindow.Message_10c:SetPosition(408, FarmerWindow:GetHeight()/2 + 25); 
FarmerWindow.Message_10c:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_10c:SetFont(Turbine.UI.Lotro.Font.Verdana16);
FarmerWindow.Message_10c:SetText("");

FarmerWindow.Message_10d=Turbine.UI.Label(); 
FarmerWindow.Message_10d:SetParent(FarmerWindow); 
FarmerWindow.Message_10d:SetSize(50,30); 
FarmerWindow.Message_10d:SetPosition(408, FarmerWindow:GetHeight()/2 + 43); 
FarmerWindow.Message_10d:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter);
FarmerWindow.Message_10d:SetFont(Turbine.UI.Lotro.Font.Verdana16);
--FarmerWindow.Message_10d:SetForeColor(Turbine.UI.Color.Lime);
FarmerWindow.Message_10d:SetText("");
      
FarmerButton = Turbine.UI.Lotro.Button();
FarmerButton:SetParent( FarmerWindow );
FarmerButton:SetPosition(FarmerWindow:GetWidth()/2 - 75, FarmerWindow:GetHeight()/2 + 70);
FarmerButton:SetSize( 150, 20 );
FarmerButton:SetText( Strings.ClearButton );
FarmerButton:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
FarmerButton:SetVisible(true);
FarmerWindow:SetWantsKeyEvents(true);

FarmerWindow:SetPosition(settings.positionX, settings.positionY);

------------------------------------------------------------------------------------------
-- yel helper center window
------------------------------------------------------------------------------------------
centerWindow = Turbine.UI.Extensions.SimpleWindow();
centerWindow:SetSize( 40 , 120 );
centerWindow:SetParent( FarmerWindow );
centerWindow:SetPosition( 35 ,FarmerWindow:GetHeight()/2 - 54);
centerWindow:SetVisible( true );
centerWindow:SetBackColor( Turbine.UI.Color( .3, .5, .7, .5) );

centerWindow2 = Turbine.UI.Extensions.SimpleWindow();
centerWindow2:SetSize( 40 , 120 );
centerWindow2:SetParent( FarmerWindow );
centerWindow2:SetPosition( 77 ,FarmerWindow:GetHeight()/2 - 54);
centerWindow2:SetVisible( true );
centerWindow2:SetBackColor( Turbine.UI.Color( .3, .5, .7, .5) );

centerWindow3 = Turbine.UI.Extensions.SimpleWindow();
centerWindow3:SetSize( 40 , 120 );
centerWindow3:SetParent( FarmerWindow );
centerWindow3:SetPosition( 119,FarmerWindow:GetHeight()/2 - 54);
centerWindow3:SetVisible( true );
centerWindow3:SetBackColor( Turbine.UI.Color( .3, .5, .7, .5) );

centerWindow4 = Turbine.UI.Extensions.SimpleWindow();
centerWindow4:SetSize( 40 , 120 );
centerWindow4:SetParent( FarmerWindow );
centerWindow4:SetPosition( 161,FarmerWindow:GetHeight()/2 - 54);
centerWindow4:SetVisible( true );
centerWindow4:SetBackColor( Turbine.UI.Color( .3, .5, .7, .5) );

centerWindow5 = Turbine.UI.Extensions.SimpleWindow();
centerWindow5:SetSize( 40 , 120 );
centerWindow5:SetParent( FarmerWindow );
centerWindow5:SetPosition( 203,FarmerWindow:GetHeight()/2 - 54);
centerWindow5:SetVisible( true );
centerWindow5:SetBackColor( Turbine.UI.Color( .3, .5, .7, .5) );

centerWindow6 = Turbine.UI.Extensions.SimpleWindow();
centerWindow6:SetSize( 40 , 120 );
centerWindow6:SetParent( FarmerWindow );
centerWindow6:SetPosition( 245,FarmerWindow:GetHeight()/2 - 54);
centerWindow6:SetVisible( true );
centerWindow6:SetBackColor( Turbine.UI.Color( .3, .5, .7, .5) );

centerWindow7 = Turbine.UI.Extensions.SimpleWindow();
centerWindow7:SetSize( 40 , 120 );
centerWindow7:SetParent( FarmerWindow );
centerWindow7:SetPosition( 287,FarmerWindow:GetHeight()/2 - 54);
centerWindow7:SetVisible( true );
centerWindow7:SetBackColor( Turbine.UI.Color( .3, .5, .7, .5) );

centerWindow8 = Turbine.UI.Extensions.SimpleWindow();
centerWindow8:SetSize( 40 , 120 );
centerWindow8:SetParent( FarmerWindow );
centerWindow8:SetPosition( 329,FarmerWindow:GetHeight()/2 - 54);
centerWindow8:SetVisible( true );
centerWindow8:SetBackColor( Turbine.UI.Color( .3, .5, .7, .5) );

centerWindow9 = Turbine.UI.Extensions.SimpleWindow();
centerWindow9:SetSize( 40 , 120 );
centerWindow9:SetParent( FarmerWindow );
centerWindow9:SetPosition( 371,FarmerWindow:GetHeight()/2 - 54);
centerWindow9:SetVisible( true );
centerWindow9:SetBackColor( Turbine.UI.Color( .3, .5, .7, .5) );

centerWindow10 = Turbine.UI.Extensions.SimpleWindow();
centerWindow10:SetSize( 40 , 120 );
centerWindow10:SetParent( FarmerWindow );
centerWindow10:SetPosition( 413,FarmerWindow:GetHeight()/2 - 54);
centerWindow10:SetVisible( true );
centerWindow10:SetBackColor( Turbine.UI.Color( .3, .5, .7, .5) );

centerLabel = Turbine.UI.Label();
centerLabel:SetParent(centerWindow);
centerLabel:SetPosition( 0, 0 );
centerLabel:SetSize( 40, 40  );
centerLabel:SetText( "" );
centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
centerLabel:SetZOrder(-1);
centerLabel:SetMouseVisible(false);

centerLabel = Turbine.UI.Label();
centerLabel:SetParent(centerWindow2);
centerLabel:SetPosition( 0, 0 );
centerLabel:SetSize( 40, 40  );
centerLabel:SetText( "" );
centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
centerLabel:SetZOrder(-1);
centerLabel:SetMouseVisible(false);

centerLabel = Turbine.UI.Label();
centerLabel:SetParent(centerWindow3);
centerLabel:SetPosition( 0, 0 );
centerLabel:SetSize( 40, 40  );
centerLabel:SetText( "" );
centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
centerLabel:SetZOrder(-1);
centerLabel:SetMouseVisible(false);

centerLabel = Turbine.UI.Label();
centerLabel:SetParent(centerWindow4);
centerLabel:SetPosition( 0, 0 );
centerLabel:SetSize( 40, 40  );
centerLabel:SetText( "" );
centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
centerLabel:SetZOrder(-1);
centerLabel:SetMouseVisible(false);

centerLabel = Turbine.UI.Label();
centerLabel:SetParent(centerWindow5);
centerLabel:SetPosition( 0, 0 );
centerLabel:SetSize( 40, 40  );
centerLabel:SetText( "" );
centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
centerLabel:SetZOrder(-1);
centerLabel:SetMouseVisible(false);

centerLabel = Turbine.UI.Label();
centerLabel:SetParent(centerWindow6);
centerLabel:SetPosition( 0, 0 );
centerLabel:SetSize( 40, 40  );
centerLabel:SetText( "" );
centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
centerLabel:SetZOrder(-1);
centerLabel:SetMouseVisible(false);

centerLabel = Turbine.UI.Label();
centerLabel:SetParent(centerWindow7);
centerLabel:SetPosition( 0, 0 );
centerLabel:SetSize( 40, 40  );
centerLabel:SetText( "" );
centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
centerLabel:SetZOrder(-1);
centerLabel:SetMouseVisible(false);

centerLabel = Turbine.UI.Label();
centerLabel:SetParent(centerWindow8);
centerLabel:SetPosition( 0, 0 );
centerLabel:SetSize( 40, 40  );
centerLabel:SetText( "" );
centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
centerLabel:SetZOrder(-1);
centerLabel:SetMouseVisible(false);

centerLabel = Turbine.UI.Label();
centerLabel:SetParent(centerWindow9);
centerLabel:SetPosition( 0, 0 );
centerLabel:SetSize( 40, 40  );
centerLabel:SetText( "" );
centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
centerLabel:SetZOrder(-1);
centerLabel:SetMouseVisible(false);

centerLabel = Turbine.UI.Label();
centerLabel:SetParent(centerWindow10);
centerLabel:SetPosition( 0, 0 );
centerLabel:SetSize( 40, 40  );
centerLabel:SetText( "" );
centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
centerLabel:SetZOrder(-1);
centerLabel:SetMouseVisible(false);

centerQS1 = Turbine.UI.Lotro.Quickslot();
centerQS1:SetParent( centerWindow );
centerQS1:SetPosition( 1, 1 );
centerQS1:SetSize( 36, 36 );
centerQS1:SetUseOnRightClick(false);
centerQS1:SetWantsUpdates(true);

centerQS2 = Turbine.UI.Lotro.Quickslot();
centerQS2:SetParent( centerWindow2 );
centerQS2:SetPosition( 1, 1 );
centerQS2:SetSize( 36, 36 );
centerQS2:SetUseOnRightClick(false);
centerQS2:SetWantsUpdates(true);

centerQS3 = Turbine.UI.Lotro.Quickslot();
centerQS3:SetParent( centerWindow3 );
centerQS3:SetPosition( 1, 1 );
centerQS3:SetSize( 36, 36 );
centerQS3:SetUseOnRightClick(false);
centerQS3:SetWantsUpdates(true);

centerQS4 = Turbine.UI.Lotro.Quickslot();
centerQS4:SetParent( centerWindow4 );
centerQS4:SetPosition( 1, 1 );
centerQS4:SetSize( 36, 36 );
centerQS4:SetUseOnRightClick(false);
centerQS4:SetWantsUpdates(true);

centerQS5 = Turbine.UI.Lotro.Quickslot();
centerQS5:SetParent( centerWindow5 );
centerQS5:SetPosition( 1, 1 );
centerQS5:SetSize( 36, 36 );
centerQS5:SetUseOnRightClick(false);
centerQS5:SetWantsUpdates(true);

centerQS6 = Turbine.UI.Lotro.Quickslot();
centerQS6:SetParent( centerWindow6 );
centerQS6:SetPosition( 1, 1 );
centerQS6:SetSize( 36, 36 );
centerQS6:SetUseOnRightClick(false);
centerQS6:SetWantsUpdates(true);

centerQS7 = Turbine.UI.Lotro.Quickslot();
centerQS7:SetParent( centerWindow7 );
centerQS7:SetPosition( 1, 1 );
centerQS7:SetSize( 36, 36 );
centerQS7:SetUseOnRightClick(false);
centerQS7:SetWantsUpdates(true);

centerQS8 = Turbine.UI.Lotro.Quickslot();
centerQS8:SetParent( centerWindow8 );
centerQS8:SetPosition( 1, 1 );
centerQS8:SetSize( 36, 36 );
centerQS8:SetUseOnRightClick(false);
centerQS8:SetWantsUpdates(true);

centerQS9 = Turbine.UI.Lotro.Quickslot();
centerQS9:SetParent( centerWindow9 );
centerQS9:SetPosition( 1, 1 );
centerQS9:SetSize( 36, 36 );
centerQS9:SetUseOnRightClick(false);
centerQS9:SetWantsUpdates(true);

centerQS10 = Turbine.UI.Lotro.Quickslot();
centerQS10:SetParent( centerWindow10 );
centerQS10:SetPosition( 1, 1 );
centerQS10:SetSize( 36, 36 );
centerQS10:SetUseOnRightClick(false);
centerQS10:SetWantsUpdates(true);


------------------------------------------------------------------------------------------
-- define the boutton
------------------------------------------------------------------------------------------

BagButton = Turbine.UI.Lotro.SimpleWindow();
BagButton:SetParent( FarmerWindow );
BagButton:SetPosition(10, FarmerWindow:GetHeight()/2 - 12);
BagButton:SetSize( 20, 20 );
BagButton:SetZOrder(1);
BagButton:SetVisible(true);

centerLabelB = Turbine.UI.Label();
centerLabelB:SetParent(BagButton);
centerLabelB:SetPosition( 0, 0 );
centerLabelB:SetSize( 20, 20  );
centerLabelB:SetText( "" );
centerLabelB:SetBackground(ResourcePath .. "/bag.tga");
centerLabelB:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
centerLabelB:SetZOrder(-1);
centerLabelB:SetMouseVisible(true);

BagButton2 = Turbine.UI.Lotro.SimpleWindow();
BagButton2:SetParent( FarmerWindow );
BagButton2:SetPosition(10, FarmerWindow:GetHeight()/2 + 10);
BagButton2:SetSize( 20, 20 );
BagButton2:SetZOrder(1);
BagButton2:SetVisible(true);

centerLabelB2 = Turbine.UI.Label();
centerLabelB2:SetParent(BagButton2);
centerLabelB2:SetPosition( 0, 0 );
centerLabelB2:SetSize( 20, 20  );
centerLabelB2:SetText( "" );
centerLabelB2:SetBackground(ResourcePath .. "/sharedStorage.tga");
centerLabelB2:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
centerLabelB2:SetZOrder(-1);
centerLabelB2:SetMouseVisible(true);

BagButton3 = Turbine.UI.Lotro.SimpleWindow();
BagButton3:SetParent( FarmerWindow );
BagButton3:SetPosition(10, FarmerWindow:GetHeight()/2 + 30);
BagButton3:SetSize( 20, 20 );
BagButton3:SetZOrder(1);
BagButton3:SetVisible(true);

centerLabelB3 = Turbine.UI.Label();
centerLabelB3:SetParent(BagButton3);
centerLabelB3:SetPosition( 0, 0 );
centerLabelB3:SetSize( 20, 20  );
centerLabelB3:SetText( "" );
centerLabelB3:SetBackground(ResourcePath .. "/vault.tga");
centerLabelB3:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
centerLabelB3:SetZOrder(-1);
centerLabelB3:SetMouseVisible(true);

------------------------------------------------------------------------------------------
-- define the label for the button
------------------------------------------------------------------------------------------

BagButtonLabel = Turbine.UI.Lotro.SimpleWindow();
BagButtonLabel:SetParent( FarmerWindow );
BagButtonLabel:SetPosition(40, FarmerWindow:GetHeight()/2 - 20);
BagButtonLabel:SetSize( 180, 30 );
BagButtonLabel:SetZOrder(0);
BagButtonLabel:SetVisible(false);
BagButtonLabel:SetBackground(ResourcePath .. "/Cadre_180_30.tga");

centerLabelBLabel = Turbine.UI.Label();
centerLabelBLabel:SetParent(BagButtonLabel);
centerLabelBLabel:SetPosition( 2, 2 );
centerLabelBLabel:SetSize( 176, 26  );
centerLabelBLabel:SetText( Strings.PluginBag );
centerLabelBLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
centerLabelBLabel:SetBackColor( Turbine.UI.Color( .8, .1, .4, .9) );
centerLabelBLabel:SetZOrder(-1);

BagButtonLabel2 = Turbine.UI.Lotro.SimpleWindow();
BagButtonLabel2:SetParent( FarmerWindow );
BagButtonLabel2:SetPosition(40, FarmerWindow:GetHeight()/2);
BagButtonLabel2:SetSize( 180, 30 );
BagButtonLabel2:SetZOrder(0);
BagButtonLabel2:SetVisible(false);
BagButtonLabel2:SetBackground(ResourcePath .. "/Cadre_180_30.tga");

centerLabelBLabel2 = Turbine.UI.Label();
centerLabelBLabel2:SetParent(BagButtonLabel2);
centerLabelBLabel2:SetPosition( 2, 2 );
centerLabelBLabel2:SetSize( 176, 26  );
centerLabelBLabel2:SetText( Strings.PluginSharedStorage );
centerLabelBLabel2:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
centerLabelBLabel2:SetBackColor( Turbine.UI.Color( .8, .1, .4, .9) );
centerLabelBLabel2:SetZOrder(-1);

BagButtonLabel3 = Turbine.UI.Lotro.SimpleWindow();
BagButtonLabel3:SetParent( FarmerWindow );
BagButtonLabel3:SetPosition(40, FarmerWindow:GetHeight()/2 + 20);
BagButtonLabel3:SetSize( 180, 30 );
BagButtonLabel3:SetZOrder(0);
BagButtonLabel3:SetVisible(false);
BagButtonLabel3:SetBackground(ResourcePath .. "/Cadre_180_30.tga");

centerLabelBLabel3 = Turbine.UI.Label();
centerLabelBLabel3:SetParent(BagButtonLabel3);
centerLabelBLabel3:SetPosition( 2, 2 );
centerLabelBLabel3:SetSize( 176, 26  );
centerLabelBLabel3:SetText( Strings.PluginVault );
centerLabelBLabel3:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
centerLabelBLabel3:SetBackColor( Turbine.UI.Color( .6, .1, .4, .9) );
centerLabelBLabel3:SetZOrder(-1);

ClosingTheWindow();
SetTheDragAndDrop();
SetMouseCLick();
DeleteOnMouseWheel();
SetTheMouseEnter();
SetTheShortCut();
UpdateWindow();
end

function ClosingTheWindow()
	function FarmerWindow:Closing(sender, args)
		settings.isWindowVisible = false;
		SaveSettings();
	end
end