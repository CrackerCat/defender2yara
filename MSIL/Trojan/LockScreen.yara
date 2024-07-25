rule Trojan_MSIL_LockScreen_D_2147717111_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/LockScreen.D!bit"
        threat_id = "2147717111"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "LockScreen"
        severity = "Critical"
        info = "bit: an internal category used to refer to some threats"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = "HKEY_CURRENT_USER\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run" wide //weight: 1
        $x_1_2 = {73 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 [0-16] 2d 00 72 00 20 00 2d 00 74 00 20 00 30 00}  //weight: 1, accuracy: Low
        $x_1_3 = "trojan.BSK.bat" wide //weight: 1
        $x_1_4 = {69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 70 00 61 00 63 00 6b 00 61 00 67 00 65 00 [0-16] 47 00 6f 00 6f 00 67 00 6c 00 65 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_LockScreen_G_2147747951_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/LockScreen.G!MTB"
        threat_id = "2147747951"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "LockScreen"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 61 00 74 00 69 00 6f 00 6e 00 35 00 39 00 2e 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 2f 00 6d 00 79 00 2f}  //weight: 1, accuracy: High
        $x_1_2 = "call_web_page_taskbar" ascii //weight: 1
        $x_1_3 = "runTeamViewer_Setup" ascii //weight: 1
        $x_1_4 = "runAnyDesk" ascii //weight: 1
        $x_1_5 = "Your product key should be in an email from whoever sold or distributed Windows to you or on" ascii //weight: 1
        $x_1_6 = "The product key looks similar to this:..PRODUCT KEY" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (5 of ($x*))
}

rule Trojan_MSIL_LockScreen_AHU_2147781321_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/LockScreen.AHU!MTB"
        threat_id = "2147781321"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "LockScreen"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "32"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {0a 00 06 0b 16 0c 2b 21 07 08 9a 0d 00 72 ?? ?? ?? 70 72 ?? ?? ?? 70 28 ?? ?? ?? 0a 26 09 6f ?? ?? ?? 0a 00 00 08 17 58 0c 08 07 8e 69 32 d9}  //weight: 10, accuracy: Low
        $x_5_2 = "DISABLECMD_Tick" ascii //weight: 5
        $x_4_3 = "DisableTaskMgr" ascii //weight: 4
        $x_4_4 = "DarkCrypt" ascii //weight: 4
        $x_3_5 = "Processhacker.exe" ascii //weight: 3
        $x_3_6 = "regedit.exe" ascii //weight: 3
        $x_3_7 = "CBTRWE6N3NV5N35P" ascii //weight: 3
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_LockScreen_ALX_2147786324_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/LockScreen.ALX!MTB"
        threat_id = "2147786324"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "LockScreen"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {00 7e 1f 00 00 0a 72 33 00 00 70 6f 20 00 00 0a 0a 06 72 a7 00 00 70 6f 23 00 00 0a 14 fe 01 0b 07 2c 11 06 72 a7 00 00 70 72 c5 00 00 70 6f 24 00 00 0a 00 2a}  //weight: 1, accuracy: High
        $x_1_2 = "niasolatrik@protonmail.com" ascii //weight: 1
        $x_1_3 = "1AK5upNye9evvHtGE9LS6jh9VTLAyHctkn" ascii //weight: 1
        $x_1_4 = "Computer_Unlocked.txt" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_LockScreen_ALS_2147851890_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/LockScreen.ALS!MTB"
        threat_id = "2147851890"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "LockScreen"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {13 05 11 04 11 05 14 28 ?? ?? ?? 0a 14 fe 01 13 09 11 09 2c 40 00 7e 1c 00 00 0a 72}  //weight: 2, accuracy: Low
        $x_1_2 = "DisableTaskMgr" wide //weight: 1
        $x_1_3 = "Trojan_Locker" wide //weight: 1
        $x_1_4 = "blue_skull" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

