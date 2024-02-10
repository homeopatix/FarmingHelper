ResourcePath = "Homeopatix/Farmer/Resources/";

Images = {
	MinimizedIcon = ResourcePath .. "Farmer.tga",
};

function CreateLocalizationInfo()

	Strings = {};
	if Turbine.Engine.GetLanguage() == Turbine.Language.German then
		Strings.PluginName = "Farming Helper";
		Strings.PluginEscEnable = "Escape-Taste aktiviert";
		Strings.PluginEscDesable = "Escape-Taste deaktiviert";
		Strings.PluginAltEnable = "Alt-Taste aktiviert";
		Strings.PluginAltDesable = "Alt-Taste deaktiviert";
		Strings.PluginBag = "Dein Rucksack";
		Strings.PluginSharedStorage = "Ihr gemeinsamer Raum";
		Strings.PluginVault = "Dein Kofferraum";
		Strings.PluginPrevention = "Sie m\195\188ssen zuerst\n\nIhr Safe\nund\nIhr gemeinsam genutzter Speicher\n\n\195\182ffnen, um die Suche an diesen Speicherorten zu erm\195\182glichen";
		Strings.PreventionButton = "OK" ;
		Strings.PreventionButtonOK = "Warne mich nicht noch einmal" ;
		Strings.PluginHelp = " *** Farmer Help ***\n\n" ..
		"/Fa show - Zeigen Sie das Fenster an\n" ..
		"/Fa hide - Verstecke das Fenster\n" ..
		"/Fa alt - Aktivieren oder deaktivieren Sie die alt-Taste um das Symbol zu verschieben.\n" ..
		"/Fa esc - aktiviert oder deaktiviert das Fenster, das mit der Escape-Taste geschlossen wird\n" ..
		"/Fa toggle - Fenster ein-oder ausblenden\n" ..
		"/Fa options - Zeigen Sie das Optionsfenster an\n\n" ..
		"Sie k\195\182nnen die Elemente, die Sie bewirtschaften, per Drag & Drop in die Zeile ziehen und l\195\182schen Sie sie mit dem Mausrad\nSie m\195\188ssen zuerstIhr Safe und Ihr gemeinsam genutzter Speicher\195\182ffnen, um die Suche an diesen Speicherorten zu erm\195\182glichen";
		Strings.ClearButton = "Steckpl\195\164tze l\195\182schen";
		Strings.ErrorDrag = "Sie m\195\188ssen ein Objekt aus Ihrem Rucksack ziehen";
		Strings.PluginOption1 = "Aktualisieren Sie den Rucksack";
		Strings.PluginOption2 = "Aktualisieren Sie den gemeinsam genutzten Speicher";
		Strings.PluginOption3 = "Aktualisieren Sie den Tresor"
		Strings.PluginOption10 = "\195\132nderungen validieren";
		Strings.PluginOption4 = "Limit f\195\188r Slot ";
		Strings.PluginOption5 = "Definieren Sie am ";
		Strings.PluginText = "Von Homeopatix";
		Strings.PluginOptionsText = "Farming Helper Options";
		Strings.PluginOptionShowWindow = "Zeigen Sie das Optionsfenster an";
		Strings.PluginWindowClear = "L\195\182schen Sie alle Verkn\195\188pfungen.";
		Strings.PluginWindowShow = "Schaufenster.";
		Strings.PluginWindowHide = "Verstecke das Fenster.";
		Strings.PluginReset = "Zur\195\188cksetzen";

