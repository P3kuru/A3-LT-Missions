/*

File: customGear.sqf
Author: Brainless_Ben

Description:
Reset player weapons set from mission parameters

*/

//=====================================================================================

// Define clothing that will be used
switch (side (_this select 0)) do 
{
	case west:
	{
		// Bluefor Gear
			// Default gear
		_unif = ["NAF_U_GVTV_nfpt"];
		_vest = ["V_PlateCarrier2_oli"];
		_helm = ["Aegis_H_Helmet_FASTMT_Headset_tan_F"];
			// Optioneel medic gear
		_unifMedic = [""];
		_vestMedic = [""];
		_helmMedic = [""];
			// NVG and goggles(faceware)
		_nvgs = ["ACE_NVG_Wide_Black_WP"];
		_goggles = ["rhs_googles_yellow","rhs_googles_clear","rhs_googles_orange"];
			// Vehicle crew gear
		_unifCrew = ["NAF_U_GVTV_nfpt"];
		_vestCrew = ["JCA_MCRP_V_CarrierRigKBT_01_crew_khaki_F"];
		_helmCrew = ["H_HelmetCrew_I"];
			// Heli gear
		_unifHeliP = ["NAF_U_HeliCoveralls_Support"];
		_unifHeliC = ["NAF_U_GVT_nfpg","NAF_U_GVTV_nfpg","NAF_U_GVTT_nfpg"];
		_vestHeli = ["JCA_MCRP_V_CarrierRigKBT_01_crew_khaki_F"];
		_helmHeli = ["H_PilotHelmetHeli_O_visor_up","H_PilotHelmetHeli_I_E_visor_up"];
			// Jet gear
		_unifJet = ["NAF_U_PilotCoveralls_Support"];
		_helmJet = ["H_PilotHelmetFighter_O"];
			// Backpacks
		_backpackSmall = ["NAF_TacticalPack_nfpm","NAF_Kitbag_nfpm","NAF_OperatorBag_nfpm"];
		_backpackLarge = ["NAF_Carryall_nfpm","NAF_Bergen_nfpm"];
		_backpackMedic = ["NAF_TacticalPack_nfpm","NAF_Kitbag_nfpm","NAF_OperatorBag_nfpm"];
		_backpackRadio = ["NAF_TacticalPack_nfpm","NAF_Kitbag_nfpm","NAF_OperatorBag_nfpm"];
	};
	case east:
	{
		// Opfor Gear
			// Default gear
		_unif = [""];
		_vest = [""];
		_helm = [""];
			// Optioneel medic gear
		_unifMedic = [""];
		_vestMedic = [""];
		_helmMedic = [""];
			// NVG and goggles(faceware)
		_nvgs = [""];
		_goggles = [""];
			// Vehicle crew gear
		_unifCrew = [""];
		_vestCrew = [""];
		_helmCrew = [""];
			// Heli gear
		_unifHeliP = [""];
		_unifHeliC = [""];
		_vestHeli = [""];
		_helmHeli = [""];
			// Jet gear
		_unifJet = [""];
		_helmJet = [""];
			// Backpacks
		_backpackSmall = [""];
		_backpackLarge = [""];
		_backpackMedic = [""];
		_backpackRadio = [""];
	};
	case resistance:
	{
		// Independent Gear
			// Default gear
		_unif = [""];
		_vest = [""];
		_helm = [""];
			// Optioneel medic gear
		_unifMedic = [""];
		_vestMedic = [""];
		_helmMedic = [""];
			// NVG and goggles(faceware)
		_nvgs = [""];
		_goggles = [""];
			// Vehicle crew gear
		_unifCrew = [""];
		_vestCrew = [""];
		_helmCrew = [""];
			// Heli gear
		_unifHeliP = [""];
		_unifHeliC = [""];
		_vestHeli = [""];
		_helmHeli = [""];
			// Jet gear
		_unifJet = [""];
		_helmJet = [""];
			// Backpacks
		_backpackSmall = [""];
		_backpackLarge = [""];
		_backpackMedic = [""];
		_backpackRadio = [""];
	};
};

//=====================================================================================
