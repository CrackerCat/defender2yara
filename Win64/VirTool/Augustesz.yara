rule VirTool_Win64_Augustesz_A_2147910769_0
{
    meta:
        author = "defender2yara"
        detection_name = "VirTool:Win64/Augustesz.A!MTB"
        threat_id = "2147910769"
        type = "VirTool"
        platform = "Win64: Windows 64-bit platform"
        family = "Augustesz"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {48 89 ce 49 89 c8 49 89 c1 49 89 ca 49 89 cb ?? ?? ?? ?? ?? ?? ?? ?? 48 85 db ?? ?? ?? ?? ?? ?? 48 89 9c 24 f8 00 00 00 48 89 84 24 98 01 00 00 48 c7 84 24 dc 00 00 00 00 00 00 00 c7 84 24 e4 00 00 00 00 00 00 00 c7 84 24 dc 00 00 00 ?? ?? ?? ?? 48 ba ?? ?? ?? ?? ?? ?? ?? ?? 48 89 94 24 e0 00 00 00 31 c0 ?? ?? ?? ?? ?? ?? ?? ?? b9 0c 00 00 00}  //weight: 1, accuracy: Low
        $x_1_2 = {48 89 84 24 20 01 00 00 44 0f 11 bc 24 89 00 00 00 44 0f 11 bc 24 8b 00 00 00 66 c7 84 24 89 00 00 00 ?? ?? 48 ba ?? ?? ?? ?? ?? ?? ?? ?? 48 89 94 24 8b 00 00 00 48 ba ?? ?? ?? ?? ?? ?? ?? ?? 48 89 94 24 93 00 00 00 31 c0 ?? ?? ?? ?? ?? ?? ?? ?? b9 12 00 00 00 ?? ?? ?? ?? ?? 48 89 d9 48 89 c3 48 8b 84 24 20 01 00 00}  //weight: 1, accuracy: Low
        $x_1_3 = {88 4c 24 24 [0-18] 44 0f 11 38 44 0f 11 78 10 48 c7 40 20 00 00 00 00 b9 ?? ?? ?? ?? 48 89 48 28 ?? ?? ?? ?? ?? ?? ?? b9 12 00 00 00 ?? ?? ?? ?? ?? 48 8b 4c 24 78 ?? ?? ?? 48 83 f9 02 ?? ?? 0f b6 4c 24 23}  //weight: 1, accuracy: Low
        $x_1_4 = {0f b6 4c 24 24 84 c9 ?? ?? 48 85 db ?? ?? b9 01 00 00 00 ?? ?? 48 8b 8c 24 80 00 00 00 48 83 f9 1f 0f 9c c1 89 c8 48 81 c4 e8 02 00 00 5d c3 66}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

