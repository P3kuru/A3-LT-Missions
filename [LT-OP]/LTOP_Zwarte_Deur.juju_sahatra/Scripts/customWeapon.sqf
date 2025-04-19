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
		_rifle = ["JCA_arifle_M4A4_VFG_black_F"];
		_rifleGL = ["JCA_arifle_M4A4_GL_black_F"];
		_rifle_Mags	= "ACE_30Rnd_556x45_Stanag_Tracer_Dim";
		_rifle_Mags_Tr = "ACE_30Rnd_556x45_Stanag_Tracer_Dim";
			// Crew weapon and ammo(tracer)
		_rifleCrew = ["JCA_arifle_M4A4_VFG_black_F"];
		_rifleCrew_Mags = _rifle_Mags;
		_rifleCrew_Mags_Tr = _rifle_Mags_Tr;
			// Default attachments (IR/Flashlight/Barrle/Bipod/Scope)
		_rifleAttRailIR = ["JCA_acc_DualMount_black_Pointer"];
		_rifleAttRailFL = ["JCA_acc_DualMount_black_Pointer"];
		_rifleAttMuzzle = [""];
		_rifleAttBipod = [""];
		_rifleAttScope = ["optic_MRCO"];
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
		_rifleMarkAttBipod = ["JCA_bipod_04_black"];
		_rifleMarkAttScope = ["JCA_optic_MRPS_black"];
			// Pilot/Heli weapon ammo and attachtments
		_rifleAir = ["hlc_smg_mp5a3"];
		_rifleAir_Mags = "hlc_30Rnd_9x19_B_MP5";
		_rifleAirAttRailIR = ["hlc_acc_Surefiregrip"];
		_rifleAirAttRailFL = ["hlc_acc_Surefiregrip"];
		_rifleAirAttMuzzle = [""];
		_rifleAirAttBipod = [""];
		_rifleAirAttScope = [""];
			// Autorifleman weapon ammo and attachtments
		_rifleAR = ["LMG_03_F"];
		_rifleAR_Mags = "200Rnd_556x45_Box_F";
		_rifleARAttRailIR = ["Aegis_acc_pointer_DM"];
		_rifleARAttRailFL = ["saber_light_lxWS"];
		_rifleARAttMuzzle = [""];
		_rifleARAttBipod = [""];
		_rifleARAttScope = ["JCA_optic_AHO_black"];
			// Sidearm weapon ammo and attachtments
		_handGun = ["rhsusf_weap_glock17g4"];
		_handGun_Mags = "rhsusf_mag_17Rnd_9x19_JHP";
		_handGunAttRailIR = ["hlc_acc_DBALPL"];
		_handGunAttRailFL = ["hlc_acc_DBALPL_FL"];
		_handGunAttMuzzle = [""];
		_handGunAttBipod = [""];
		_handGunAttScope = [""];
			// Launcher and ammo variants(optional)
		_launcher = ["rhs_weap_m72a7"];
		_launcher_MagAA = "";
		_launcher_MagAT = "";
			// Binocular
		_binocular = ["rhsusf_bino_lrf_Vector21"];
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
		_launcher_MagAA = "";
		_launcher_MagAT = "";
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
		_launcher_MagAA = "";
		_launcher_MagAT = "";
			// Binocular
		_binocular = [""];
	};
};

//=====================================================================================
