rule Trojan_Win32_Malgent_B_2147735650_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Malgent.B"
        threat_id = "2147735650"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Malgent"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {33 c0 3d c4 36 4f 00 75 0c 8b 0d ?? ?? ?? ?? 89 0d ?? ?? ?? ?? 40 3d f2 70 86 00 7c e5 ff 15 ?? ?? ?? ?? 33 c0}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Malgent_D_2147740704_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Malgent.D"
        threat_id = "2147740704"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Malgent"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {43 3a 5c 43 6f 64 65 73 5c 56 65 72 73 69 6f 6e 32 5c 70 65 5f 65 6e 63 72 79 70 74 5c 52 65 6c 65 61 73 65 5c 50 45 43 6c 6f 6e 65 72 2e 70 64 62 00}  //weight: 2, accuracy: High
        $x_1_2 = {43 00 6f 00 6d 00 70 00 61 00 6e 00 79 00 4e 00 61 00 6d 00 65 00 00 00 00 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 43 00 6f 00 72 00 70 00 6f 00 72 00 61 00 74 00 69 00 6f 00 6e 00}  //weight: 1, accuracy: High
        $x_1_3 = "GoldTemp.exe" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_2_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_Malgent_D_2147740704_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Malgent.D"
        threat_id = "2147740704"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Malgent"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {ff d6 8b 45 f4 8a 0c 07 90 90 90 50 90 58 90 90 90 90 90 90 90 90 90 50 90 58 90 90 90 90 90 90 ff 05 28 50 00 10 2a cb 80 f1 3f 6a 00 02 cb 90 90 90 50 90 58 90 90 90 90 90 90 90 90 90 50 90 58 90 90 90 90 90 90 6a 00 88 0f ff d6 90 90 90 50 90 58 90 90 90 90 90 90 90 90 90 50 90 58 90 90 90 90 90 90 47 ff 4d fc 75 91}  //weight: 1, accuracy: High
        $x_1_2 = "TmDbgLog.dll" ascii //weight: 1
        $x_1_3 = "tq_tel\"#'qii" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Malgent_C_2147741596_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Malgent.C!dha"
        threat_id = "2147741596"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Malgent"
        severity = "Critical"
        info = "dha: an internal category used to refer to some threats"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "raw.githubusercontent.com/errorsysteme" wide //weight: 1
        $x_1_2 = "Install_CM.exe" wide //weight: 1
        $x_1_3 = "C:\\Windows\\SysWOW64\\proceslist.txt" wide //weight: 1
        $x_1_4 = "fontdrsvhost.exe" wide //weight: 1
        $x_1_5 = "FrameworkUI.exe" wide //weight: 1
        $x_1_6 = "lsass_config.exe" wide //weight: 1
        $x_1_7 = "LiveKernel\\SRPolicySvc.exe" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (4 of ($x*))
}

rule Trojan_Win32_Malgent_C_2147741596_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Malgent.C!dha"
        threat_id = "2147741596"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Malgent"
        severity = "Critical"
        info = "dha: an internal category used to refer to some threats"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {ff d6 8b 45 f4 8a 0c 07 ff 05 ?? ?? 00 10 2a cb 80 f1 3f 6a 00 02 cb 6a 00 88 0f ff d6 47 ff 4d fc 75}  //weight: 1, accuracy: Low
        $x_1_2 = "tq_tel\"#'qii" ascii //weight: 1
        $x_1_3 = "ssMUIDLL.dll" ascii //weight: 1
        $x_1_4 = "TmDbgLog.dll" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (3 of ($x*))
}

rule Trojan_Win32_Malgent_AG_2147815423_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Malgent.AG!MSR"
        threat_id = "2147815423"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Malgent"
        severity = "Critical"
        info = "MSR: Microsoft Security Response"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "GetUserNameA" ascii //weight: 1
        $x_1_2 = "CreateMutexA" ascii //weight: 1
        $x_2_3 = "Global\\gfxQJsVUhkMOSadImwZFBbnpe2Gjv7HA" ascii //weight: 2
        $x_1_4 = "EtwEventWrite" ascii //weight: 1
        $x_1_5 = "CreateThread" ascii //weight: 1
        $x_1_6 = "VirtualProtectEx" ascii //weight: 1
        $x_1_7 = "WriteProcessMemory" ascii //weight: 1
        $x_1_8 = "explorer.exe" ascii //weight: 1
        $x_1_9 = "svchost.exe" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Malgent_CSG_2147815601_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Malgent.CSG!MSR"
        threat_id = "2147815601"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Malgent"
        severity = "Critical"
        info = "MSR: Microsoft Security Response"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "305"
        strings_accuracy = "Low"
    strings:
        $x_100_1 = "Software\\Microsoft\\Windows\\Defender\\AutoUpdate.dll" wide //weight: 100
        $x_100_2 = "del \"C:\\Documents and Settings\\All Users" ascii //weight: 100
        $x_100_3 = "temp.bat" wide //weight: 100
        $x_1_4 = "URLDownloadToFile" ascii //weight: 1
        $x_1_5 = "LoadLibrary" ascii //weight: 1
        $x_1_6 = "WriteFile" ascii //weight: 1
        $x_1_7 = "VirtualProtect" ascii //weight: 1
        $x_1_8 = {64 72 6f 70 70 65 72 2d 72 65 67 73 76 72 33 32 [0-5] 2e 64 6c 6c}  //weight: 1, accuracy: Low
        $x_1_9 = "func1" ascii //weight: 1
        $x_1_10 = "DllRegisterServer" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((3 of ($x_100_*) and 5 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_Malgent_BS_2147829047_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Malgent.BS!MTB"
        threat_id = "2147829047"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Malgent"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {8a 0c 10 8d 52 01 80 f1 c0 80 e9 15 80 f1 e2 88 4a ff 83 ee 01 75}  //weight: 2, accuracy: High
        $x_1_2 = "JumpLogin" ascii //weight: 1
        $x_1_3 = "RunService" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Malgent_BD_2147844793_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Malgent.BD!MTB"
        threat_id = "2147844793"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Malgent"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {8b 18 33 d1 33 da 81 c1 dc 5e 2c 00 89 18 83 c0 04 8d 1c 06 3b df 76}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Malgent_RP_2147916496_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Malgent.RP!MTB"
        threat_id = "2147916496"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Malgent"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "112"
        strings_accuracy = "High"
    strings:
        $x_100_1 = "DLL\\test\\Release\\Dll1.pdb" ascii //weight: 100
        $x_10_2 = "Ensup.log" wide //weight: 10
        $x_1_3 = "SignalChromeElf" ascii //weight: 1
        $x_1_4 = "\"C:\\Windows\\iexplore.exe\"" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Malgent_RP_2147916496_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Malgent.RP!MTB"
        threat_id = "2147916496"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Malgent"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "204"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "SignalChromeElf" ascii //weight: 1
        $x_100_2 = "\\Release\\mfc.pdb" ascii //weight: 100
        $x_100_3 = "zh-CN/NUSData/M2052Hongyu.voiceAssistant.unt" ascii //weight: 100
        $x_1_4 = "zh-CN/NUSData/M2052Kangkang.keyboard.unt" ascii //weight: 1
        $x_1_5 = "CmfcDoc" ascii //weight: 1
        $x_1_6 = "CmfcView" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

