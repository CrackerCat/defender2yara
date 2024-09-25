rule VirTool_Win64_Chromekatz_A_2147921591_0
{
    meta:
        author = "defender2yara"
        detection_name = "VirTool:Win64/Chromekatz.A"
        threat_id = "2147921591"
        type = "VirTool"
        platform = "Win64: Windows 64-bit platform"
        family = "Chromekatz"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {44 8b 44 24 58 33 d2 b9 10 04 00 00 ff ?? ?? ?? ?? ?? 8b 54 24 58 ?? ?? ?? ?? ?? ?? ?? 4c 8b f0 e8 ?? ?? ?? ?? 48 ?? ?? ?? ?? ?? ?? e8 ?? ?? ?? ?? 4c ?? ?? ?? ?? 48 89 74 24 48 ba 08 00 00 00 49 8b ce ff ?? ?? ?? ?? ?? 85 c0 ?? ?? ?? ?? ?? ?? 48 8b 4c 24 48 ?? ?? ?? ?? ?? 45 33 c9 89 74 24 40 45 33 c0 48 89 44 24 20 ?? ?? ?? ?? ff}  //weight: 1, accuracy: Low
        $x_1_2 = {48 8b f8 4c 8b cb ?? ?? ?? ?? ?? ?? ?? 4c 8b c7 49 8b d6 48 89 44 24 20 48 8b ce ff}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

