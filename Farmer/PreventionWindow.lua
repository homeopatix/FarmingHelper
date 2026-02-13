function ShowPrevention()
	------------------------------------------------------------------------------------------
	-- define the prevention window
	------------------------------------------------------------------------------------------

	BagButtonLabel8 = Turbine.UI.Lotro.SimpleWindow();
	BagButtonLabel8:SetParent( FarmerWindow );
	BagButtonLabel8:SetPosition(FarmerWindow:GetWidth()/2 - 220, FarmerWindow:GetHeight()/2 - 67);
	BagButtonLabel8:SetSize( 440, 155 );
	BagButtonLabel8:SetZOrder(1);
	BagButtonLabel8:SetVisible(true);
	BagButtonLabel8:SetBackColor( Turbine.UI.Color( .8, .1, .4, .9) );

	centerLabelBLabel8 = Turbine.UI.Label();
	centerLabelBLabel8:SetParent(BagButtonLabel8);
	centerLabelBLabel8:SetPosition( 0, -30 );
	centerLabelBLabel8:SetSize( 440, 175  );
	centerLabelBLabel8:SetText( Strings.PluginPrevention );
	centerLabelBLabel8:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	centerLabelBLabel8:SetZOrder(-1);

	FarmerButton2 = Turbine.UI.Lotro.Button();
	FarmerButton2:SetParent( BagButtonLabel8 );
	FarmerButton2:SetPosition(FarmerWindow:GetWidth()/2 - 90, FarmerWindow:GetHeight()/2 + 15);
	FarmerButton2:SetSize( 150, 20 );
	FarmerButton2:SetText( Strings.PreventionButton );
	FarmerButton2:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	FarmerButton2:SetVisible(true);

	FarmerButton23 = Turbine.UI.Lotro.Button();
	FarmerButton23:SetParent( BagButtonLabel8 );
	FarmerButton23:SetPosition(FarmerWindow:GetWidth()/2 - 120, FarmerWindow:GetHeight()/2 + 37);
	FarmerButton23:SetSize( 220, 20 );
	FarmerButton23:SetText( Strings.PreventionButtonOK );
	FarmerButton23:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	FarmerButton23:SetVisible(true);

	function FarmerButton2:MouseClick()
		BagButtonLabel8:SetVisible(false);
	end

	function FarmerButton23:MouseClick()
		settings.wantPrevention = false;
		BagButtonLabel8:SetVisible(false);
		SaveSettings();
	end
end