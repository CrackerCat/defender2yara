rule VirTool_Win32_Cristesz_A_2147900980_0
{
    meta:
        author = "defender2yara"
        detection_name = "VirTool:Win32/Cristesz.A!MTB"
        threat_id = "2147900980"
        type = "VirTool"
        platform = "Win32: Windows 32-bit platform"
        family = "Cristesz"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {50 56 6a 00 6a 20 6a 00 6a 00 6a 00 ?? ?? ?? ?? ?? ?? ?? 50 6a 00 ff ?? ?? ?? ?? ?? 85 c0}  //weight: 1, accuracy: Low
        $x_1_2 = {56 6a 02 68 ?? ?? ?? ?? e8 ?? ?? ?? ?? 83 c4 0c 6a 04 68 00 30 00 00 68 00 ?? ?? ?? 6a 00 56 ff ?? ?? ?? ?? ?? 89 44 24 78 85 c0}  //weight: 1, accuracy: Low
        $x_1_3 = {8b 4c 24 78 ?? ?? ?? ?? 50 c1 e1 0a 68 00 04 00 00 ?? ?? ?? ?? ?? ?? 50 8b 44 24 74 03 c1 50 56 ff ?? ?? ?? ?? ?? 85 c0 ?? ?? ?? ?? ?? ?? 81 7c 24 74 00 04 00 00 ?? ?? ?? ?? ?? ?? 8b 44 24 78}  //weight: 1, accuracy: Low
        $x_1_4 = {50 6a 00 6a 00 57 6a 00 6a 00 56 ff ?? ?? ?? ?? ?? 8b f8 85 ff}  //weight: 1, accuracy: Low
        $x_1_5 = {56 6a 05 68 ?? ?? ?? ?? e8 ?? ?? ?? ?? 83 c4 0c ff 74 24 68 6a 05 68 ?? ?? ?? ?? e8 ?? ?? ?? ?? 83 c4 0c}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

