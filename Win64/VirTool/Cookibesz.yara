rule VirTool_Win64_Cookibesz_A_2147921347_0
{
    meta:
        author = "defender2yara"
        detection_name = "VirTool:Win64/Cookibesz.A!MTB"
        threat_id = "2147921347"
        type = "VirTool"
        platform = "Win64: Windows 64-bit platform"
        family = "Cookibesz"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {41 b9 00 01 00 00 [0-22] 48 8b 4c 24 30 ?? ?? ?? ?? ?? 85 c0 [0-16] 48 89 44 24 20 ?? ?? ?? ?? ?? ?? ?? ?? 44 8b 84 24 b8 00 00 00 ?? ?? ?? ?? ?? ?? ?? 33 c9 ?? ?? ?? ?? ?? ?? ?? 44 8b 84 24 b8 00 00 00}  //weight: 1, accuracy: Low
        $x_1_2 = {c6 44 24 30 01 48 8b 05 4a 66 1c 00 48 89 84 24 a8 00 00 00 ?? ?? ?? ?? ?? ?? ?? 48 8b 4c 24 68 ?? ?? ?? ?? ?? ?? ?? 85 c0 ?? ?? ?? ?? ?? ?? ?? ?? ?? 33 c9 [0-18] 48 89 84 24 98 00 00 00}  //weight: 1, accuracy: Low
        $x_1_3 = {48 89 44 24 28 8b 44 24 48 89 44 24 20 4c 8b 4c 24 78 41 b8 08 00 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 48 8b 4c 24 38 ?? ?? ?? ?? ?? 85 c0 ?? ?? ?? ?? ?? ?? ?? ?? ?? b9 0d 00 00 00 ?? ?? ?? ?? ?? 48 8b 05 31 8c 1c 00 48 89 84 24 d0 00 00 00 48 8b 4c 24 38 [0-18] 4c 8b 44 24 50}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

