rule Trojan_Win64_Sliver_D_2147805308_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Sliver.D"
        threat_id = "2147805308"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Sliver"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "124"
        strings_accuracy = "Low"
    strings:
        $x_100_1 = {48 83 ec 38 48 89 6c 24 30 48 8d 6c 24 30 48 8d 05 ?? ?? ?? ?? ?? e8 ?? ?? ?? ?? 48 89 44 24 18 c6 00 ?? 48 8d 05 ?? ?? ?? ?? e8 ?? ?? ?? ?? 48 89 44 24 28 48 c7 00 00 00 00 00 48 8d 05 ?? ?? ?? ?? e8 ?? ?? ?? ?? 48 89 44 24 20 48 8d 05 ?? ?? ?? ?? 0f 1f 00 e8 ?? ?? ?? ?? 48 8d 0d ?? ?? ?? ?? 48 89 08 83 ?? ?? ?? ?? 00 00 75 20 48 8b 4c 24 28 48 89 48 08 48 8b 5c 24 18 48 89 58 10 48 8b 5c 24 20 48 89 58 18 48 89 03 eb 35}  //weight: 100, accuracy: Low
        $x_10_2 = {48 0f ba e0 3f 73 1a 48 89 c1 48 d1 e0 48 c1 e8 1f 48 ba 80 7f b1 d7 0d 00 00 00}  //weight: 10, accuracy: High
        $x_10_3 = {44 0f b6 04 0f 49 89 c9 48 31 c1 41 01 c8 46 88 04 0f 49 8d 49 01}  //weight: 10, accuracy: High
        $x_1_4 = {66 81 39 77 67}  //weight: 1, accuracy: High
        $x_1_5 = {80 79 02 73}  //weight: 1, accuracy: High
        $x_1_6 = {81 39 68 74 74 70}  //weight: 1, accuracy: High
        $x_1_7 = {80 79 04 73}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Sliver_ASV_2147894261_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Sliver.ASV!MTB"
        threat_id = "2147894261"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Sliver"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {33 c1 b9 04 00 00 00 48 6b c9 00 48 8b 54 24 40 89 44 0a 1c 48 8b 44 24 40 48 63 40 4c 48 8b 4c 24 40 48 8b 49 78 0f b6 54 24 64 88 14 01 48 8b 44 24 40}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

