class VoteUI
{
	idd = 9030;
	// onLoad = "";
	// onUnload = "";
	// duration = 10e+9;
	// fadein = 0;
	// fadeout = 0;
	
	class ControlsBackground
	{
		class Background: RscText
		{
			idc = -1;
			text = "Vote to end mission?";
			x = 0.448438 * safezoneW + safezoneX;
			y = 0.456 * safezoneH + safezoneY;
			w = 0.103125 * safezoneW;
			h = 0.044 * safezoneH;
			colorBackground[] = {0,0,0,0.25};
			font = "PuristaLight";
			color = "#E5E5E5";
			align = "center";
			shadow = "false";
		};
	};

	class Controls{
		class YesButton: RscButtonMenu
		{
			idc = 9031;
			text = "Yes";
			x = 0.448438 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.0257812 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "[true] call LIQ_fnc_initVote; closeDialog 1";
		};
		class NoButton: RscButtonMenu
		{
			idc = 9032;
			text = "No";
			x = 0.525781 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.0257812 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "[false] call LIQ_fnc_initVote; closeDialog 1";
		};
	};
};