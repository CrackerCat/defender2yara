rule Trojan_Win64_Strab_A_2147833041_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Strab.A!MTB"
        threat_id = "2147833041"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Strab"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {44 89 c0 41 f7 ea 44 01 c2 c1 fa 05 44 89 c0 c1 f8 1f 29 c2 6b d2 ?? 44 89 c0 29 d0 48 63 d0 48 8b 0d ?? ?? ?? ?? 0f b6 14 11 42 32 94 04 ?? ?? ?? ?? 43 88 14 01 49 83 c0 01 4d 39 d8 75 c1}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Strab_ARA_2147852902_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Strab.ARA!MTB"
        threat_id = "2147852902"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Strab"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {8b 44 24 30 89 04 24 8b 44 24 30 ff c8 89 44 24 30 83 3c 24 00 74 2b 48 8b 44 24 20 48 8b 4c 24 28 0f b6 09 88 08 48 8b 44 24 20 48 ff c0 48 89 44 24 20 48 8b 44 24 28 48 ff c0 48 89 44 24 28 eb be}  //weight: 2, accuracy: High
        $x_2_2 = "\\ddvsm\\0804_161426\\cmd\\s\\out\\binaries\\amd64ret\\bin\\amd64\\Blend.pdb" ascii //weight: 2
        $x_1_3 = "GetClipboardFormatNameW" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

