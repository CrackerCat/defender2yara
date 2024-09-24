rule Trojan_Win32_Tofsee_NM_2147749195_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.NM!MTB"
        threat_id = "2147749195"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b 55 d8 83 c2 01 89 55 d8 8b 45 d8 3b 45 cc 7d 34 81 7d cc 69 04 00 00 75 11 c7 45 d4 00 00 00 00 8b 4d d4 51 ff 15 ?? ?? ?? ?? 8b 55 d0 03 55 d8 0f be 1a e8 ?? ?? ?? ?? 33 d8 8b 45 d0 03 45 d8 88 18 eb}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_GA_2147749985_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.GA!MTB"
        threat_id = "2147749985"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {81 ec 84 08 00 00 a1 ?? ?? ?? ?? 33 c4 89 84 24 80 08 00 00 8b 84 24 88 08 00 00 53 55 8b 28 56 33 db 81 3d ?? ?? ?? ?? ab 07 00 00 57 8b 78 04 89 44 24 68}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_DSK_2147750528_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.DSK!MTB"
        threat_id = "2147750528"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {69 c0 fd 43 03 00 a3 ?? ?? ?? ?? 81 05 ?? ?? ?? ?? c3 9e 26 00 0f b7 05}  //weight: 1, accuracy: Low
        $x_1_2 = {30 01 46 3b 74 24 0c 7c 05 00 e8}  //weight: 1, accuracy: Low
        $x_2_3 = {8b 55 c4 8b c7 c1 e8 05 03 45 b0 03 cb 03 d7 33 ca 81 3d ?? ?? ?? ?? 72 07 00 00}  //weight: 2, accuracy: Low
        $x_2_4 = {8b 54 24 10 8b c7 c1 e8 05 03 44 24 38 03 d7 33 ca 81 3d ?? ?? ?? ?? 72 07 00 00}  //weight: 2, accuracy: Low
        $x_2_5 = {8a 3a 89 f1 0f b6 30 30 df 29 ce 88 38}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (
            ((2 of ($x_1_*))) or
            ((1 of ($x_2_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_Tofsee_GB_2147750661_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.GB!MTB"
        threat_id = "2147750661"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {51 6a 00 ff 15 ?? ?? ?? ?? 85 f6 78 ?? e8 ?? ?? ?? ?? 30 04 3e 4e 79 ?? 8b 4d fc 5f 5e 33 cd 5b e8 ?? ?? ?? ?? 8b e5 5d c3}  //weight: 1, accuracy: Low
        $x_1_2 = {6a 00 6a 00 6a 00 ff 15 ?? ?? ?? ?? a1 ?? ?? ?? ?? 0f b6 b0 ?? ?? ?? ?? 0f b6 c3 03 f0 81 e6 ff 00 00 00 81 3d ?? ?? ?? ?? 81 0c 00 00 75 ?? 6a 00 6a 00}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_GC_2147751005_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.GC!MTB"
        threat_id = "2147751005"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {83 c4 04 33 c0 85 ff 74 ?? 30 1c 30 40 3b c7 72 ?? e8 ?? ?? ?? ?? 8b 4d f8 8b 55 08 8a 45 ff 30 02 42 e2}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_PVD_2147752865_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.PVD!MTB"
        threat_id = "2147752865"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {8b 44 24 10 33 c6 89 44 24 10 2b f8 8b 44 24 ?? d1 6c 24 ?? 29 44 24 ?? 83 6c 24 ?? 01 0f 85}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_PVS_2147753030_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.PVS!MTB"
        threat_id = "2147753030"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {0f b6 c3 03 f8 81 e7 ff 00 00 00 81 3d ?? ?? ?? ?? 81 0c 00 00 75 0c 00 a1 ?? ?? ?? ?? 0f b6 b8}  //weight: 1, accuracy: Low
        $x_1_2 = {30 04 1f 4f 79 05 00 e8}  //weight: 1, accuracy: Low
        $x_2_3 = {05 c3 9e 26 00 a3 ?? ?? ?? ?? ff 15 ?? ?? ?? ?? a0 ?? ?? ?? ?? 30 04 1e 46 3b f7 7c}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (
            ((2 of ($x_1_*))) or
            ((1 of ($x_2_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_Tofsee_PVR_2147753653_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.PVR!MTB"
        threat_id = "2147753653"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {8b 4c 24 10 8b 5c 24 ?? 03 4c 24 ?? 03 dd a1 ?? ?? ?? ?? 89 4c 24 10 3d 72 05 00 00 75}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_PVC_2147753810_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.PVC!MTB"
        threat_id = "2147753810"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {c1 e8 05 03 45 ?? 03 d7 33 ca 81 3d ?? ?? ?? ?? 72 07 00 00 c7 05 ?? ?? ?? ?? b4 1a 3a df 89 35 ?? ?? ?? ?? 89 35 ?? ?? ?? ?? 89 4d ?? 75}  //weight: 2, accuracy: Low
        $x_2_2 = {8b c3 c1 e8 05 03 85 ?? ?? ?? ?? 8d 14 1e 33 ca 81 3d ?? ?? ?? ?? 72 07 00 00 c7 05 ?? ?? ?? ?? b4 1a 3a df 89 8d ?? ?? ?? ?? 75}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (1 of ($x*))
}

rule Trojan_Win32_Tofsee_PVE_2147753811_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.PVE!MTB"
        threat_id = "2147753811"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {30 04 3e b8 01 00 00 00 29 85 f8 f7 ff ff 8b b5 f8 f7 ff ff 3b f3 7d 05 00 e8}  //weight: 2, accuracy: Low
        $x_2_2 = {8b 45 fc 8d 34 07 e8 ?? ?? ?? ?? 30 06 b8 01 00 00 00 29 45 fc 39 5d fc 7d}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (1 of ($x*))
}

rule Trojan_Win32_Tofsee_PVF_2147753882_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.PVF!MTB"
        threat_id = "2147753882"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {81 fe 9c 19 00 00 7d ?? 6a 00 6a 00 ff d3 e8 ?? ?? ?? ?? 30 04 37 83 ee 01 79}  //weight: 2, accuracy: Low
        $x_2_2 = {81 ff 12 23 00 00 7d ?? 6a 00 ff 15 ?? ?? ?? ?? 8b 74 24 0c e8 ?? ?? ?? ?? 30 04 3e 4f 79}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (1 of ($x*))
}

rule Trojan_Win32_Tofsee_PVH_2147753994_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.PVH!MTB"
        threat_id = "2147753994"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {8b 85 cc fb ff ff 8b 4d fc 89 38 5f 89 70 04 5e 33 cd 5b e8 ?? ?? ?? ?? 8b e5 5d c2 04 00}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_PVI_2147753995_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.PVI!MTB"
        threat_id = "2147753995"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {8d 34 18 e8 ?? ?? ?? ?? 30 06 b8 01 00 00 00 29 85 f4 f7 ff ff 8b 85 f4 f7 ff ff 85 c0 79}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_PVJ_2147754082_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.PVJ!MTB"
        threat_id = "2147754082"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {8b c3 c1 e9 05 03 4d f4 c1 e0 04 03 45 f0 33 c8 8d 04 1e 33 c8 8d b6 47 86 c8 61 2b f9 83 6d 0c 01 75 ?? 8b 75 08 89 3e 5f 89 5e 04}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_RTK_2147754144_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.RTK!MTB"
        threat_id = "2147754144"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b cf c1 e9 05 03 8d ?? ?? ?? ?? 03 d7 33 c2 81 3d ?? ?? ?? ?? 72 07 00 00 c7 05 ?? ?? ?? ?? b4 1a 3a df}  //weight: 1, accuracy: Low
        $x_1_2 = {c1 e9 05 03 4c 24 ?? 03 d6 33 c2 81 3d ?? ?? ?? ?? 72 07 00 00 c7 05 ?? ?? ?? ?? b4 1a 3a df 89 2d ?? ?? ?? ?? 89 2d ?? ?? ?? ?? 89 44 24 ?? 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (1 of ($x*))
}

rule Trojan_Win32_Tofsee_RLK_2147754206_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.RLK!MTB"
        threat_id = "2147754206"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {c1 e9 05 03 4c 24 ?? ?? ?? ?? 33 c2 81 3d ?? ?? ?? ?? 72 07 00 00 c7 05 ?? ?? ?? ?? b4 1a 3a df 89 2d ?? ?? ?? ?? 89 2d ?? ?? ?? ?? 89 44 24 ?? 75}  //weight: 1, accuracy: Low
        $x_1_2 = {c1 e9 05 03 4c 24 ?? 03 d7 33 c2 81 3d ?? ?? ?? ?? 72 07 00 00 c7 05 ?? ?? ?? ?? b4 1a 3a df 89 2d ?? ?? ?? ?? 89 2d ?? ?? ?? ?? 89 44 24 ?? 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (1 of ($x*))
}

rule Trojan_Win32_Tofsee_RQS_2147754341_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.RQS!MTB"
        threat_id = "2147754341"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {81 f3 07 eb dd 13 81 6c 24 ?? 52 ef 6f 62 b8 41 e5 64 03 81 6c 24 ?? 68 19 2a 14 81 44 24 ?? be 08 9a 76 8b 4c 24 ?? 8b f7 d3 e6 03 74 24 ?? 81 3d ?? ?? ?? ?? 1a 0c 00 00}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_GM_2147754832_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.GM!MTB"
        threat_id = "2147754832"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {b8 b7 59 e7 1f f7 a4 24 ?? ?? ?? ?? 8b 84 24 ?? ?? ?? ?? 81 84 24 [0-32] 81 6c 24 [0-32] 81 84 24 [0-32] 30 0c 37}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_GN_2147755286_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.GN!MTB"
        threat_id = "2147755286"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {b7 59 e7 1f f7 a4 24 [0-16] 8b 84 24 [0-16] 81 84 24 [0-16] 81 6c 24 [0-48] 30 0c 06}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_RWS_2147755641_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.RWS!MTB"
        threat_id = "2147755641"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {c1 e9 05 03 4d ?? 03 d6 33 c2 81 3d ?? ?? ?? ?? 72 07 00 00 c7 05 ?? ?? ?? ?? b4 1a 3a df 89 1d ?? ?? ?? ?? 89 1d ?? ?? ?? ?? 89 45 ?? 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_RZA_2147756399_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.RZA!MTB"
        threat_id = "2147756399"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {b8 b7 59 e7 1f f7 65 ?? 8b 45 ?? 81 85 ?? ?? ?? ?? f3 ae ac 68 81 6d ?? b3 30 c7 6b 81 85 ?? ?? ?? ?? 21 f4 7c 36 8b 45 ?? 30 0c 30}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_RA_2147757239_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.RA!MTB"
        threat_id = "2147757239"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {8b f7 c1 ee 05 33 c8 03 b5 ?? ?? ?? ?? 0f 57 c0 81 3d ?? ?? ?? ?? 72 07 00 00}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_RB_2147757240_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.RB!MTB"
        threat_id = "2147757240"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {c1 ea 05 89 55 ?? 66 0f 57 c0 66 0f 13 05 ?? ?? ?? ?? 8b 45 ?? 03 45 ?? 89 45 ?? 8b 4d ?? 33 4d ?? 89 4d ?? 81 3d ?? ?? ?? ?? 72 07 00 00 75}  //weight: 2, accuracy: Low
        $x_2_2 = {c1 e8 05 89 ?? ?? 66 0f 57 c0 66 0f 13 05 ?? ?? ?? ?? 8b ?? ?? 03 ?? ?? 89 ?? ?? 8b ?? ?? 33 ?? ?? 89 ?? ?? 81 3d ?? ?? ?? ?? 72 07 00 00 75}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (1 of ($x*))
}

rule Trojan_Win32_Tofsee_RC_2147757241_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.RC!MTB"
        threat_id = "2147757241"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {c1 ee 05 33 c8 03 b4 24 ?? ?? ?? ?? 0f 57 c0 81 3d ?? ?? ?? ?? 72 07 00 00 66 0f 13 05 ?? ?? ?? ?? 89 4c 24 ?? 75}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_RT_2147778189_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.RT!MTB"
        threat_id = "2147778189"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {c1 e8 05 89 54 24 ?? 89 44 24 ?? 8b 84 24 ?? ?? ?? ?? 01 44 24 ?? 8b 44 24 ?? 8d 0c 37 33 c1 31 44 24 ?? 83 3d ?? ?? ?? ?? 42 c7 05 ?? ?? ?? ?? 36 06 ea e9 89 44 24 ?? 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_RTA_2147778202_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.RTA!MTB"
        threat_id = "2147778202"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {c1 e8 05 c7 05 ?? ?? ?? ?? 84 10 d6 cb c7 05 ?? ?? ?? ?? ff ff ff ff 89 44 24 ?? 8b 84 24 ?? ?? ?? ?? 01 44 24 ?? 81 3d ?? ?? ?? ?? c6 0e 00 00 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_RTH_2147778353_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.RTH!MTB"
        threat_id = "2147778353"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {c1 e9 05 89 44 24 ?? 89 4c 24 ?? 8b 84 24 ?? ?? ?? ?? 01 44 24 ?? 8d 14 33 31 54 24 ?? 81 3d ?? ?? ?? ?? f5 03 00 00 c7 05 ?? ?? ?? ?? 36 06 ea e9 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_RM_2147781554_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.RM!MTB"
        threat_id = "2147781554"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {c1 e2 04 89 ?? ?? 8b ?? ?? 01 ?? ?? 8b ?? ?? 03 ?? ?? 89 ?? ?? c7 ?? ?? ?? ?? ?? 84 10 d6 cb}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_RM_2147781554_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.RM!MTB"
        threat_id = "2147781554"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {03 d0 89 95 ?? ?? ?? ?? 8b 8d ?? ?? ?? ?? 8b 95 ?? ?? ?? ?? 31 11 83 c0 04 3b 85 ?? ?? ?? ?? 7e ?? 83 3d [0-8] 75 ?? 83 3e 00 8b 07 3b 07 c7 85 ?? ?? ?? ?? 04 00 00 00 81 3d ?? ?? ?? ?? 13 22 00 00 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_RW_2147782059_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.RW!MTB"
        threat_id = "2147782059"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "13"
        strings_accuracy = "High"
    strings:
        $x_10_1 = "<<FILES:%d   INJECT:%d>>" ascii //weight: 10
        $x_1_2 = "INJECT OK   %s" ascii //weight: 1
        $x_1_3 = "INJECT FAIL %s" ascii //weight: 1
        $x_1_4 = "c:\\windows\\debug" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_GMS_2147810961_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.GMS!MTB"
        threat_id = "2147810961"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "13"
        strings_accuracy = "High"
    strings:
        $x_10_1 = {52 31 db 2b 1f f7 db 83 c7 04 f7 db 83 eb 26 83 eb 02 83 c3 01 29 cb 53 59 6a 00 8f 02 01 1a 83 c2 04 83 ee 04 83 fe 00 75 d7}  //weight: 10, accuracy: High
        $x_1_2 = "aeddsapi.dll" ascii //weight: 1
        $x_1_3 = "ekjiklomjhnbgtyvfdercvbxsqa" ascii //weight: 1
        $x_1_4 = "akimdhczkty" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_Y_2147811526_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.Y"
        threat_id = "2147811526"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "101"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {f1 d5 00 fa 4c 62 cc f4 0f 0b}  //weight: 1, accuracy: High
        $x_100_2 = {76 2d 8b 55 08 0f b6 14 11 33 c2 8b d0 83 e2 0f c1 e8 04 33 04 ?? ?? ?? ?? ?? 8b d0 83 e2 0f c1 e8 04 33 04 ?? ?? ?? ?? ?? 41 3b 4d 0c 72 d3 f7 d0 5d c3}  //weight: 100, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_RD_2147839498_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.RD!MTB"
        threat_id = "2147839498"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {2b 07 f7 d8 83 ef fc f7 d8 83 e8 29 83 e8 02 83 e8 ff 29 d0 50 5a 6a 00 8f 03 01 03 83 c3 04 83 ee fc 8d 05 f0 15 41 00 2d 65 98 00 00 ff e0}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_RF_2147839983_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.RF!MTB"
        threat_id = "2147839983"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {8a 85 fb fb ff ff 24 c0 0a c8 8a c2 c0 e0 06 80 e2 fc 88 85 fb fb ff ff 0a e8 8b 85 ec fb ff ff c0 e2 04 0a d3 88 0c 06 88 54 06 01 83 c6 02 88 2c 06}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_RG_2147839984_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.RG!MTB"
        threat_id = "2147839984"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {0f b6 45 ab c1 e0 04 88 45 ab 0f b6 4d ab 81 e1 c0 00 00 00 88 4d ab 0f b6 55 a8 0f b6 45 ab 0b d0 88 55 a8 8a 4d a7 88 4d ab 0f b6 55 ab c1 e2 06 88 55 ab}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_MA_2147840368_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.MA!MTB"
        threat_id = "2147840368"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "17"
        strings_accuracy = "High"
    strings:
        $x_5_1 = "plkdekjynhadefrderatafrhnamkiopl" ascii //weight: 5
        $x_5_2 = {61 66 64 65 72 74 61 79 75 6e 6d 62 67 64 65 72 74 67 66 00 61 63 6c 65 64 69 74 2e 64 6c 6c}  //weight: 5, accuracy: High
        $x_5_3 = "yuommyiefpaeowbgn" ascii //weight: 5
        $x_2_4 = {8b 08 83 e8 fc f7 d9 83 e9 29 83 c1 fe 8d 49 01 29 d1 31 d2 4a 21 ca c7 47 00 00 00 00 00 31 0f 83 c7 04 83 ee 04 83 fe 00 75}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_CP_2147840464_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.CP!MTB"
        threat_id = "2147840464"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {29 c0 48 23 02 83 ?? ?? f7 d8 83 ?? ?? 8d 40 fe 83 ?? ?? 29 f8 ?? ?? 5f 21 c7 c7 ?? ?? ?? ?? ?? ?? 31 01 83 ?? ?? 83 ?? ?? 8d ?? ?? ?? ?? ?? 2d ?? ?? ?? ?? ff}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_CA_2147840573_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.CA!MTB"
        threat_id = "2147840573"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {8b 07 f8 83 d7 ?? f7 d8 83 ?? ?? f8 83 ?? ?? 29 c8 6a ?? 59 21 c1 89 02 83 ?? ?? f8 83 ?? ?? 85 f6 75}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_MK_2147840676_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.MK!MTB"
        threat_id = "2147840676"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b d6 d3 ea 03 d5 89 54 24 ?? 8b 44 24 ?? 31 44 24 ?? 8b 44 24 ?? 31 44 24 ?? 8b 44 24 ?? 89 44 24 ?? 8b 44 24 ?? 29 44 24 ?? 8b 44 24 ?? 89 44 24 ?? 8d 44 24 ?? e8 ?? ?? ?? ?? 83 ef ?? 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_CPW_2147843552_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.CPW!MTB"
        threat_id = "2147843552"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {8b 44 24 28 89 44 24 20 8b 44 24 14 01 44 24 20 8b 4c 24 1c d3 ea 8b 4c 24 38 8d 44 24 24 c7 [0-10] 89 54 24 24 e8 ?? ?? ?? ?? 8b 44 24 20 31 44 24 10 8b 74 24 24 33 74 24 10 81 [0-10] 75}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_MKU_2147890113_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.MKU!MTB"
        threat_id = "2147890113"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8d 34 29 c1 e9 05 89 44 24 14 8b d9 83 fa 1b 75 ?? ff 15 ?? ?? ?? ?? 8b 44 24 14 03 5c 24 20 c7 05 ?? ?? ?? ?? 00 00 00 00 33 de 33 d8 2b fb 8b d7 c1 e2 04 89 54 24 14 8b 44 24 28 01 44 24 14 81 3d ?? ?? ?? ?? be 01 00 00 8d 1c 2f 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_TOD_2147890477_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.TOD!MTB"
        threat_id = "2147890477"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b f5 03 dd c1 ee 05 89 44 24 14 83 f9 1b 75 ?? ff 15 ?? ?? ?? ?? 8b 44 24 14 03 74 24 20 c7 05 ?? ?? ?? ?? 00 00 00 00 33 f3 33 f0 2b fe 8b d7 c1 e2 04 89 54 24 14 8b 44 24 28 01 44 24 14 8b 5c 24 18 8b 0d 04 c8 2d 02 03 df 81 f9 be 01 00 00 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_WMK_2147892354_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.WMK!MTB"
        threat_id = "2147892354"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {c1 e0 04 89 45 fc 8b 45 dc 01 45 fc 8b 45 f4 8b 4d f8 8d 14 03 d3 e8 03 45 ?? 33 c2 31 45 fc 8b 45 fc 29 45 f0 81 c3 47 86 c8 61 ff 4d e4 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_DMK_2147892757_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.DMK!MTB"
        threat_id = "2147892757"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b c2 d3 e8 03 fa 03 45 d4 33 c7 31 45 fc ff 75 fc 8b c3 e8 ?? ?? ?? ?? 8b d8 8d 45 f0 e8 ?? ?? ?? ?? ff 4d e8 0f 85 ?? ?? ?? ?? 81 3d ?? ?? ?? ?? 6d 0a 00 00 8b 7d 08 89 1f 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_DMJ_2147892831_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.DMJ!MTB"
        threat_id = "2147892831"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b ce c1 e9 05 03 cd 33 cf 31 4c 24 14 c7 05 ?? ?? ?? ?? 19 36 6b ff c7 05 ?? ?? ?? ?? ff ff ff ff 8b 44 24 14 29 44 24 18 8d 44 24 1c e8 ?? ?? ?? ?? 4b 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_LAK_2147893743_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.LAK!MTB"
        threat_id = "2147893743"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b d0 8b c8 c1 ea 05 03 54 24 2c c1 e1 04 03 4c 24 24 03 c3 33 d1 33 d0 2b fa 8b cf c1 e1 04 c7 05 ?? ?? ?? ?? 00 00 00 00 89 4c 24 10 8b 44 24 28 01 44 24 10 81 3d ?? ?? ?? ?? be 01 00 00 8d 2c 3b 75}  //weight: 1, accuracy: Low
        $x_1_2 = {33 f5 31 74 24 10 8b 44 24 10 29 44 24 14 a1 78 eb 7a 00 3d 93 00 00 00 74 ?? 81 c3 47 86 c8 61 ff 4c 24 1c 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_RAV_2147893829_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.RAV!MTB"
        threat_id = "2147893829"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {c1 e0 04 89 45 fc 8b 45 e0 01 45 fc 8b 55 f4 8b 4d f8 8b c2 d3 e8 8d 3c 13 81 c3 ?? ?? ?? ?? 03 45 e4 33 c7 31 45 fc 8b 45 fc 29 45 ec ff 4d e8 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_KIJ_2147893891_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.KIJ!MTB"
        threat_id = "2147893891"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b d0 8b c8 c1 ea 05 03 54 24 34 c1 e1 04 03 4c 24 24 03 c3 33 d1 33 d0 2b fa 8b cf c1 e1 04 c7 05 ?? ?? ?? ?? 00 00 00 00 89 4c 24 10 8b 44 24 28 01 44 24 10 81 3d ?? ?? ?? ?? be 01 00 00 8d 2c 3b 75}  //weight: 1, accuracy: Low
        $x_1_2 = {33 f5 31 74 24 10 8b 44 24 10 29 44 24 14 a1 94 eb 7a 00 3d 93 00 00 00 74 ?? 81 c3 47 86 c8 61}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_YTA_2147895908_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.YTA!MTB"
        threat_id = "2147895908"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {03 c8 89 4d e8 8b 4d ec d3 e8 c7 05 ?? ?? ?? ?? ee 3d ea f4 03 c3 8b c8 8b 45 e8 31 45 fc 33 4d fc 81 3d ?? ?? ?? ?? 13 02 00 00 89 4d e8 75}  //weight: 1, accuracy: Low
        $x_1_2 = {8d 14 01 8b 4d ec d3 e8 03 c7 33 c2 31 45 ?? 8b 45 fc 29 45 f4 8b 45 d8 29 45 f8 ff 4d e4 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_RPY_2147897308_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.RPY!MTB"
        threat_id = "2147897308"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {01 45 fc 8b 55 f8 8b 4d f4 8d 04 17 31 45 fc 8b fa d3 ef 03 7d dc}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_YAA_2147914063_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.YAA!MTB"
        threat_id = "2147914063"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b 4d 7c 8b 45 ?? 33 c6 2b d8 89 9d c4 fd ff ff}  //weight: 1, accuracy: Low
        $x_1_2 = {89 79 04 5f 5e 89 19 5b}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_AXA_2147915525_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.AXA!MTB"
        threat_id = "2147915525"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {33 f6 3b fb 7e ?? 8d 4d fc 89 5d fc e8 ?? ?? ?? ?? 8b 45 08 8a 4d fc 03 c6 30 08 83 ff 0f 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_TTW_2147916526_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.TTW!MTB"
        threat_id = "2147916526"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {c1 e8 05 89 45 74 8b 45 74 03 85 14 ff ff ff 8b 95 38 ff ff ff 03 d6 33 c2 33 c1 2b f8 83 3d ?? ?? ?? ?? 0c c7 05 ?? ?? ?? ?? ee 3d ea f4 89 45 74 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_EEZ_2147917699_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.EEZ!MTB"
        threat_id = "2147917699"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {56 8d 75 f8 89 7d f8 e8 ?? ?? ?? ?? 8b 4d fc 8b 45 08 8b 75 0c 03 c1 8a 4d f8 30 08 83 fe 0f 75}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_JJK_2147920519_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.JJK!MTB"
        threat_id = "2147920519"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {03 d0 8b 44 24 14 c1 e8 05 89 44 24 10 8b 44 24 10 03 44 24 34 33 ca 33 c1 81 3d ?? ?? ?? ?? 13 02 00 00 c7 05 ?? ?? ?? ?? ee 3d ea f4 89 44 24 10 0f 85}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tofsee_KAB_2147921674_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tofsee.KAB!MTB"
        threat_id = "2147921674"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tofsee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b 08 83 e8 ?? f7 d9 83 e9 29 83 c1 ?? 8d 49 ?? 29 d1 31 d2 4a 21 ca c7 47 ?? ?? ?? ?? ?? 31 0f 83 c7 04 83 ee 04 83 fe 00}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

