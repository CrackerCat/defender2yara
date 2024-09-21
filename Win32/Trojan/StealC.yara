rule Trojan_Win32_StealC_GIC_2147846149_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.GIC!MTB"
        threat_id = "2147846149"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {23 c1 66 89 85 ?? ?? ?? ?? 0f be 55 ff 0f be 45 fe 33 d0 88 15 ?? ?? ?? ?? 8b 8d ?? ?? ?? ?? 0f be 11 0f be 45 fd 0b d0 88 55 fe 8b 8d ?? ?? ?? ?? 0f be 11}  //weight: 10, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_GFO_2147849931_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.GFO!MTB"
        threat_id = "2147849931"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "11"
        strings_accuracy = "High"
    strings:
        $x_10_1 = {8b 45 fc 39 45 10 76 1b 8b 55 fc 8b 45 0c 01 d0 8b 4d fc 8b 55 08 01 ca 0f b6 00 88 02 83 45 fc 01 eb}  //weight: 10, accuracy: High
        $x_1_2 = "@.eh_fram" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_YAA_2147890059_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.YAA!MTB"
        threat_id = "2147890059"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b 45 08 01 d0 0f b6 00 89 c2 8b 45 14 89 d1 31 c1 8b 55 ?? 8b 45 ?? 01 d0 89 ca 88 10 83 45}  //weight: 1, accuracy: Low
        $x_1_2 = {88 45 e2 8b 55 f0 8b 45 08 01 d0 0f b6 00 32 45 e2 88 45 e1 8b 55 f0 8b 45 0c 01 c2 0f b6 45 ?? 88 02 83 45 f0 01 8b 45 f0}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_CCBJ_2147891497_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.CCBJ!MTB"
        threat_id = "2147891497"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {03 dd 33 de 33 d8 2b fb 8b c7 c1 e0}  //weight: 1, accuracy: High
        $x_1_2 = {33 f3 31 74 24 ?? 8b 44 24 ?? 29 44 24}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_AS_2147891739_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.AS!MTB"
        threat_id = "2147891739"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {66 8b c8 66 2b cf 66 8b f8 b8 03 70 00 00 66 89 0d ?? ?? ?? ?? 66 23 f8 0f b7 e9 8a 02 46 88 04 13 42 0f b7 c1}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_MMK_2147892623_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.MMK!MTB"
        threat_id = "2147892623"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b c8 c1 e9 05 03 4c 24 18 8b d0 c1 e2 04 03 54 24 1c 03 c7 33 ca 33 c8 2b f1 8b ce c1 e1 04 c7 05 ?? ?? ?? ?? 00 00 00 00 89 4c 24 10 8b 44 24 20 01 44 24 10 81 3d ?? ?? ?? ?? be 01 00 00 8d 1c 37 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_MVK_2147892937_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.MVK!MTB"
        threat_id = "2147892937"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b d6 d3 ea 8d 04 37 89 45 e8 c7 05 ?? ?? ?? ?? ee 3d ea f4 03 55 dc 8b 45 e8 31 45 fc 33 55 fc 81 3d ?? ?? ?? ?? 13 02 00 00 89 55 e8 75}  //weight: 1, accuracy: Low
        $x_1_2 = {c1 e0 04 89 45 fc 8b 45 d8 01 45 fc 8b 75 f8 8b 4d f4 8d 04 37 31 45 fc d3 ee 03 75 d0 81 3d ?? ?? ?? ?? 21 01 00 00 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_NIN_2147893161_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.NIN!MTB"
        threat_id = "2147893161"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b c8 c1 e9 05 03 4c 24 2c 8b d0 c1 e2 04 03 54 24 28 03 c7 33 ca 33 c8 2b f1 8b ce c1 e1 04 c7 05 ?? ?? ?? ?? 00 00 00 00 89 4c 24}  //weight: 1, accuracy: Low
        $x_1_2 = {8b c6 c1 e8 05 03 c5 33 c3 31 44 24 14 c7 05 ?? ?? ?? ?? 19 36 6b ff c7 05 ?? ?? ?? ?? ff ff ff ff 8b 44 24 14 29 44 24 18 a1 b8 36 7c 00 3d 93 00 00 00 74}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_NIF_2147893242_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.NIF!MTB"
        threat_id = "2147893242"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b d0 c1 ea 05 8b c8 c1 e1 04 03 d5 03 cb 33 d1 8b 4c 24 10 03 c8 33 d1 2b f2 8b d6 c1 e2 04 c7 05 ?? ?? ?? ?? 00 00 00 00 89 54 24}  //weight: 1, accuracy: Low
        $x_1_2 = {8b d6 c1 ea 05 03 54 24 2c c7 05 ?? ?? ?? ?? 19 36 6b ff 33 d7 31 54 24 14 c7 05 ?? ?? ?? ?? ff ff ff ff 8b 44 24 14 29 44 24 18 8b 44 24 30 29 44 24 10 ff 4c 24 20 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_NIT_2147893243_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.NIT!MTB"
        threat_id = "2147893243"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {d3 eb 89 45 ec c7 05 ?? ?? ?? ?? ee 3d ea f4 03 5d d4 8b cb 8b 45 ec 31 45 fc 33 4d fc 81 3d ?? ?? ?? ?? 13 02 00 00 89 4d ec 75}  //weight: 1, accuracy: Low
        $x_1_2 = {8b 45 f8 c1 e0 04 89 45 fc 8b 45 d8 01 45 fc 8b 4d f8 8d 04 0f 31 45 fc 8b f9 8b 4d f4 d3 ef 03 7d d0 81 3d ?? ?? ?? ?? 21 01 00 00 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_RYY_2147893323_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.RYY!MTB"
        threat_id = "2147893323"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {d3 ef 89 45 f0 c7 05 ?? ?? ?? ?? ee 3d ea f4 03 7d e4 8b 45 f0 31 45 fc 33 7d fc 81 3d ?? ?? ?? ?? 13 02 00 00 89 7d f0 75}  //weight: 1, accuracy: Low
        $x_1_2 = {c1 e0 04 89 45 fc 8b 45 dc 01 45 fc 8b 7d f4 8b 4d f8 8d 04 3b 31 45 fc d3 ef 03 7d e0 81 3d ?? ?? ?? ?? 21 01 00 00 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_TRW_2147893404_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.TRW!MTB"
        threat_id = "2147893404"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {d3 ee 89 45 f0 c7 05 ?? ?? ?? ?? ee 3d ea f4 03 75 e4 8b 45 f0 31 45 fc 33 75 fc 81 3d ?? ?? ?? ?? 13 02 00 00 89 75 f0 75}  //weight: 1, accuracy: Low
        $x_1_2 = {c1 e0 04 89 45 fc 8b 45 dc 01 45 fc 8b 75 f4 8b 4d f8 8d 04 33 31 45 fc d3 ee 03 75 e0 81 3d ?? ?? ?? ?? 21 01 00 00 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_DUS_2147893828_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.DUS!MTB"
        threat_id = "2147893828"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b d0 8b c8 c1 ea 05 03 54 24 2c c1 e1 04 03 4c 24 24 03 c3 33 d1 33 d0 2b fa 8b cf c1 e1 04 c7 05 ?? ?? ?? ?? 00 00 00 00 89 4c 24 10 8b 44 24 28 01 44 24 10 81 3d ?? ?? ?? ?? be 01 00 00 8d 2c 3b 75}  //weight: 1, accuracy: Low
        $x_1_2 = {33 f5 31 74 24 10 8b 44 24 10 29 44 24 14 a1 8c db 7a 00 3d 93 00 00 00 74 ?? 81 c3 ?? ?? ?? ?? ff 4c 24 1c 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_JHN_2147894237_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.JHN!MTB"
        threat_id = "2147894237"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b d0 8b c8 c1 ea 05 03 54 24 34 c1 e1 04 03 4c 24 24 03 c3 33 d1 33 d0 2b fa 8b cf c1 e1 04 c7 05 ?? ?? ?? ?? 00 00 00 00 89 4c 24 10 8b 44 24 28 01 44 24 10 81 3d ?? ?? ?? ?? be 01 00 00 8d 2c 3b 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_CHD_2147894332_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.CHD!MTB"
        threat_id = "2147894332"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8d 0c 2b 33 f1 33 f0 2b fe 8b c7 c1 e0 04 c7 05 ?? ?? ?? ?? 00 00 00 00 89 44 24 10 8b 44 24 20 01 44 24 10 81 3d ?? ?? ?? ?? be 01 00 00 75}  //weight: 1, accuracy: Low
        $x_1_2 = {8d 04 2f 33 f0 8b 44 24 ?? 33 c6 2b d8 81 c5 47 86 c8 61 ff 4c 24 18 89 44 24 10 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_HOI_2147894540_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.HOI!MTB"
        threat_id = "2147894540"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8d 0c 2b 33 f1 33 f0 2b fe 8b c7 c1 e0 04 c7 05 ?? ?? ?? ?? 00 00 00 00 89 44 24 10 8b 44 24 24 01 44 24 10 81 3d ?? ?? ?? ?? be 01 00 00 75}  //weight: 1, accuracy: Low
        $x_1_2 = {8d 04 2f 33 f0 8b 44 24 ?? 33 c6 2b d8 81 c5 47 86 c8 61 ff 4c 24 18 89 44 24 10 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_HOK_2147894541_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.HOK!MTB"
        threat_id = "2147894541"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b c7 c1 e8 05 03 44 24 28 8b cf c1 e1 04 03 4c 24 34 8d 14 2f 33 c1 33 c2 2b d8 8b c3 c1 e0 04 c7 05 ?? ?? ?? ?? 00 00 00 00 89 44 24 14 8b 44 24 24 01 44 24 14 81 3d ?? ?? ?? ?? be 01 00 00 75}  //weight: 1, accuracy: Low
        $x_1_2 = {8d 04 2b 33 f0 8b 44 24 ?? 33 c6 2b f8 81 c5 47 86 c8 61 ff 4c 24 1c 89 44 24 14 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_RAZ_2147894696_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.RAZ!MTB"
        threat_id = "2147894696"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b c3 c1 e8 05 03 44 24 38 8d 14 2b 33 ca 89 44 24 18 89 4c 24 14 89 35 84 50 7b 00 8b 44 24 18 01 05 84 50 7b 00 a1 ?? ?? ?? ?? 89 44 24 28 89 74 24 18 8b 44 24 28 01 44 24 18 8b 44 24 14 33 44 24 18 89 44 24 18}  //weight: 1, accuracy: Low
        $x_1_2 = {33 f0 8b 44 24 ?? 33 c6 2b d8 81 c5 47 86 c8 61 ff 4c 24 20 89 44 24 14 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_RAY_2147894943_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.RAY!MTB"
        threat_id = "2147894943"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {c1 e0 04 89 45 fc 8b 45 e0 01 45 fc 8b 45 f4 8b 4d f8 8d 14 03 31 55 fc d3 e8 03 45 e4 81 3d ?? ?? ?? ?? 21 01 00 00 8b f8 75}  //weight: 1, accuracy: Low
        $x_1_2 = {56 ff 15 14 ?? ?? ?? 31 7d fc 8b 45 fc 29 45 f0 81 c3 ?? ?? ?? ?? ff 4d e8 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_RAS_2147894944_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.RAS!MTB"
        threat_id = "2147894944"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {33 f6 8b cb c1 e1 04 03 4c 24 3c 8b c3 c1 e8 05 03 44 24 38 8d 14 2b 33 ca 89 44 24 18 89 4c 24 14 89 35 ?? ?? ?? ?? 8b 44 24 18 01 05 84 40 7b 00 a1 ?? ?? ?? ?? 89 44 24 28 89 74 24 18}  //weight: 1, accuracy: Low
        $x_1_2 = {8d 04 2f 33 f0 8b 44 24 ?? 33 c6 2b d8 81 c5 47 86 c8 61 ff 4c 24 20 89 44 24 14 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_CCDJ_2147895005_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.CCDJ!MTB"
        threat_id = "2147895005"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {83 c4 04 a3 ?? ?? ?? ?? 68 ?? ?? ?? ?? e8 ?? ?? ?? ?? 83 c4 04 a3 ?? ?? ?? ?? 68 ?? ?? ?? ?? e8 ?? ?? ?? ?? 83 c4 04 a3 ?? ?? ?? ?? 68 ?? ?? ?? ?? e8 ?? ?? ?? ?? 83 c4 04 a3 ?? ?? ?? ?? 68 ?? ?? ?? ?? e8 ?? ?? ?? ?? 83 c4 04 a3 ?? ?? ?? ?? 68 ?? ?? ?? ?? e8 ?? ?? ?? ?? 83 c4 04 a3 ?? ?? ?? ?? 68 ?? ?? ?? ?? e8 ?? ?? ?? ?? 83 c4 04 a3 ?? ?? ?? ?? 68 ?? ?? ?? ?? e8 ?? ?? ?? ?? 83 c4 04}  //weight: 1, accuracy: Low
        $x_1_2 = "8333535433577209139469888401" ascii //weight: 1
        $x_1_3 = "VMware" ascii //weight: 1
        $x_1_4 = "HAL9TH" ascii //weight: 1
        $x_1_5 = "JohnDoe" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_RAR_2147895197_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.RAR!MTB"
        threat_id = "2147895197"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {33 db 8b c6 8b d6 c1 e0 04 c1 ea 05 03 54 24 30 03 c5 8d 0c 37 33 c1 89 54 24 18 89 44 24 10 89 1d ?? ?? ?? ?? 8b 44 24 18 01 05 84 40 7b 00 8b 15 ?? ?? ?? ?? 89 54 24 28 89 5c 24 18 8b 44 24 28}  //weight: 1, accuracy: Low
        $x_1_2 = {31 5c 24 10 8b 44 24 18 31 44 24 10 a1 ?? ?? ?? ?? 2b 74 24 10 3d 93 00 00 00 74}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_KS_2147895253_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.KS!MTB"
        threat_id = "2147895253"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {33 c1 89 54 24 18 89 44 24 10 89 1d a4 67 7b 00 8b 44 24 18 01 05 a4 67 7b 00 8b 15 a4 67 7b 00 89 54 24 30 89 5c 24 18 8b 44 24 30 01 44 24 18 8b 44 24 10 33 44 24 18 89 44 24 18 8b 44 24 18 89 44 24 18 8b 44 24 18 29 44 24 14}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_DIW_2147895360_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.DIW!MTB"
        threat_id = "2147895360"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {33 ff 8b d0 c1 ea 05 03 d5 8b c8 c1 e1 04 89 54 24 1c 03 cb 8d 14 06 33 ca 89 4c 24 10 89 3d ?? ?? ?? ?? 8b 44 24 1c 01 05 ?? ?? ?? ?? a1 a4 67 7b 00 89 44 24 34}  //weight: 1, accuracy: Low
        $x_1_2 = {31 7c 24 10 8b 44 24 1c 31 44 24 10 8b 44 24 10 29 44 24 18 a1 ?? ?? ?? ?? 3d 93 00 00 00 74}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_YLA_2147895551_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.YLA!MTB"
        threat_id = "2147895551"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {33 ff 8b d0 c1 ea 05 03 d5 8b c8 c1 e1 04 89 54 24 20 03 cb 8d 14 06 33 ca 89 4c 24 10 89 3d ?? ?? ?? ?? 8b 44 24 20 01 05 ?? ?? ?? ?? a1 54 33 7b 00 89 44 24 38}  //weight: 1, accuracy: Low
        $x_1_2 = {31 7c 24 10 8b 44 24 20 31 44 24 10 8b 44 24 10 29 44 24 1c c7 44 24 18 ?? ?? ?? ?? 8b 44 24 34 01 44 24 18 2b 74 24 18 ff 4c 24 2c 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_YLZ_2147895635_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.YLZ!MTB"
        threat_id = "2147895635"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b c8 c1 e1 04 03 cf 03 d0 33 ca 89 4c 24 14 89 2d ?? ?? ?? ?? 8b 44 24 28 01 05 ?? ?? ?? ?? a1 ?? ?? ?? ?? 89 44 24 44 89 6c 24 28 8b 44 24 44 01 44 24 28 8b 44 24 14 33 44 24 28 89 44 24 28}  //weight: 1, accuracy: Low
        $x_1_2 = {31 74 24 14 8b 44 24 28 31 44 24 14 8b 44 24 14 29 44 24 ?? 89 6c 24 24 8b 44 24 38 01 44 24 24 29 44 24 1c ff 4c 24 34 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_CHT_2147896823_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.CHT!MTB"
        threat_id = "2147896823"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {c1 e0 04 89 45 fc 8b 45 e0 01 45 fc 8b 55 f4 8b 4d f8 8b c2 d3 e8 8d 3c 13 81 c3 47 86 c8 61 03 45 e4 33 c7 31 45 fc 8b 45 fc 29 45 f0 ff 4d e8 0f 85}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_CHC_2147896888_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.CHC!MTB"
        threat_id = "2147896888"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b d6 d3 ea 8d 04 33 89 45 ec c7 05 ?? ?? ?? ?? ee 3d ea f4 03 55 ?? 8b 45 ec 31 45 fc 33 55 fc 81 3d ?? ?? ?? ?? 13 02 00 00 89 55 ec 75}  //weight: 1, accuracy: Low
        $x_1_2 = {c1 e0 04 89 45 fc 8b 45 e0 01 45 fc 8b 45 f4 8b 4d f8 8b f0 d3 ee 8d 14 03 31 55 fc 03 75 ?? 81 3d ?? ?? ?? ?? 21 01 00 00 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_VEA_2147896917_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.VEA!MTB"
        threat_id = "2147896917"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b d6 d3 ea 8d 04 37 89 45 e8 c7 05 ?? ?? ?? ?? ee 3d ea f4 03 55 d4 8b 45 e8 31 45 fc 33 55 fc 81 3d ?? ?? ?? ?? 13 02 00 00 89 55 e8 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_VEB_2147896918_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.VEB!MTB"
        threat_id = "2147896918"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b d0 8b c8 c1 e2 04 03 54 24 34 c1 e9 05 03 4c 24 28 03 c6 33 d0 89 4c 24 1c 89 54 24 10 89 3d ?? ?? ?? ?? 8b 44 24 1c 01 05 ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? 89 4c 24 2c 89 7c 24 1c 8b 44 24 2c 01 44 24 1c 8b 44 24 10 33 44 24 1c 89 44 24 1c 8b 54 24 1c}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_SKA_2147897171_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.SKA!MTB"
        threat_id = "2147897171"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b d3 d3 ea 8d 04 1f 89 45 ec c7 05 ?? ?? ?? ?? ee 3d ea f4 03 55 d8 8b 45 ec 31 45 fc 33 55 fc 81 3d ?? ?? ?? ?? 13 02 00 00 89 55 ec 75}  //weight: 1, accuracy: Low
        $x_1_2 = {31 45 fc 8b fa d3 ef 03 7d dc 81 3d ?? ?? ?? ?? 21 01 00 00 75 10 68 ?? ?? ?? ?? 56 56 ff 15 ?? ?? ?? ?? 8b 55 f8 31 7d fc 2b 5d fc 8d 45 f0 e8 ?? ?? ?? ?? ff 4d e8 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_A_2147897415_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.A!MTB"
        threat_id = "2147897415"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {8d 04 0f 31 45 ?? 8b f9 8b 4d ?? d3 ef 03 7d}  //weight: 2, accuracy: Low
        $x_2_2 = {c6 05 01 c1 42 00 6c c6 05 fb c0 42 00 6d c6 05 fc c0 42 00 67 c6 05 00 c1 42 00 64 c6 05 03 c1 42 00 ?? c6 05 02 c1 42 00 6c c6 05 ff c0 42 00 2e c6 05 fe c0 42 00 32 c6 05 f8 c0 42 00 6d c6 05 fa c0 42 00 69 c6 05 fd c0 42 00 33 c6 05 f9 c0 42 00 73}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (1 of ($x*))
}

rule Trojan_Win32_StealC_ANI_2147897502_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.ANI!MTB"
        threat_id = "2147897502"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {33 c5 33 ed 89 7c 24 18 89 44 24 10 89 2d ?? ?? ?? ?? 8b 44 24 18 01 05 ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? 89 4c 24 28 89 6c 24 18 8b 44 24 28 01 44 24 18 8b 44 24 10 33 44 24 18 89 44 24 18}  //weight: 1, accuracy: Low
        $x_1_2 = {c1 e8 05 03 44 24 38 33 cf c7 05 ?? ?? ?? ?? 19 36 6b ff c7 05 ?? ?? ?? ?? ff ff ff ff 89 44 24 18 89 4c 24 10 8b 44 24 18 31 44 24 10 2b 74 24 10 81 c3 ?? ?? ?? ?? ff 4c 24 20 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_ANG_2147897504_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.ANG!MTB"
        threat_id = "2147897504"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8d 04 13 d3 ea 89 45 ec c7 05 ?? ?? ?? ?? ee 3d ea f4 03 55 d4 8b 45 ec 31 45 fc 33 55 fc 81 3d ?? ?? ?? ?? 13 02 00 00 89 55 ec 75}  //weight: 1, accuracy: Low
        $x_1_2 = {56 56 ff 15 9c 10 40 00 31 7d fc 8b 45 fc 29 45 f0 81 c3 47 86 c8 61 ff 4d e8 0f 85 ad fe ff ff}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_NKK_2147897597_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.NKK!MTB"
        threat_id = "2147897597"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {d3 ea 89 45 dc c7 05 ?? ?? ?? ?? ee 3d ea f4 03 55 e0 8b 45 dc 31 45 fc 33 55 fc 89 55 dc 8b 45 dc 83 45 f8 ?? 29 45 f8 83 6d f8 64 83 3d ?? ?? ?? ?? 0c 75}  //weight: 1, accuracy: Low
        $x_1_2 = {c1 e0 04 89 45 fc 8b 45 d8 01 45 fc 8b 7d f8 8b 4d f4 8d 04 3b 31 45 fc d3 ef 03 7d d4 81 3d ?? ?? ?? ?? 21 01 00 00 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_NKO_2147897601_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.NKO!MTB"
        threat_id = "2147897601"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {33 c5 33 ed 89 74 24 18 89 44 24 10 89 2d ?? ?? ?? ?? 8b 44 24 18 01 05 ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? 89 4c 24 28 89 6c 24 18 8b 44 24 28 01 44 24 18 8b 44 24 10 33 44 24 18 89 44 24 18}  //weight: 1, accuracy: Low
        $x_1_2 = {33 c6 89 44 24 10 8b 44 24 18 31 44 24 10 2b 7c 24 10 81 c3 ?? ?? ?? ?? ff 4c 24 20 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_NHA_2147897702_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.NHA!MTB"
        threat_id = "2147897702"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b d6 d3 ea 8d 04 37 89 45 d8 c7 05 ?? ?? ?? ?? ee 3d ea f4 03 55 dc 8b 45 d8 31 45 fc 33 55 fc 89 55 d8 8b 45 d8 83 45 f8 64 29 45 f8 83 6d f8 64 83 3d f8 af a9 02 0c 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_NHB_2147897703_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.NHB!MTB"
        threat_id = "2147897703"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {03 74 24 48 31 7c 24 14 89 74 24 24 89 2d ?? ?? ?? ?? 8b 44 24 24 01 05 68 d0 b8 00 a1 ?? ?? ?? ?? 89 44 24 34 89 6c 24 24 8b 44 24 34 01 44 24 24 8b 44 24 14 33 44 24 24 89 44 24 24 8b 4c 24 24}  //weight: 1, accuracy: Low
        $x_1_2 = {33 c6 89 44 24 14 8b 44 24 24 31 44 24 14 2b 5c 24 14 89 6c 24 20 8b ?? 24 44 01 44 24 20 29 44 24 18 ff 4c 24 2c 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_NHC_2147897767_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.NHC!MTB"
        threat_id = "2147897767"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {d3 ea 89 45 dc c7 05 ?? ?? ?? ?? ee 3d ea f4 03 55 e0 8b 45 dc 31 45 fc 33 55 fc 89 55 dc 8b 45 dc 83 45 f8 64 29 45 f8 83 6d f8 64 83 3d ?? ?? ?? ?? 0c 75}  //weight: 1, accuracy: Low
        $x_1_2 = {8b c2 d3 e8 8d 3c 13 81 c3 ?? ?? ?? ?? 03 45 d4 33 c7 31 45 fc 8b 45 fc 29 45 f0 ff 4d e8 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_NHD_2147897773_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.NHD!MTB"
        threat_id = "2147897773"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b d6 d3 ea 8d 04 37 89 45 d8 c7 05 ?? ?? ?? ?? ee 3d ea f4 03 55 dc 8b 45 d8 31 45 fc 33 55 fc 89 55 d8 8b 45 d8 83 45 f8 64 29 45 f8 83 6d f8 64 83 3d ?? ?? ?? ?? 0c 75}  //weight: 1, accuracy: Low
        $x_1_2 = {d3 ee 03 75 d0 81 3d ?? ?? ?? ?? 21 01 00 00 75 07 53 ff 15 ?? ?? ?? ?? 31 75 fc 8b 45 fc 29 45 ec 81 45 f0 47 86 c8 61 ff 4d e4 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_IDL_2147898248_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.IDL!MTB"
        threat_id = "2147898248"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {33 ff 89 74 24 18 89 3d ?? ?? ?? ?? 8b 44 24 18 01 05 c8 2c ba 00 a1 ?? ?? ?? ?? 89 44 24 28 89 7c 24 18 8b 44 24 28 01 44 24 18 8b 44 24 10 33 44 24 18 89 44 24 18 8b 4c 24 18}  //weight: 1, accuracy: Low
        $x_1_2 = {33 c6 89 44 24 10 8b 44 24 18 31 44 24 10 a1 ?? ?? ?? ?? 2b 5c 24 10 3d ?? ?? ?? ?? 74}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_EAA_2147898652_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.EAA!MTB"
        threat_id = "2147898652"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {33 ff 89 74 24 18 89 3d ?? ?? ?? ?? 8b 44 24 18 01 05 ?? ?? ?? ?? a1 ?? ?? ?? ?? 89 44 24 38 89 7c 24 18 8b 44 24 38 01 44 24 18 8b 44 24 10 33 44 24 18 89 44 24 18 8b 4c 24 18}  //weight: 1, accuracy: Low
        $x_1_2 = {33 c6 89 44 24 10 8b 44 24 18 31 44 24 10 a1 ?? ?? ?? ?? 2b 5c 24 10 3d 93 00 00 00 74}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_B_2147898941_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.B!MTB"
        threat_id = "2147898941"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "16"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "checkIOPort - VM" ascii //weight: 2
        $x_2_2 = "checkTSS - VM" ascii //weight: 2
        $x_2_3 = "checkHardwareInfo - VM" ascii //weight: 2
        $x_2_4 = "SELECT * FROM" ascii //weight: 2
        $x_2_5 = "Win32_BaseBoard" ascii //weight: 2
        $x_2_6 = "Win32_computersystem" ascii //weight: 2
        $x_2_7 = "VMware" ascii //weight: 2
        $x_2_8 = "VirtualBox" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_C_2147899127_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.C!MTB"
        threat_id = "2147899127"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {81 ad 3c ff ff ff 02 6e 7c 7c 81 6d b0 ab ac 55 11 81 45 c0 a3 a6 28 6b 81 45 c0 07 93 a9 39 81 45 a4 48 19 ae 48 81 45 e0 ee 58 f0 51 81 85 68 ff ff ff 08 c4 c6 51}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_RDC_2147899690_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.RDC!MTB"
        threat_id = "2147899690"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {8b 4c 24 10 30 04 0e 83 ff 0f 75 12}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_CCFV_2147899725_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.CCFV!MTB"
        threat_id = "2147899725"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {83 ff 2d 75 ?? 6a 00 ff 15 ?? ?? ?? ?? e8 ?? ?? ?? ?? 30 04 33 83 ff 0f 75 ?? 6a 00 [0-6] 6a 00 6a 00 6a 00 6a 00}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_RDD_2147899751_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.RDD!MTB"
        threat_id = "2147899751"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {89 03 03 d9 25 61 6c 20 63 0d 00 02 4e 0c 89 03 03 d9}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_MZX_2147899795_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.MZX!MTB"
        threat_id = "2147899795"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {01 45 e8 8b 45 e8 89 45 ec 8b 75 f4 8b 4d f0 8b 45 ec 31 45 fc d3 ee 03 75 dc 81 3d ?? ?? ?? ?? 21 01 00 00 75}  //weight: 1, accuracy: Low
        $x_1_2 = {33 c6 89 45 fc 2b f8 8b 45 d4 29 45 f8 83 6d e4 ?? 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_AMBA_2147900547_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.AMBA!MTB"
        threat_id = "2147900547"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b c2 d3 e8 8b 4d ?? 03 c3 33 45 ?? 33 c8 8d 45 ?? 89 4d}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_AMBA_2147900547_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.AMBA!MTB"
        threat_id = "2147900547"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {81 ec 08 04 00 00 a1 ?? ?? ?? ?? 33 c5 89 85}  //weight: 1, accuracy: Low
        $x_1_2 = {8b 8d f8 fb ff ff 30 04 31 83 fb 0f 75}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_CYD_2147900668_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.CYD!MTB"
        threat_id = "2147900668"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {30 01 83 fb 0f 75 19}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_CCGL_2147900753_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.CCGL!MTB"
        threat_id = "2147900753"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {30 04 31 83 fb 0f 75 19}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_VER_2147900794_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.VER!MTB"
        threat_id = "2147900794"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b d7 d3 ea c7 05 ?? ?? ?? ?? ee 3d ea f4 03 55 d8 8b 45 ec 31 45 fc 33 55 fc 89 55 d4 8b 45 d4 83 45 f8 64 29 45 f8 83 6d f8 64 8b 45 f8}  //weight: 1, accuracy: Low
        $x_1_2 = {8b 45 fc 33 c6 89 45 fc 2b f8 8d 45 e8 e8 ?? ?? ?? ?? 83 6d e0 01 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_KKA_2147901178_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.KKA!MTB"
        threat_id = "2147901178"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {8b 4c 24 0c 30 04 31 83 7d 0c 0f 75 57}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_MRZ_2147901270_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.MRZ!MTB"
        threat_id = "2147901270"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {01 45 f0 8b 45 f0 89 45 ec 8b 75 f8 8b 4d f4 d3 ee 03 75 d8 8b 45 ec 31 45 fc 81 3d ?? ?? ?? ?? 03 0b 00 00 75}  //weight: 1, accuracy: Low
        $x_1_2 = {33 c6 81 c3 ?? ?? ?? ?? 2b f8 83 6d e0 01 89 45 fc 89 5d e8 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_BBV_2147901717_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.BBV!MTB"
        threat_id = "2147901717"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {30 04 1e 83 ff 0f 75}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_AMBF_2147901827_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.AMBF!MTB"
        threat_id = "2147901827"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {8b 45 e4 31 45 e8 8b 45 e8 33 d0 89 45 fc 89 55 ec}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_SES_2147901978_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.SES!MTB"
        threat_id = "2147901978"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {2b f0 8b c6 c1 e0 04 89 75 f0 89 45 fc 8b 45 d4 01 45 fc 8b 4d ?? 03 fe d3 ee 89 7d e4 03 75 d8 8b 45 e4 31 45 fc 81 3d 74 ?? ?? ?? 03 0b 00 00 75}  //weight: 1, accuracy: Low
        $x_1_2 = {31 75 fc 8b 45 fc 29 45 ec 81 45 f4 ?? ?? ?? ?? ff 4d e0 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_SHR_2147902144_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.SHR!MTB"
        threat_id = "2147902144"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b f3 d3 ee 03 c3 89 45 ?? 03 75 dc 8b 45 e4 31 45 fc 81 3d ?? ?? ?? ?? 03 0b 00 00 75}  //weight: 1, accuracy: Low
        $x_1_2 = {31 75 fc 8b 45 fc 29 45 ec 8b 45 d8 29 45 ?? ff 4d e0 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_SHY_2147902145_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.SHY!MTB"
        threat_id = "2147902145"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {89 e0 89 70 0c 89 50 08 89 08 c7 40 04 ?? ?? ?? ?? e8 ?? ?? ?? ?? 89 c6 8b 45 e8 8b 55 f4 89 d1 0f b6 54 10 02 31 f2 88 54 08 02 8b 45 f4 83 c0 01 89 45 f4 e9}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_CCHS_2147902330_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.CCHS!MTB"
        threat_id = "2147902330"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b d7 d3 ea 8d 04 3e 89 45 f4 03 55 e0 8b 45 f4 31 45 fc 31 55 fc 2b 5d fc 81 c6 ?? ?? ?? ?? ff 4d e8 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_NA_2147902550_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.NA!MTB"
        threat_id = "2147902550"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {59 5f 5f 5e 5b 8b e5 5d 51 c3 cc cc cc 8b 07 83 f8 fe 74 0d 8b 4f 04 03 ce 33 0c 30 e8 79 d4 ff ff 8b 4f 0c 8b 47 08 03 ce 33 0c 30 e9}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_YX_2147902862_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.YX!MTB"
        threat_id = "2147902862"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {01 45 ec 8b 45 ec 31 45 f0 8b 45 f8 33 45 f0 2b f0 89 45 f8 8b c6 c1 e0 04 89 45 fc 8b 45 d8}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_ATG_2147902900_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.ATG!MTB"
        threat_id = "2147902900"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b c8 33 d2 8b c6 f7 f1 8b 45 0c 46 83 c4 04 8a 0c 02 8b 55 ?? 32 0c 3a 88 0f 3b 75 10 72}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_ATT_2147902987_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.ATT!MTB"
        threat_id = "2147902987"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b c6 c1 e0 04 89 45 fc 8b 45 d4 01 45 fc 8b 45 f8 8b 4d f0 03 c6 89 45 e4 8b c6 d3 e8 03 45 d0 89 45 f4 8b 45 e4 31 45 fc 81 3d ?? ?? ?? ?? 03 0b 00 00 75}  //weight: 1, accuracy: Low
        $x_1_2 = {33 45 f4 2b f8 89 45 ?? 89 7d e8 8b 45 cc 29 45 f8 ff 4d e0 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_BAL_2147903213_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.BAL!MTB"
        threat_id = "2147903213"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {30 04 3e 46 3b f3 7c f3}  //weight: 1, accuracy: High
        $x_1_2 = {88 04 31 81 3d ?? ?? ?? ?? ab 05 00 00 75 32 00 8b 0d ?? ?? ?? ?? 89 4c 24 ?? b8 31 a2 00 00 01 44 24 ?? 8b 54 24 ?? 8a 04 32 8b 0d}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_SPXX_2147903232_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.SPXX!MTB"
        threat_id = "2147903232"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {01 45 f0 8b 45 f0 31 45 e8 8b 45}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_OPT_2147903472_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.OPT!MTB"
        threat_id = "2147903472"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b c7 d3 e8 03 45 ?? 89 45 f8 8b 45 ?? 31 45 fc 8b 45 fc 89 45 ?? 89 75 ?? 8b 45 ?? 89 45 ?? 8b 45 f8 31 45 ?? 8b 45}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_GF_2147903478_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.GF!MTB"
        threat_id = "2147903478"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {8b 45 e4 31 45 fc 8b 45 fc 89 45 e4 89 75 f0 8b 45 e4 89 45 f0 8b 45 f8 31 45 f0 8b 45 f0}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_VNM_2147903574_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.VNM!MTB"
        threat_id = "2147903574"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {30 04 1e 83 ff 0f 75}  //weight: 1, accuracy: High
        $x_1_2 = {b8 31 a2 00 00 01 44 24 ?? 8b 44 24 ?? 8a 0c 30 8b 15 ?? ?? ?? ?? ?? ?? ?? 81 3d ?? ?? ?? ?? ab 05 00 00 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_HR_2147903705_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.HR!MTB"
        threat_id = "2147903705"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b 45 e4 31 45 fc 8b 45 fc 89 45 ?? 89 75 f0 8b 45 ?? 89 45 f0 8b 45 f8 31 45 f0 8b 45 f0}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_SPXC_2147904391_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.SPXC!MTB"
        threat_id = "2147904391"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {83 ec 20 a1 ?? ?? ?? ?? 33 c5 89 45 fc 81 ff 82 01 00 00}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_XX_2147904775_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.XX!MTB"
        threat_id = "2147904775"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {e8 fa fe ff ff 30 04 33 83 ff 0f 75 25 6a 00 6a 00 6a 00 8d 8d fc f7 ff ff 51 6a 00 6a 00 ff 15 44 d0 40 00 ff 15 38 d0 40 00 6a 00 ff 15 60 d0 40 00 46 3b f7}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_SPF_2147904839_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.SPF!MTB"
        threat_id = "2147904839"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {31 45 e4 8b 45 f8 33 45 e4}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_CCHV_2147904868_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.CCHV!MTB"
        threat_id = "2147904868"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {30 04 33 83 ff 0f 75}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_SPCO_2147905088_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.SPCO!MTB"
        threat_id = "2147905088"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {83 ff 2d 75 0a 8d 4d dc 51 ff 15 ?? ?? ?? ?? e8 ?? ?? ?? ?? 30 04 33 46 3b f7 7c e4}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_CCHZ_2147905294_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.CCHZ!MTB"
        threat_id = "2147905294"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {ff d6 8b c8 33 d2 8b c7 f7 f1 8b 45 f8 47 83 c4 04 8a 92 ?? ?? ?? ?? 32 14 03 88 13 83 ff 02 72}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_MBFV_2147905463_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.MBFV!MTB"
        threat_id = "2147905463"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {b8 31 a2 00 00 01 44 24 ?? 8b 54 24 ?? 8a 04 0a 8b 15 ?? ?? ?? ?? 88 04 0a 41 3b 0d ?? ?? ?? ?? 72 d5}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_NDZ_2147905710_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.NDZ!MTB"
        threat_id = "2147905710"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {30 04 0a 83 bc 24 24 08 00 00 ?? 75 14 00 8b 54 24 ?? 8b 4c 24}  //weight: 1, accuracy: Low
        $x_1_2 = {8b 0d e8 f9 52 00 69 c9 fd 43 03 00 81 c1 ?? ?? ?? ?? 89 0d e8 f9 52 00 0f b7 05 ea f9 52 00 8b 8c 24 00 08 00 00 33 cc 25 ff 7f 00 00 e8}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_SPDH_2147905874_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.SPDH!MTB"
        threat_id = "2147905874"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {01 45 fc 8b 45 fc 31 45 f8 8b 45 f0 33 45 f8 2b d0}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_GZY_2147906004_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.GZY!MTB"
        threat_id = "2147906004"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {8d 04 33 89 45 ?? 8b 45 ?? c1 e8 ?? 89 45 ?? 8b 45 ?? 01 45 ?? 8b 45 ?? 83 65 ?? ?? c7 05 ?? ?? ?? ?? ee 3d ea f4 89 45 ?? 8b 45 ?? 01 45 ?? 8b 45 ?? 31 45 ?? 8b 45 ?? 33 45}  //weight: 10, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_MAC_2147906451_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.MAC!MTB"
        threat_id = "2147906451"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b de 8b 4d f4 03 c6 8b 55 fc d3 eb 33 d0 03 5d ?? 81 3d ?? ?? ?? ?? 03 0b 00 00 89 5d f0 89 55 fc 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_SPDB_2147907581_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.SPDB!MTB"
        threat_id = "2147907581"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {69 c9 fd 43 03 00 81 c1 c3 9e 26 00 89 0d ?? ?? ?? ?? 8a 15 ?? ?? ?? ?? 30 14 33 83 ff 0f 75 5e}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_KHU_2147907715_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.KHU!MTB"
        threat_id = "2147907715"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b 0d 54 ad 45 00 69 c9 fd 43 03 00 81 c1 c3 9e 26 00 89 0d 54 ?? 45 00 8a 15 56 ?? 45 00 30 14 33 83 ff 0f 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_SPI_2147907811_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.SPI!MTB"
        threat_id = "2147907811"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {d3 e8 03 d7 89 45 f8 8b 45 d0 01 45 f8 8b 45 f8 8d 4d ?? 33 c2 8b 55 f4 33 d0 89 55 f4 e8 ?? ?? ?? ?? 8b 45 e8 29 45 fc 4e 74}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_SZ_2147908345_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.SZ!MTB"
        threat_id = "2147908345"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "9"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "Monero\\wallet.keys" ascii //weight: 1
        $x_1_2 = "passwords.txt" ascii //weight: 1
        $x_1_3 = "SELECT target_path, tab_url from downloads" ascii //weight: 1
        $x_1_4 = "\\BraveWallet\\Preferences" ascii //weight: 1
        $x_1_5 = "Invoke-Expression (Invoke-WebRequest -Uri" ascii //weight: 1
        $x_1_6 = "-UseBasicParsing).Content" ascii //weight: 1
        $x_1_7 = "powershell.exe" ascii //weight: 1
        $x_1_8 = "vmcheck" ascii //weight: 1
        $x_1_9 = "avghookx" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_GXZ_2147908580_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.GXZ!MTB"
        threat_id = "2147908580"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {30 14 1e 83 ff 0f ?? ?? 6a 00 6a 00 6a 00 e8 05 45 ff ff 46 3b f7}  //weight: 10, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_CCID_2147908645_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.CCID!MTB"
        threat_id = "2147908645"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b c7 d3 e8 89 45 ?? 8b 45 ?? 01 45 ?? 8b 45 ?? 8d 4d ?? 8b 55 ?? 33 45 ?? 33 d0 89 55}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_CCIE_2147908900_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.CCIE!MTB"
        threat_id = "2147908900"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b c3 d3 e8 89 45 ?? 8b 45 ?? 01 45 ?? 8b 45 ?? 81 c2 ?? ?? ?? ?? 33 45 ?? 8b 4d ?? 33 c8 89 55 ?? 2b f9 89 4d ?? 8b 4d ?? 89 7d ?? 4e}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_MBYF_2147908975_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.MBYF!MTB"
        threat_id = "2147908975"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {83 c0 64 89 44 24 ?? 83 6c 24 ?? ?? 8a 4c 24 ?? 30 0c 1e}  //weight: 1, accuracy: Low
        $x_1_2 = {6f 6d 6f 79 6f 77 65 76 00 00 00 7a 00 6f 00 72 00 75 00 6e 00 65}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_RDG_2147909411_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.RDG!MTB"
        threat_id = "2147909411"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {89 45 f4 8b 45 e8 c1 e8 05 89 45 f8 8b 4d fc 33 db 33 4d f4 8b 45 f8 03 45 d0}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_CCIH_2147910382_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.CCIH!MTB"
        threat_id = "2147910382"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8d 0c 3a 8d 42 ?? 30 41 ?? 42 83 fa}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_ERR_2147911041_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.ERR!MTB"
        threat_id = "2147911041"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b d8 8b 45 a4 05 ee cc 00 00 2b 45 9c 03 d8 6a 00 e8 ?? ?? ?? ?? 2b d8 8b 45 d4 31 18 83 45 ec 04 6a 00 e8 ?? ?? ?? ?? 83 c0 04 01 45 d4 8b 45 ec 3b 45 d0 72}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_STK_2147911491_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.STK!MTB"
        threat_id = "2147911491"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b c6 d3 e8 89 45 f4 8b 45 dc 01 45 f4 8b 45 f4 33 45 f8 31 45 fc 8b 45 fc 29 45 ec 8d 4d f0 e8 ?? ?? ?? ?? 4f 74 0b 8b 5d f0 8b 4d d8 e9}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_CCIK_2147911896_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.CCIK!MTB"
        threat_id = "2147911896"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {03 c7 30 08 83 fb 0f 75}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_GOZ_2147912055_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.GOZ!MTB"
        threat_id = "2147912055"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b 55 a8 81 c2 ?? ?? ?? ?? 2b 55 a0 2b d0 8b 45 d8 31 10 6a 00 e8 ?? ?? ?? ?? 83 45 ec 04 83 45 d8 04 8b 45 ec 3b 45 d4 72}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_GGM_2147912139_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.GGM!MTB"
        threat_id = "2147912139"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {83 c0 64 89 85 f8 fb ff ff 83 ad ?? ?? ?? ?? 64 8a 85 f8 fb ff ff 30 04 33 83 7d 08 0f 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_TYQ_2147912250_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.TYQ!MTB"
        threat_id = "2147912250"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b c5 d3 e8 89 44 24 14 8b 44 24 30 01 44 24 14 8d 04 2b 33 44 24 14 31 44 24 10 8b 44 24 10 29 44 24 1c ba b9 79 37 9e 8d 4c 24 18 e8 ?? ?? ?? ?? 4e 74 09 8b 5c 24 18 e9}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_GXW_2147912266_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.GXW!MTB"
        threat_id = "2147912266"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {30 04 37 83 7d ?? 0f ?? ?? 53 8d 85 ?? ?? ?? ?? 50 53 ff 15}  //weight: 10, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_KGF_2147912341_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.KGF!MTB"
        threat_id = "2147912341"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b 45 f8 83 c0 64 89 45 fc 83 6d fc ?? 8b 45 08 8a 4d fc 03 c2 30 08 42 3b 55 0c 7c}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_RA_2147912470_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.RA!MTB"
        threat_id = "2147912470"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {8b 45 f8 83 c0 64 89 45 fc 83 6d fc 64 8b 45 08 8a 4d fc 03 c2 30 08 42 3b d7 7c}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_RB_2147912747_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.RB!MTB"
        threat_id = "2147912747"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b 45 f8 83 c0 ?? 89 45 fc 83 6d fc ?? 83 6d fc ?? 8b 45 08 8a 4d fc 03 c2 30 08 42 3b 55 ?? 7c}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_AMAB_2147912760_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.AMAB!MTB"
        threat_id = "2147912760"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {83 c0 46 89 45 ?? 83 6d ?? ?? ?? 83 6d ?? ?? 8b 45 ?? 8a 4d ?? 03 c6 30 08 46 3b 75 ?? 7c ?? 83 7d}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_CCIQ_2147912956_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.CCIQ!MTB"
        threat_id = "2147912956"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {8a 4d fc 03 c6 30 08 46 3b 75 0c 7c}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_QW_2147913490_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.QW!MTB"
        threat_id = "2147913490"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {8a 45 c4 30 04 3b 83 7d ?? 0f 59 75}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_WS_2147913958_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.WS!MTB"
        threat_id = "2147913958"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {8a 85 f8 fb ff ff 30 04 3b 83 7d 08 0f 59 75}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_GND_2147914610_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.GND!MTB"
        threat_id = "2147914610"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {6a 6b 58 6a 6e 66 a3 ?? ?? ?? ?? 58 6a 65 66 a3 ?? ?? ?? ?? 58 6a 6c 66 a3 ?? ?? ?? ?? 58 6a 33 66 a3 ?? ?? ?? ?? 58 6a 32 66 a3 ?? ?? ?? ?? 58 6a 2e 66 a3 ?? ?? ?? ?? 58 6a 64 66 a3 ?? ?? ?? ?? 58 6a 6c 66 a3 ?? ?? ?? ?? 58 66 a3 ?? ?? ?? ?? 66 a3 ?? ?? ?? ?? 33 c0 6a 65 66 a3}  //weight: 10, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_ZT_2147914812_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.ZT!MTB"
        threat_id = "2147914812"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b c6 c1 e0 ?? 03 85 ?? ?? ?? ?? 03 ce 33 c1 33 45 ?? 2b d8}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_ZL_2147914844_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.ZL!MTB"
        threat_id = "2147914844"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {60 e8 00 00 00 00 5d 81 ed 10 00 00 00 81 ed 40 66 bf 00 e9 04 00 00 00}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_SSD_2147914948_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.SSD!MTB"
        threat_id = "2147914948"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {33 c9 c6 45 ?? 00 8d 45 dd 30 14 08 41 83 f9 0b 73}  //weight: 1, accuracy: Low
        $x_1_2 = {0f b6 c0 33 94 85 b8 f7 ff ff 0f b6 c1 03 94 85 b8 fb ff ff 8b 85 ?? ?? ?? ?? 33 14 38 83 ad 5c ef ff ff 01 89 14 38 8b 85 68 ef ff ff 8b 0c 07 89 14 07 8b d0 89 4c 38 04 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_NC_2147915104_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.NC!MTB"
        threat_id = "2147915104"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {60 e8 00 00 00 00 5d 81 ed 10 00 00 00 81 ed 1c 55 be 00 e9 04 00 00 00}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_IIC_2147915932_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.IIC!MTB"
        threat_id = "2147915932"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {c1 e8 05 c7 05 ?? ?? ?? ?? ee 3d ea f4 89 45 70 8b 85 70 fe ff ff 01 45 70 8b 85 80 fe ff ff 8b f3 c1 e6 04 03 b5 6c fe ff ff 03 c3 33 f0 81 3d ?? ?? ?? ?? 03 0b 00 00 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_BBZ_2147916725_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.BBZ!MTB"
        threat_id = "2147916725"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b c7 c1 e8 05 89 45 74 8b 85 10 ff ff ff 01 45 74 8b 8d 3c ff ff ff 8b c7 c1 e0 04 03 85 ?? ?? ?? ?? 03 cf 33 c1 81 3d ?? ?? ?? ?? 03 0b 00 00 89 85 1c ff ff ff 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_GNN_2147919381_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.GNN!MTB"
        threat_id = "2147919381"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {33 ca 03 c3 33 c1 81 3d ?? ?? ?? ?? ?? ?? ?? ?? c7 05 ?? ?? ?? ?? ee 3d ea f4 89 44 24}  //weight: 10, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_GNM_2147919465_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.GNM!MTB"
        threat_id = "2147919465"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_10_1 = {8b 45 f8 83 c0 46 89 45 fc 83 6d fc 46 8a 45 fc 30 04 1f 47 3b 7d}  //weight: 10, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_GNM_2147919465_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.GNM!MTB"
        threat_id = "2147919465"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {8b c3 c1 e8 ?? 89 44 24 ?? 8b 44 24 ?? 01 44 24 ?? 8b f3 c1 e6 ?? 03 74 24 ?? 8d 0c 1f 33 f1 81 3d ?? ?? ?? ?? 03 0b 00 00}  //weight: 10, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_RZ_2147921422_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.RZ!MTB"
        threat_id = "2147921422"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {30 14 38 83 ?? 0f 75 ?? 8d 85 f0 ?? ff ff 50 8d 8d fc ?? ff ff 51}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StealC_TZ_2147921425_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StealC.TZ!MTB"
        threat_id = "2147921425"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StealC"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b c7 c1 e8 ?? 89 45 ?? 8b 45 ?? 01 45 ?? 8b 45 ?? c1 e7 ?? 03 7d ?? 03 c3 33 f8}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

