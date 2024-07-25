rule Trojan_Win64_StealC_MKV_2147848524_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/StealC.MKV!MTB"
        threat_id = "2147848524"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {48 01 c1 e8 ?? ?? ?? ?? 48 63 45 ?? 0f b6 44 05 ?? 48 63 4d c0 0f b6 4c 0d e0 01 c8 b9 ?? ?? ?? ?? 99 f7 f9 48 63 c2 44 0f b6 44 05 ?? 48 8b 85 ?? ?? ?? ?? 48 63 4d bc 0f b6 14 08 44 31 c2 88 14 08 8b 45 ?? 83 c0 01 89 45 bc e9}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_StealC_YAB_2147891506_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/StealC.YAB!MTB"
        threat_id = "2147891506"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {48 03 c8 48 8b c1 48 89 84 24 ?? ?? ?? ?? 48 8b 84 24 ?? ?? ?? ?? 8b 8c 24 ?? ?? ?? ?? 8b 00 33 c1 48 8b 8c 24 ?? ?? ?? ?? 89 01 8b 44 24 5c 83 c0 04 89 44 24}  //weight: 5, accuracy: Low
        $x_5_2 = {ff c0 89 44 24 28 8b 44 24 24 39 44 24 28 73 33 48 8b 84 24 ?? ?? ?? ?? ff 50 10 48 98 33 d2 b9 1a 00 00 00 48 f7 f1 48 8b c2 66 0f be 44 04 58 48 63 4c 24}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_StealC_DAZ_2147898565_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/StealC.DAZ!MTB"
        threat_id = "2147898565"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {41 ff c0 49 63 c8 42 0f b6 04 09 42 88 04 0e 48 8b 44 24 ?? 88 14 01 4c 8b 4c 24 ?? 42 0f b6 0c 0e 48 03 ca 0f b6 c1 42 0f b6 0c 08 41 30 0c 1b 49 ff c3 49 81 fb 1b d6 01 00 72}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_StealC_NS_2147902479_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/StealC.NS!MTB"
        threat_id = "2147902479"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {7d 20 48 63 44 24 ?? 48 8b 4c 24 58 8b 04 01 03 44 24 ?? 48 63 4c 24 ?? 48 8b 54 24 30 89 04}  //weight: 3, accuracy: Low
        $x_3_2 = {8b 44 24 20 83 c0 ?? 89 44 24 20 81 7c 24 20 00 60}  //weight: 3, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_StealC_KAD_2147906221_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/StealC.KAD!MTB"
        threat_id = "2147906221"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {76 04 80 6d ?? ?? 8b 45 ?? c1 e0 ?? 89 c2 8b 45 ?? 01 c2 0f b6 45}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_StealC_AST_2147906962_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/StealC.AST!MTB"
        threat_id = "2147906962"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {49 c1 e4 38 49 c1 e7 30 4d 09 e7 49 c1 e6 28 48 c1 e3 20 48 c1 e7 18 49 c1 e3 10 49 c1 e1 08 4d 09 d1 4d 09 d9 49 09 f9 49 09 d9 4d 09 f1 4d 09 f9 4e 33 0c 00 4e 89 4c 05 f0 45 31 c9 49 89 d0}  //weight: 1, accuracy: High
        $x_1_2 = {44 0f b6 44 0a 02 41 c1 e0 10 44 0f b7 0c 0a 45 01 c8 41 81 c0 00 00 00 cb 44 33 04 10 44 89 44 15 f0 48 83 c2 04}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

