rule Trojan_Win64_Rhadamanthys_FIA_2147852509_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Rhadamanthys.FIA!MTB"
        threat_id = "2147852509"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Rhadamanthys"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {0f b6 00 89 44 24 50 48 8b 44 24 40 48 8b 8c 24 ?? ?? ?? ?? 48 03 c8 48 8b c1 0f b6 00 88 44 24 24 0f b6 44 24 24 33 44 24 50 48 8b 4c 24 40 48 8b 94 24 ?? ?? ?? ?? 48 03 d1 48 8b ca 88 01 e9}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Rhadamanthys_RAZ_2147894727_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Rhadamanthys.RAZ!MTB"
        threat_id = "2147894727"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Rhadamanthys"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {4d 8b f1 48 c1 ee 03 8d 7a 08 4c 2b f3 48 ff c6 48 8d 4c 24 60 4c 8b c7 48 8b d5 e8 ?? ?? ?? ?? 4c 8b cb 4c 8b c5 33 d2 49 8b cd e8 ?? ?? ?? ?? 48 8b cf 41 8a 04 1e 30 03 48 ff c3 48 ff c9 75}  //weight: 1, accuracy: Low
        $x_1_2 = {4d 8b f1 48 c1 eb 03 bf ?? ?? ?? ?? 4c 2b f6 48 ff c3 48 8b d5 48 8b ce 4c 8b c7 48 2b d6 41 8a 04 0e 32 01 88 04 0a 48 ff c1 49 ff c8 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Rhadamanthys_FIF_2147900901_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Rhadamanthys.FIF!MTB"
        threat_id = "2147900901"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Rhadamanthys"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {48 03 d1 48 8b ca 0f b6 09 33 c8 8b c1 48 8b 8d 28 01 00 00 48 8b 95 98 ?? ?? ?? 48 03 d1 48 8b ca 88 01 e9}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Rhadamanthys_GXZ_2147904893_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Rhadamanthys.GXZ!MTB"
        threat_id = "2147904893"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Rhadamanthys"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {6b c6 44 24 ?? 65 c6 44 24 ?? 72 c6 44 24 ?? 6e c6 44 24 ?? 65 c6 44 24 ?? 6c c6 44 24 ?? 33 c6 44 24 ?? 32 c6 44 24 ?? 2e c6 44 24 ?? 64 c6 44 24 ?? 6c c6 44 24 ?? 6c c6 44 24 ?? 56 c6 44 24 ?? 69 c6 44 24 ?? 72 c6 44 24 ?? 74 c6 44 24 ?? 75 c6 44 24 ?? 61 c6 44 24 ?? 6c c6 44 24 ?? 41 c6 44 24 ?? 6c c6 44 24 ?? 6c c6 44 24 ?? 6f c6 44 24 ?? 63 41 b8 0c}  //weight: 10, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Rhadamanthys_ZKA_2147905474_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Rhadamanthys.ZKA!MTB"
        threat_id = "2147905474"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Rhadamanthys"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {49 8b cd 41 b8 ?? ?? ?? ?? 48 2b cb 49 8b d0 4c 8b db 42 8a 04 1e 41 32 03 42 88 04 19 49 83 c3 01 48 83 ea 01 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Rhadamanthys_CCHZ_2147905535_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Rhadamanthys.CCHZ!MTB"
        threat_id = "2147905535"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Rhadamanthys"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {42 8a 04 1e 41 32 03 42 88 04 19 49 83 c3}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

