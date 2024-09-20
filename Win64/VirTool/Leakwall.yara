rule VirTool_Win64_Leakwall_A_2147921412_0
{
    meta:
        author = "defender2yara"
        detection_name = "VirTool:Win64/Leakwall.A"
        threat_id = "2147921412"
        type = "VirTool"
        platform = "Win64: Windows 64-bit platform"
        family = "Leakwall"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {48 8b 4c 24 30 ?? ?? ?? ?? ?? 8b d3 48 8b 01 ff ?? ?? 8b f8 85 c0 ?? ?? 48 8b ?? ?? ?? ?? ?? 48 ?? ?? ?? ?? ?? ?? e8 ?? ?? ?? ?? 48 8b c8 8b d7 ff ?? ?? ?? ?? ?? 48 8b c8 ?? ?? ?? ?? ?? ?? ?? ff ?? ?? ?? ?? ?? eb ?? 48 8b 4c 24 30 4c 8b c6 48 8b 54 24 38 48 8b 01 ff ?? ?? 48 8b ?? ?? ?? ?? ?? 48 ?? ?? ?? ?? ?? ?? e8 ?? ?? ?? ?? 48 8b c8 ?? ?? ?? ?? ?? ?? ?? ff ?? ?? ?? ?? ?? 48 8b 4c 24 38 ff}  //weight: 1, accuracy: Low
        $x_1_2 = {0f 57 c0 48 89 5c 24 30 0f 57 c9 48 89 5d ?? 48 ?? ?? ?? ?? 44 ?? ?? ?? f3 0f 7f 44 24 6c f3 0f 7f 4d 80 ff ?? ?? ?? ?? ?? 48 ?? ?? ?? 44 8b cf ?? ?? ?? ?? ?? ?? ?? 48 89 44 24 20 ba 2c 01 00 00 ?? ?? ?? ?? e8 ?? ?? ?? ?? 4c ?? ?? ?? ?? c7 44 24 68 30 00 00 00 ?? ?? ?? ?? ?? c7 44 24 7c 04 00 00 00 ?? ?? ?? ?? ?? 48 ?? ?? ?? ff}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

