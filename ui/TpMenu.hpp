class TpMenu
{
	idd = 9000;
	// onLoad = "";
	// onUnload = "";
	// duration = 10e+9;
	// fadein = 0;
	// fadeout = 0;
	
	class ControlsBackground
	{
		class MenuBackground: RscText
		{
			idc = -1;
			x = 0.355625 * safezoneW + safezoneX;
			y = 0.357 * safezoneH + safezoneY;
			w = 0.28875 * safezoneW;
			h = 0.308 * safezoneH;
			colorBackground[] = {0,0,0,0.25};
		};
		class Header: RscText
		{
			idc = -1;
			text = "Transport to Action";
			x = 0.355625 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.28875 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
			font = "PuristaLight";
			color = "#E5E5E5";
			align = "left";
			shadow = "false";
			sizeEx = GUI_TEXT_SIZE_SMALL;
		};
		class GroupTPCheckText: RscText
		{
			idc = 9007;
			text = "Group TP";
			x = 0.587656 * safezoneW + safezoneX;
			y = 0.456 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.022 * safezoneH;
			font = "PuristaLight";
			color = "#E5E5E5";
			align = "left";
			shadow = "false";
			sizeEx = GUI_TEXT_SIZE_SMALL;

		};
		class LeaderTPCheckText: RscText
		{
			idc = 9009;
			text = "Leader TP";
			x = 0.587656 * safezoneW + safezoneX;
			y = 0.489 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.022 * safezoneH;
			font = "PuristaLight";
			color = "#E5E5E5";
			align = "left";
			shadow = "false";
			sizeEx = GUI_TEXT_SIZE_SMALL;
		};
		class AdminFrame: RscFrame
		{
			idc = -1;
			text = "Admin Controls";
			x = 0.567031 * safezoneW + safezoneX;
			y = 0.368 * safezoneH + safezoneY;
			w = 0.0721875 * safezoneW;
			h = 0.154 * safezoneH;
		};
	};

	class Controls{
		class TeleportList: RscListbox
		{
			idc = 9001;
			x = 0.365937 * safezoneW + safezoneX;
			y = 0.379 * safezoneH + safezoneY;
			w = 0.118594 * safezoneW;
			h = 0.264 * safezoneH;
		};	
		class TeleportButton: RscButtonMenu
		{
			idc = 9002;
			text = "Teleport";
			x = 0.5825 * safezoneW + safezoneX;
			y = 0.621 * safezoneH + safezoneY;
			w = 0.0515625 * safezoneW;
			h = 0.022 * safezoneH;
			tooltip = "Teleports to selected location.";
			onButtonClick = "[] spawn LIQ_fnc_Teleport";
		};
		class AddTpButton: RscButtonMenu
		{
			idc = 9003;
			text = "Add";
			x = 0.587656 * safezoneW + safezoneX;
			y = 0.39 * safezoneH + safezoneY;
			w = 0.0464063 * safezoneW;
			h = 0.022 * safezoneH;
			tooltip = "Adds a teleport location on your current location.";
			onButtonClick = "call LIQ_fnc_addTP";
		};
		class DeleteButton: RscButtonMenu
		{
			idc = 9004;
			text = "Delete";
			x = 0.587656 * safezoneW + safezoneX;
			y = 0.423 * safezoneH + safezoneY;
			w = 0.0464063 * safezoneW;
			h = 0.022 * safezoneH;
			tooltip = "Deletes the selected location.";
			onButtonClick = "call LIQ_fnc_tpDelete";
		};
		class RefreshButton: RscButtonMenu
		{
			idc = 9005;
			text = "Refresh";
			x = 0.530937 * safezoneW + safezoneX;
			y = 0.621 * safezoneH + safezoneY;
			w = 0.0464063 * safezoneW;
			h = 0.022 * safezoneH;
			tooltip = "Refresh the list.";
			onButtonClick = "call LIQ_fnc_refreshList";
		};
		class GroupTPCheck: RscCheckbox
		{
			idc = 9006;
			x = 0.572187 * safezoneW + safezoneX;
			y = 0.456 * safezoneH + safezoneY;
			w = 0.0103125 * safezoneW;
			h = 0.022 * safezoneH;
			tooltip = "Enables teleportation to group leader.";
		};
		class LeaderTPCheck: RscCheckbox
		{
			idc = 9008;
			x = 0.572187 * safezoneW + safezoneX;
			y = 0.489 * safezoneH + safezoneY;
			w = 0.0103125 * safezoneW;
			h = 0.022 * safezoneH;
			tooltip = "Group leaders can teleport to any group member.";
		};
		class CancelButton: RscButtonMenuCancel
		{
			x = 0.603125 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class MapButton: RscButton
		{
			idc = 9010;
			text = ">";
			x = 0.644375 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.0103125 * safezoneW;
			h = 0.33 * safezoneH;
			onButtonClick = "call LIQ_fnc_exminMap";
			tooltip = "Show map.";
		};
		class Map: RscMapControl
		{
			idc = 9011;
			x = 0.644375 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.0103125 * safezoneW;
			h = 0.33 * safezoneH;
		};
	};
};