elseif Turbine.Engine.GetLanguage() == Turbine.Language.French then
		Strings.PluginName = "Farming Helper";
		Strings.PluginEscEnable = "Touche Escape activ\195\169";
		Strings.PluginEscDesable = "Touche Escape desactiv\195\169";
		Strings.PluginAltEnable = "Touche Alt activ\195\169";
		Strings.PluginAltDesable = "Touche Alt desactiv\195\169";
		Strings.PluginBag = "Votre sac \195\160 dos";
		Strings.PluginSharedStorage = "Votre espace partag\195\169";
		Strings.PluginVault = "Votre Coffre";
		Strings.PluginPrevention = "Vous devez ouvrir\n\nvotre coffre \net \nvotre stocakge partag\195\169 \n\npour activer la recherche dans ces emplacements";
		Strings.PreventionButton = "OK" ;
		Strings.PreventionButtonOK = "Ne plus me pr\195\169venir" ;
		Strings.PluginHelp = " *** Farmer Aide ***\n\n" ..
		"/Fa show - affiche la fenetre\n" ..
		"/Fa hide - cache la fenetre\n" ..
		"/Fa alt - Active ou d\195\169sactive la touche alt pour le d\195\169placement de l'icon.\n" ..
		"/Fa esc - active ou d\195\169sactive la fermeture de fenetre avec la touche escape\n" ..
		"/Fa toggle - affiche ou cache la fenetre.\n" ..
		"/Fa options - Affiche la fenetre d'options\n\n" ..
		"Vous pouvez faire glisser et d\195\169poser les objects que vous farm\195\169 sur la ligne et les effacer avec la molette de la souris\nVous devez ouvrir votre coffre et votre stocakge partag\195\169 pour activer la recherche dans ces emplacements";
		Strings.ClearButton = "Vider les slots";
		Strings.ErrorDrag = "Vous devez faire glisser un objet depuis votre sac \195\160 dos";
		Strings.PluginOption1 = "Mise \195\160 jour du sac \195\160 dos";
		Strings.PluginOption2 = "Mise \195\160 jour du stockage partag\195\168";
		Strings.PluginOption3 = "Mise \195\160 jour du coffre";
		Strings.PluginOption4 = "Limite du slot ";
		Strings.PluginOption5 = "Definie sur ";
		Strings.PluginOption10 = "Valider les changements";
		Strings.PluginText = "Par Homeopatix";
		Strings.PluginOptionsText = "Farming Helper Options";
		Strings.PluginOptionShowWindow = "Affiche la fen\195\168tre d'options";
		Strings.PluginWindowClear = "Efface tous les raccourcis.";
		Strings.PluginWindowShow = "Affiche la fen\195\168tre.";
		Strings.PluginWindowHide = "Cache la fen\195\168tre.";
		Strings.PluginReset = "R\195\168initialiser";

elseif Turbine.Engine.GetLanguage() == Turbine.Language.English then
		Strings.PluginName = "Farming Helper";
		Strings.PluginEscEnable = "Escape key Activated";
		Strings.PluginEscDesable = "Escape key Desactivated";
		Strings.PluginAltEnable = "Alt key Activated";
		Strings.PluginAltDesable = "Alt key Desactivated";
		Strings.PluginBag = "Your PackPack";
		Strings.PluginSharedStorage = "Your SharedStorage";
		Strings.PluginVault = "Your Vault";
		Strings.PluginPrevention = "You must first open\n\nyour safe\nand\nyour shared storage\n\nto enable searching in these locations";
		Strings.PreventionButton = "OK" ;
		Strings.PreventionButtonOK = "Do not warn me again" ;
		Strings.PluginHelp = " *** Farmer Help ***\n\n" ..
		"/Fa show - display the window\n" ..
		"/Fa hide - hide the window\n" ..
		"/Fa alt - Activate or deactivate the alt key to move the icon.\n" ..
		"/Fa esc - activates or deactivates window closing with the escape key\n" ..
		"/Fa toggle - display or hide the window.\n" ..
		"/Fa options - Display the option window\n\n" ..
		"You can drag and drop the items your are farmig on the line and delete them with the mouse wheel\nYou must first open your safe and your shared storage to enable searching in these locations";
		Strings.ClearButton = "Clear the slots";
		Strings.ErrorDrag = "You must drag an object from your backpack";
		Strings.PluginOption1 = "Update the backpack";
		Strings.PluginOption2 = "Update shared storage";
		Strings.PluginOption3 = "Update the vault";
		Strings.PluginOption4 = "Limit for slot ";
		Strings.PluginOption5 = "Define on ";
		Strings.PluginOption10 = "Validate Changes";
		Strings.PluginText = "By Homeopatix";
		Strings.PluginOptionsText = "Farming Helper Options";
		Strings.PluginOptionShowWindow = "Display the options Window";
		Strings.PluginWindowClear = "Delete all shortcuts.";
		Strings.PluginWindowShow = "Show the window.";
		Strings.PluginWindowHide = "Hide the window.";
		Strings.PluginReset = "Reset";
	end
end
