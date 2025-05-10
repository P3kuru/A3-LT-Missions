/*

File: customWeapon.sqf
Author: Brainless_Ben

Description:
Reset player weapons set from mission parameters

*/

//=====================================================================================

// Define type of weapons to use
switch (side (_this select 0)) do 
{
	case west:
	{
		// Bluefor Weapons
			// Default Weapon(GL) and ammo(tracer)
		_rifle = ["JCA_arifle_M4A4_AFG_sand_F"];
		_rifleGL = ["JCA_arifle_M4A4_GL_sand_F"];
		_rifle_Mags	= "JCA_30Rnd_556x45_Tracer_IR_sand_PMAG";
		_rifle_Mags_Tr = "JCA_30Rnd_556x45_Tracer_IR_sand_PMAG";
			// Crew weapon and ammo(tracer)
		_rifleCrew = ["JCA_arifle_M4A4_VFG_black_F"];
		_rifleCrew_Mags = _rifle_Mags;
		_rifleCrew_Mags_Tr = _rifle_Mags_Tr;
			// Default attachments (IR/Flashlight/Barrle/Bipod/Scope)
		_rifleAttRailIR = ["JCA_acc_DualMount_black_Pointer"];
		_rifleAttRailFL = ["JCA_acc_DualMount_black_Pointer"];
		_rifleAttMuzzle = ["JCA_muzzle_snds_556_advanced_black"];
		_rifleAttBipod = [""];
		_rifleAttScope = ["JCA_optic_AICO_sand"];
			// Grenadier ammo(HE/SmokeWhite/SmokeGreen/SmokeRed) normal and IR variant
		_itemsGL = ["1Rnd_HE_Grenade_shell","1Rnd_Smoke_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeRed_Grenade_shell"];
		_itemsGLNVG = ["1Rnd_HE_Grenade_shell","UGL_FlareWhite_F","UGL_FlareGreen_F","UGL_FlareRed_F"];
		_itemsGLAmt	= [8,6,4,4];
			// DMR [Designated marksmen rifle (NO SNIPER)] weapon ammo and attachtments
		_rifleMark = ["JCA_arifle_SR10_AFG_sand_F"];
		_rifleMark_Mags = "JCA_20Rnd_762x51_Sand_PMAG";
		_rifleMarkAttRailIR = ["JCA_acc_DualMount_black_Pointer"];
		_rifleMarkAttRailFL = ["JCA_acc_DualMount_black_Pointer"];
		_rifleMarkAttMuzzle = ["JCA_muzzle_snds_762_tactical_black"];
		_rifleMarkAttBipod = ["JCA_bipod_04_sand"];
		_rifleMarkAttScope = ["JCA_optic_MRPS_sand"];
			// Launcher and ammo variants(optional)
		_launcher = ["rhs_weap_M136"];
		_launcher_Mags = [];
			// Binocular
		_binocular = [""];
	};
	case east:
	{
		// Opfor Weapons
			// Default Weapon(GL) and ammo(tracer)
		_rifle = [""];
		_rifleGL = [""];
		_rifle_Mags	= "";
		_rifle_Mags_Tr = "";
			// Crew weapon and ammo(tracer)
		_rifleCrew = [""];
		_rifleCrew_Mags = "";
		_rifleCrew_Mags_Tr = "";
			// Default attachments (IR/Flashlight/Barrle/Bipod/Scope)
		_rifleAttRailIR = [""];
		_rifleAttRailFL = [""];
		_rifleAttMuzzle = [""];
		_rifleAttBipod = [""];
		_rifleAttScope = [""];
			// Grenadier ammo(HE/SmokeWhite/SmokeGreen/SmokeRed) normal and IR variant
		_itemsGL = ["","","",""];
		_itemsGLNVG = ["","","",""];
		_itemsGLAmt	= [8,6,4,4];
			// DMR [Designated marksmen rifle (NO SNIPER)] weapon ammo and attachtments
		_rifleMark = [""];
		_rifleMark_Mags = "";
		_rifleMarkAttRailIR = [""];
		_rifleMarkAttRailFL = [""];
		_rifleMarkAttMuzzle = [""];
		_rifleMarkAttBipod = [""];
		_rifleMarkAttScope = [""];
			// Pilot/Heli weapon ammo and attachtments
		_rifleAir = [""];
		_rifleAir_Mags = "";
		_rifleAirAttRailIR = [""];
		_rifleAirAttRailFL = [""];
		_rifleAirAttMuzzle = [""];
		_rifleAirAttBipod = [""];
		_rifleAirAttScope = [""];
			// Autorifleman weapon ammo and attachtments
		_rifleAR = [""];
		_rifleAR_Mags = "";
		_rifleARAttRailIR = [""];
		_rifleARAttRailFL = [""];
		_rifleARAttMuzzle = [""];
		_rifleARAttBipod = [""];
		_rifleARAttScope = [""];
			// Sidearm weapon ammo and attachtments
		_handGun = [""];
		_handGun_Mags = "";
		_handGunAttRailIR = [""];
		_handGunAttRailFL = [""];
		_handGunAttMuzzle = [""];
		_handGunAttBipod = [""];
		_handGunAttScope = [""];
			// Launcher and ammo variants(optional)
		_launcher = [""];
		_launcher_Mags = [];
			// Binocular
		_binocular = [""];
	};
	case resistance:
	{
		// Independent Weapons
			// Default Weapon(GL) and ammo(tracer)
		_rifle = [""];
		_rifleGL = [""];
		_rifle_Mags	= "";
		_rifle_Mags_Tr = "";
			// Crew weapon and ammo(tracer)
		_rifleCrew = [""];
		_rifleCrew_Mags = "";
		_rifleCrew_Mags_Tr = "";
			// Default attachments (IR/Flashlight/Barrle/Bipod/Scope)
		_rifleAttRailIR = [""];
		_rifleAttRailFL = [""];
		_rifleAttMuzzle = [""];
		_rifleAttBipod = [""];
		_rifleAttScope = [""];
			// Grenadier ammo(HE/SmokeWhite/SmokeGreen/SmokeRed) normal and IR variant
		_itemsGL = ["","","",""];
		_itemsGLNVG = ["","","",""];
		_itemsGLAmt	= [8,6,4,4];
			// DMR [Designated marksmen rifle (NO SNIPER)] weapon ammo and attachtments
		_rifleMark = [""];
		_rifleMark_Mags = "";
		_rifleMarkAttRailIR = [""];
		_rifleMarkAttRailFL = [""];
		_rifleMarkAttMuzzle = [""];
		_rifleMarkAttBipod = [""];
		_rifleMarkAttScope = [""];
			// Pilot/Heli weapon ammo and attachtments
		_rifleAir = [""];
		_rifleAir_Mags = "";
		_rifleAirAttRailIR = [""];
		_rifleAirAttRailFL = [""];
		_rifleAirAttMuzzle = [""];
		_rifleAirAttBipod = [""];
		_rifleAirAttScope = [""];
			// Autorifleman weapon ammo and attachtments
		_rifleAR = [""];
		_rifleAR_Mags = "";
		_rifleARAttRailIR = [""];
		_rifleARAttRailFL = [""];
		_rifleARAttMuzzle = [""];
		_rifleARAttBipod = [""];
		_rifleARAttScope = [""];
			// Sidearm weapon ammo and attachtments
		_handGun = [""];
		_handGun_Mags = "";
		_handGunAttRailIR = [""];
		_handGunAttRailFL = [""];
		_handGunAttMuzzle = [""];
		_handGunAttBipod = [""];
		_handGunAttScope = [""];
			// Launcher and ammo variants(optional)
		_launcher = [""];
		_launcher_Mags = [];
			// Binocular
		_binocular = [""];
	};
};

//=====================================================================================
