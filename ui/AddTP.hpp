class addTP
{
	idd = 9020;

	class ControlsBackground
	{
		class Background: RscText
		{
			idc = -1;
			x = 0.335 * safezoneW + safezoneX;
			y = 0.412 * safezoneH + safezoneY;
			w = 0.335156 * safezoneW;
			h = 0.11 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.5};
		};
		class NameHeader: RscText
		{
			idc = -1;
			text = "Name: ";
			x = 0.340156 * safezoneW + safezoneX;
			y = 0.423 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.5};
		};
		class LocationHeader: RscText
		{
			idc = -1;
			text = "Location: ";
			x = 0.340156 * safezoneW + safezoneX;
			y = 0.456 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.5};
		};
	};
	class Controls
	{
		class NameEdit: RscEdit
		{
			idc = 9021;
			text = "Standard";
			x = 0.386562 * safezoneW + safezoneX;
			y = 0.423 * safezoneH + safezoneY;
			w = 0.278437 * safezoneW;
			h = 0.022 * safezoneH;
		};
		
		class LocationEdit: RscEdit
		{
			idc = 9022;
			text = "Standard Location";
			x = 0.386562 * safezoneW + safezoneX;
			y = 0.456 * safezoneH + safezoneY;
			w = 0.278437 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class OKButton: RscButtonMenuOK
		{
			x = 0.628906 * safezoneW + safezoneX;
			y = 0.489 * safezoneH + safezoneY;
			w = 0.0360937 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "call LIQ_fnc_tpPush";
		};
		class CancelButton: RscButtonMenuCancel
		{
			x = 0.5825 * safezoneW + safezoneX;
			y = 0.489 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.022 * safezoneH;
		};
	};	
}
