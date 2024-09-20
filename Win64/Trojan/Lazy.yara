rule Trojan_Win64_Lazy_MA_2147838780_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.MA!MTB"
        threat_id = "2147838780"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "22"
        strings_accuracy = "High"
    strings:
        $x_10_1 = {e9 80 00 00 00 4d 8b cb eb 02 25 ed 4c 3b db eb 03 3d 0e c3 4c 0f 47 cb eb 03 68 cd 6a 4d 2b d9 eb 02 c0 5b e9 9b 00 00 00 eb 02}  //weight: 10, accuracy: High
        $x_10_2 = {4d 5a b1 4a 92 35 da 32 ad b4 4c d2 d9 6e c6 3b e6 5b 19 27 36 d2 a1 85 ae b5 1d 64 f5 36 b9 4d e3 3a 14 3f 1b 6b ad 6a 5f 9c 8c 49 8b e2 0e ee}  //weight: 10, accuracy: High
        $x_2_3 = "SHGetDiskFreeSpaceA" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_MA_2147838780_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.MA!MTB"
        threat_id = "2147838780"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "26"
        strings_accuracy = "High"
    strings:
        $x_10_1 = {e9 3d 03 00 00 5b eb 01 45 41 5f eb 01 69 41 5e eb 01 22 41 5d eb 02 19 5a 41 5c eb 03 a0 a0 fd 5e eb 03 0d 23 a5 5f eb 02 65 72 fe 05 3b 04 00 00 eb 03}  //weight: 10, accuracy: High
        $x_10_2 = {4d 5a ef 08 d9 94 7f b3 d9 3f 5f 6b 4a c6 e4 9f 35 8d 93 55 01 79 cd 41 e5 00 6e 53 a5 81 2d c3 67 60 90 8c 0a ab 9e d5 45 70 69 b0 ab bf 5f 3a}  //weight: 10, accuracy: High
        $x_2_3 = "PathMakeUniqueName" ascii //weight: 2
        $x_2_4 = "RegOpenKeyExW" ascii //weight: 2
        $x_2_5 = "WaitMessage" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_MB_2147840367_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.MB!MTB"
        threat_id = "2147840367"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "12"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {5b eb 01 23 41 5f eb 01 25 41 5e eb 02 15 d7 41 5d eb 03 1d 24 cb 41 5c eb 02 be 72 5e eb 03 05 58 f3 5f eb 01 43 fe 05 3b 04 00 00 eb 03 bf f9 11 e9 b3 01 00 00 eb 03 25 87 c2 4d 8b}  //weight: 5, accuracy: High
        $x_5_2 = {4d 5a ef 08 d9 94 7f b3 d9 3f 5f 6b 4a c6 e4 9f 35 8d 93 55 01 79 cd 41 e5 00 6e 53 a5 81 2d c3 67 60 90 8c 0a ab 9e d5 45 70 69 b0 ab bf 5f 3a}  //weight: 5, accuracy: High
        $x_2_3 = "RegisterEventSourceA" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_SPRP_2147843102_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.SPRP!MTB"
        threat_id = "2147843102"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {48 83 ec 20 44 8b f9 4c 8d 35 2e f0 fd ff 48 83 cf ff 4d 8b e1 49 8b e8 4c 8b ea 4f 8b 94 fe 50 da 08 00 90 4c 8b 1d 31 70 02 00 4d 33 d3 41 8b cb 83 e1 3f 49 d3 ca 4c 3b d7 0f 84}  //weight: 4, accuracy: High
        $x_3_2 = {49 8d 4e 30 45 33 c0 ba a0 0f 00 00 e8 ?? ?? ?? ?? 48 8b 05 ?? ?? ?? ?? 4c 8d 05 ?? ?? ?? ?? 48 8b d5 48 c1 fa 06 4c 89 34 03 48 8b c5 83 e0 3f 48 8d 0c c0 49 8b 04 d0 48 8b 4c c8 28 48 83 c1 02 48 83 f9 02 77 06}  //weight: 3, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_CAZ_2147843716_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.CAZ!MTB"
        threat_id = "2147843716"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {48 8b 44 24 18 48 63 4c 24 14 0f be 14 08 48 8b 44 24 28 44 8b 44 24 14 48 89 44 24 08 44 89 c0 89 54 24 04 99 41 b8 ?? ?? ?? ?? 41 f7 f8 48 63 ca 8b 54 24 04 4c 8b 4c 24 08 41 33 14 89 41 88 d2 48 8b 4c 24 18 4c 63 5c 24 14 46 88 14 19 8b 44 24 14 83 c0 ?? 89 44 24 14 e9}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_EM_2147847283_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.EM!MTB"
        threat_id = "2147847283"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {47 1d c1 01 48 83 ec 10 48 31 14 24 48 31 d0 83 44 24 08 28}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_EM_2147847283_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.EM!MTB"
        threat_id = "2147847283"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {48 0f b6 01 80 c0 0e 48 83 c1 01 48 33 d2 4c 0f b6 c0 41 83 e8 01 89 d0 41 3b c0 7f 13 41 83 c0 01 48 63 d0 80 04 11 0d 83 c0 01 41 3b c0 75 f1}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_EM_2147847283_2
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.EM!MTB"
        threat_id = "2147847283"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "Opoafioaeoaigduighadu" ascii //weight: 1
        $x_1_2 = "Ras9ifuoaoifgajdgdi" ascii //weight: 1
        $x_1_3 = "timeGetTime" ascii //weight: 1
        $x_1_4 = "iovsoigioseiogisdj" ascii //weight: 1
        $x_1_5 = "Caoafoawfoiawjgidaj" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_BY_2147847376_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.BY!MTB"
        threat_id = "2147847376"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "ADSisgfioseijgesg" ascii //weight: 1
        $x_1_2 = "IOhjoisadjgfisdjgesig" ascii //weight: 1
        $x_1_3 = "KOiosaediogseiojgsd" ascii //weight: 1
        $x_1_4 = "Moipdeasiogsaedijgsd" ascii //weight: 1
        $x_1_5 = "Cioajsefoieafijae" ascii //weight: 1
        $x_1_6 = "HNafiajfdiaewifjaeji" ascii //weight: 1
        $x_1_7 = "Ijisajfgiesjfijasedfd" ascii //weight: 1
        $x_1_8 = "Noiaifoajifsaijdfds" ascii //weight: 1
        $x_2_9 = "WaitForSingleObject" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (
            ((6 of ($x_1_*))) or
            ((1 of ($x_2_*) and 4 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win64_Lazy_BV_2147848229_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.BV!MTB"
        threat_id = "2147848229"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {8b 44 24 20 ff c0 89 44 24 20 8b 44 24 48 39 44 24 20 7d 20 48 63 44 24 20 48 8b 4c 24 40 0f be 04 01 83 f0 31 48 63 4c 24 20 48 8b 54 24 28 88 04 0a eb}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_RDD_2147848274_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.RDD!MTB"
        threat_id = "2147848274"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "Eriosagfoiasdgasdioh" ascii //weight: 1
        $x_1_2 = "Vaiofaeioufaeughuad" ascii //weight: 1
        $x_1_3 = "timeGetTime" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_ABYV_2147848401_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.ABYV!MTB"
        threat_id = "2147848401"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "Fjiocoivjsfiiqwi" ascii //weight: 2
        $x_2_2 = "Roiaifaejf89ajdigsdcj" ascii //weight: 2
        $x_2_3 = "timeGetTime" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_ABAS_2147850012_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.ABAS!MTB"
        threat_id = "2147850012"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_10_1 = {f3 0f 7f 45 97 48 89 4d 2f c7 45 a7 c0 cf 86 c9 c7 45 ab c4 c1 c0 cd c7 45 af c0 c2 d5 00 c6 45 b3 01 0f 1f 40 00 66 66 0f 1f 84 00 00 00 00 00 8d 41 97 30 44 0d 97 48 ff c1 48 83 f9 1b 72 f0}  //weight: 10, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_AMAB_2147853391_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.AMAB!MTB"
        threat_id = "2147853391"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "C:\\Windows\\System32\\opencv_world470.dll" ascii //weight: 1
        $x_1_2 = "C:\\Windows\\System32\\ds5w_x64.dll" ascii //weight: 1
        $x_1_3 = "cdn.axion.systems/diablo/cf4463f8-6db9-4a8b-9925-16a99a1bdec2.exe" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_GMQ_2147892540_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.GMQ!MTB"
        threat_id = "2147892540"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_10_1 = {48 8b f8 48 89 5d 20 48 89 75 28 48 b8 a9 8e ed 20 d1 e2 39 fe 48 89 45 10 48 89 75 18 66 0f 6f 45 10 66 0f ef 45 20 66 0f 7f 45 10 45 33 f6 4c 89 75 b0 48 c7 45 b8 0f 00 00 00 44 88 75 a0}  //weight: 10, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_GMP_2147892746_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.GMP!MTB"
        threat_id = "2147892746"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_10_1 = {48 89 4c 24 68 48 b8 4d f0 90 8a 5b 81 b8 04 48 89 44 24 40 48 89 4c 24 48 66 0f 6f 44 24 40 66 0f ef 44 24 60 66 0f 7f 44 24 40 48 8d 44 24 40 4c 8b c3 0f 1f 44 00 00 49 ff c0 42 80 3c 00 00}  //weight: 10, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_ARA_2147892878_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.ARA!MTB"
        threat_id = "2147892878"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {89 c3 80 e3 ?? 80 cb ?? 24 ?? 30 d8 34 ?? 88 05}  //weight: 2, accuracy: Low
        $x_2_2 = {89 c2 80 e2 ?? 80 ca ?? 24 ?? 30 d0 34 ?? 88 05}  //weight: 2, accuracy: Low
        $x_3_3 = "test123123123123" ascii //weight: 3
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_3_*) and 1 of ($x_2_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win64_Lazy_ARA_2147892878_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.ARA!MTB"
        threat_id = "2147892878"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "\\PPLKiller.pdb" ascii //weight: 2
        $x_2_2 = "\\Temp\\RTCore64.sys" ascii //weight: 2
        $x_2_3 = "disablePPL" ascii //weight: 2
        $x_2_4 = "disableLSAProtection" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (3 of ($x*))
}

rule Trojan_Win64_Lazy_GNT_2147895097_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.GNT!MTB"
        threat_id = "2147895097"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {8d 56 6c 48 8b 4d 28 66 0f 7f 45 40 48 89 45 38 4c 89 75 50 ff 15 ?? ?? ?? ?? 48 8d 4d 10 48 89 45 58 ff 15 ?? ?? ?? ?? 48 89 74 24 58 4c 8d 05 ?? ?? ?? ?? 48 89 5c 24 50 41 b9 ?? ?? ?? ?? 48 89 74 24 48 49 8b d6 48 89 74 24 40 33 c9 89 74 24}  //weight: 10, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_NLS_2147895470_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.NLS!MTB"
        threat_id = "2147895470"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {eb 05 48 ff c9 75 be 48 83 ec 28 48 8d be ?? ?? ?? ?? 8b 07 09 c0 74 4a 8b 5f 04 48 8d 8c 30 ?? ?? ?? ?? 48 01 f3 48 83 c7 08 ff 96 0c d2 00 00 48 95 8a 07 48 ff c7 08 c0 74 d7}  //weight: 5, accuracy: Low
        $x_1_2 = "WowOpO.TXT" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_AX_2147896932_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.AX!MTB"
        threat_id = "2147896932"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {45 33 c9 44 0f b7 84 24 10 02 00 00 48 8b 94 24 08 02 00 00 48 8b 8c 24 c8 00 00 00 ff 15 ?? ?? ?? ?? 48 89 84 24 d0 00 00 00 48 83 bc 24 d0 00 00 00 00 75}  //weight: 1, accuracy: Low
        $x_1_2 = "payload.bin" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_ALZ_2147897081_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.ALZ!MTB"
        threat_id = "2147897081"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {48 83 ec 28 48 8d 0d f5 e2 00 00 31 d2 ff 15}  //weight: 1, accuracy: High
        $x_1_2 = {48 8d 0d c6 e2 00 00 31 d2 ff 15 be df 00 00}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_NLA_2147897388_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.NLA!MTB"
        threat_id = "2147897388"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {48 8d 0d 75 31 1e 00 48 8b 01 48 05 ?? ?? ?? ?? 48 89 41 10 48 89 41 ?? e8 7f 43 00 00 48 8d 3d ?? ?? ?? ?? e8 f3 41 00 00 48 8b 1d 24 66 23 00}  //weight: 5, accuracy: Low
        $x_1_2 = "NZRB.x" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_NLA_2147897388_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.NLA!MTB"
        threat_id = "2147897388"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {41 8d 50 02 33 c9 48 8b 03 ff 15 ?? ?? ?? ?? e8 13 07 00 00 48 8b d8 48 83 38 00 74 14}  //weight: 5, accuracy: Low
        $x_5_2 = {48 8d 4c 24 20 e8 1e e6 ff ff 48 8d 15 5f 9a 04 00 48 8d 4c 24 ?? e8 dd 1e 00 00 cc 33 c0}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_NL_2147899138_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.NL!MTB"
        threat_id = "2147899138"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {48 85 ff 48 0f 44 f8 33 c0 48 83 ff e0 77 18 48 8b 0d ?? ?? ?? ?? 8d 50 08 4c 8b c7}  //weight: 2, accuracy: Low
        $x_2_2 = {75 b7 48 8b 1d ?? ?? ?? ?? 48 8b cb e8 c8 17 ff ff 48 83 25 9c 9e 0e 00 00 48 83 27 ?? c7 05 8a c6 0e 00 01 00 00 00 33 c0}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_NL_2147899138_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.NL!MTB"
        threat_id = "2147899138"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "ConsoleApplication2.pdb" ascii //weight: 1
        $x_1_2 = "download/football.txt" ascii //weight: 1
        $x_1_3 = "mysuperstackoverflow" ascii //weight: 1
        $x_1_4 = "156.245.19.127" ascii //weight: 1
        $x_1_5 = "InternetReadFile" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_NL_2147899138_2
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.NL!MTB"
        threat_id = "2147899138"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "Killing self" ascii //weight: 1
        $x_1_2 = "Restarting self" ascii //weight: 1
        $x_1_3 = "CMD session closed" ascii //weight: 1
        $x_1_4 = "C:\\Users\\localadmin\\Downloads\\Lilith-master\\Lilith-master\\x64\\Release\\Lilith.pdb" ascii //weight: 1
        $x_1_5 = "CMD session opened" ascii //weight: 1
        $x_1_6 = "Xe#vLLD PDB" ascii //weight: 1
        $x_1_7 = "lilithRELEASE.exe" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_RA_2147900176_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.RA!MTB"
        threat_id = "2147900176"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_5_1 = "bardg\\Documents\\diablo\\client\\bin\\x64\\Release\\client.pdb" ascii //weight: 5
        $x_1_2 = "a={|vwjdd(fmkm{{izq(egl" ascii //weight: 1
        $x_1_3 = "ajTSYRJNanDNI.JGOLBA" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_RB_2147900681_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.RB!MTB"
        threat_id = "2147900681"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "GOfKoBH.(*X_Exr0VpkD).pxroc1" ascii //weight: 1
        $x_1_2 = {1b 48 8b 05 50 b4 57 00 49 89 43 08 48 89 1d 45}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_RC_2147900682_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.RC!MTB"
        threat_id = "2147900682"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {e2 99 ea f4 6e c4 16 cf f3 6b e8 b5 97 f8 0e 21}  //weight: 1, accuracy: High
        $x_1_2 = "IooHIsa1BYJ.(*AyxWYUb).IsLoopback" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_RC_2147900682_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.RC!MTB"
        threat_id = "2147900682"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {48 ba 00 10 00 00 00 00 00 00 49 b8 ?? ?? 00 00 00 00 00 00 65 48 8b 04 25 60 00 00 00 48 8b 40 10 48 01 c2 49 01 c0 4c 8b ca 48 31 0a 48 83 c2 08 49 3b d0 72 f4 41 ff e1}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_DAS_2147901192_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.DAS!MTB"
        threat_id = "2147901192"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {80 74 24 27 ?? 34 ?? c6 44 24 20 30 88 44 24 28 48 8d 44 24 20 49 ff c0 42 80 3c 00 00 75}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_NY_2147902078_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.NY!MTB"
        threat_id = "2147902078"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {33 c9 48 03 cf 48 8d 55 e0 41 b8 ?? ?? ?? ?? e8 0d 40 00 00 85 c0 74 14 ff c3 48 63 cb 48 81 f9 00 e0 0e 00}  //weight: 5, accuracy: Low
        $x_1_2 = "StickyNotes" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_ZBA_2147902338_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.ZBA!MTB"
        threat_id = "2147902338"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {41 ff c0 49 63 c8 42 0f b6 04 09 42 88 04 0e 48 8b 44 24 ?? 88 14 01 4c 8b 4c 24 ?? 42 0f b6 0c 0e 48 03 ca 0f b6 c1 42 0f b6 0c 08 41 30 0c 1b 49 ff c3 49 81 fb e7 d6 07 00 72}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_AMMC_2147905230_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.AMMC!MTB"
        threat_id = "2147905230"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "8"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "Stop Trying To Reverse You No Life Faggot!" ascii //weight: 2
        $x_2_2 = "You are running this program already" ascii //weight: 2
        $x_2_3 = "type=checkblacklist" ascii //weight: 2
        $x_2_4 = "xxxx?xxxx????xxx" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_AV_2147905831_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.AV!MTB"
        threat_id = "2147905831"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {0f b6 01 fe c8 88 01 48 ff c1 48 ff ca 75 f1}  //weight: 1, accuracy: High
        $x_1_2 = "SDHEHREJRIET7IJYRIK7Y7I6UKKTHKJHTGKG" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_AE_2147906062_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.AE!MTB"
        threat_id = "2147906062"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {49 8d 04 2c 48 8b 50 08 4c 8b 18 4c 31 ca 4d 31 d3 4c 09 da 0f 85}  //weight: 1, accuracy: High
        $x_1_2 = {4a 00 50 01 4a 00 e8 54 4d 00 28 f8 18 00}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_EE_2147906109_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.EE!MTB"
        threat_id = "2147906109"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "-workspace.pdb" ascii //weight: 1
        $x_1_2 = "start cmd /C \"color b && title Error && echo" ascii //weight: 1
        $x_1_3 = "certutil -hashfile " ascii //weight: 1
        $x_1_4 = "&& timeout /t 5" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_GZY_2147906185_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.GZY!MTB"
        threat_id = "2147906185"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {49 03 c6 4c 89 64 24 ?? 48 89 45 ?? ff 15 ?? ?? ?? ?? 48 8b 4c 24 ?? 48 8d 54 24 ?? ff 15 ?? ?? ?? ?? 48 8b 4c 24 ?? ff 15 ?? ?? ?? ?? 49 8b cd e8}  //weight: 5, accuracy: Low
        $x_5_2 = {44 8b 03 8b 53 f8 4d 03 c5 44 8b ?? fc 49 03 d6 48 8b 4c 24 ?? 4c 89 64 24 ?? ff 15 ?? ?? ?? ?? 0f b7 46 ?? 48 8d 5b ?? ff c7 3b f8}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_GZZ_2147906216_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.GZZ!MTB"
        threat_id = "2147906216"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_10_1 = {41 5f 41 5e 41 5d 41 5c 5f 5e 5d c3 30 40 02 00 91 40 02 00 91 40 02 00 45 40 02 00 45 40 02 00}  //weight: 10, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_CN_2147906367_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.CN!MTB"
        threat_id = "2147906367"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {74 4e 80 35 ?? ?? ?? 00 35 80 35 ?? ?? ?? 00 36 80 35 ?? ?? ?? 00 37 80 35 ?? ?? ?? 00 38 80 35 ?? ?? ?? 00 39 80 35 ?? ?? ?? 00 3a 80 35 ?? ?? ?? 00 3b 80 35 ?? ?? ?? 00 3c 80 35 ?? ?? ?? 00 3d 80 35 ?? ?? ?? 00 3e 34 3f 88 05}  //weight: 5, accuracy: Low
        $x_5_2 = {74 4e 80 35 ?? ?? ?? 00 31 80 35 ?? ?? ?? 00 32 80 35 ?? ?? ?? 00 33 80 35 ?? ?? ?? 00 34 80 35 ?? ?? ?? 00 35 80 35 ?? ?? ?? 00 36 80 35 ?? ?? ?? 00 37 80 35 ?? ?? ?? 00 38 80 35}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (1 of ($x*))
}

rule Trojan_Win64_Lazy_RK_2147906788_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.RK!MTB"
        threat_id = "2147906788"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {33 c9 49 89 43 b8 49 89 4b c0 48 8d 05 ?? ?? ?? ?? 49 89 4b d0 4d 8d 4b b8 49 89 4b d8 48 8b da 49 89 4b e0 44 8d 41 01 49 89 43 c8 89 4c 24 50 49 89 4b f0 48 8b cf}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_RK_2147906788_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.RK!MTB"
        threat_id = "2147906788"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "PenaJ\\Downloads\\Osiris\\output\\build\\osiris.pdb" ascii //weight: 1
        $x_1_2 = "start cmd /C \"color b && title Error && echo" ascii //weight: 1
        $x_1_3 = "certutil -hashfile " ascii //weight: 1
        $x_1_4 = "&& timeout /t 5" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_KAF_2147907243_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.KAF!MTB"
        threat_id = "2147907243"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {0f b7 00 0f b7 8c 24 ?? ?? ?? ?? 33 c1 0f b7 8c 24}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_ACC_2147907647_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.ACC!MTB"
        threat_id = "2147907647"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {f7 e9 03 d1 c1 fa 05 8b c2 c1 e8 ?? 03 d0 0f be c2 6b d0 33 0f b6 c1 ff c1 2a c2 04 36 41 30 40 ff 83 f9 1d 7c}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_AMMH_2147907937_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.AMMH!MTB"
        threat_id = "2147907937"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {66 d3 ea 45 02 c0 80 e2 01 44 0a c2 41 0f b7 d2 66 d3 ea 45 02 c0 0f b7 4d 6f 80 e2 01 44 0a c2 44 88 07 48 ff c7 49 83 e9 01 0f 85}  //weight: 1, accuracy: High
        $x_1_2 = {0f b7 43 0e 48 83 eb 10 66 31 45 ?? 45 3b f7 0f 8e}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_SZ_2147908624_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.SZ!MTB"
        threat_id = "2147908624"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "8"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "Loading Blocker: " ascii //weight: 1
        $x_1_2 = "Close Modern Warfare Before You Load The Driver" ascii //weight: 1
        $x_1_3 = "Loader.pdb" ascii //weight: 1
        $x_1_4 = "taskkill /FI \"IMAGENAME eq dnSpy.exe" ascii //weight: 1
        $x_1_5 = "taskkill /FI \"IMAGENAME eq HTTPDebuggerUI.exe" ascii //weight: 1
        $x_1_6 = "taskkill /FI \"IMAGENAME eq ida.exe" ascii //weight: 1
        $x_1_7 = "URLDownloadToFileA" ascii //weight: 1
        $x_1_8 = "Blocker Injector1" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_RO_2147909169_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.RO!MTB"
        threat_id = "2147909169"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {44 31 f5 41 5e 55 81 34 24 91 87 ff 5d 59 81 f1 91 87 ff 5d 5d 44 01 f1 41 5e 48 81 ec 08 00 00 00 41 56 8f 04 24}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_RS_2147910167_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.RS!MTB"
        threat_id = "2147910167"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {41 8b c4 41 f7 e0 41 8b c0 2b c2 d1 e8 03 c2 c1 e8 05 0f be c0 6b c8 ?? 41 8a c0 2a c1 41 02 c7 41 30 01 44 03 c7 4c 03 cf 41 83 f8 ?? 7c d1}  //weight: 1, accuracy: Low
        $x_1_2 = "khxdled\\santo\\build\\santo.pdb" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_RT_2147910168_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.RT!MTB"
        threat_id = "2147910168"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {41 8b c4 41 f7 e0 c1 ea ?? 0f be c2 6b c8 ?? 41 8a c0 2a c1 41 02 c7 41 30 01 44 03 c7 4c 03 cf 41 83 f8 11 7c da}  //weight: 1, accuracy: Low
        $x_1_2 = "khxdled\\santo\\build\\santo.pdb" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_RU_2147911217_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.RU!MTB"
        threat_id = "2147911217"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {48 0f af f8 49 8b c2 48 f7 e7 48 c1 ea 07 48 69 c2 ?? ?? ?? ?? 48 2b f8 41 8a c8 80 e1 07 c0 e1 03 48 0f be 95 ?? ?? ?? ?? 48 d3 fa 40 32 fa 49 8b c2 49 f7 e1 48 c1 ea 07 48 69 c2 ?? ?? ?? ?? 49 8b c9 48 2b c8 40 32 f9 42 30 bc 05 ?? ?? ?? ?? 4d 03 c3 4c 03 cb}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_RW_2147911806_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.RW!MTB"
        threat_id = "2147911806"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {8a 00 41 b8 81 00 00 00 89 c2 4c 89 c1 41 89 c0 41 80 e0 0f c0 ea 04 45 8d 48 30 45 8d 58 37 41 80 f8 0a 45 0f b6 c1 45 0f b6 cb 45 0f 42 c8 44 88 4c 0c 26}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_RW_2147911806_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.RW!MTB"
        threat_id = "2147911806"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {48 8d 04 b7 48 05 14 01 00 00 48 89 84 24 f0 00 00 00 8b 40 fc 89 84 24 ac 00 00 00 48 6b c6 18 48 8d 14 07 48 83 c2 20 48 89 94 24 f8 00 00 00 48 8b 42 f8 48 8d 8c 24 d0 00 00 00 48 89 41 10}  //weight: 1, accuracy: High
        $x_1_2 = "Lazy instance has previously been poisonedOnce" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_HNC_2147912001_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.HNC!MTB"
        threat_id = "2147912001"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {76 61 64 67 61 65 6c 61 64 69 61 64 64 61 83 a5 a2 a3 a6 55 6d 55 64 67 61 65 6c 61 66 63}  //weight: 1, accuracy: High
        $x_1_2 = {96 62 64 56 54 88 99 a7 a8 7d 78 71 56 56 63 72 41 3e b0 84 00 00 5a 85 00 00 66 64 69 73 6b 2e 65 78 65}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_ZZ_2147912273_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.ZZ!MTB"
        threat_id = "2147912273"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {41 0f b7 0c 11 66 33 cb 66 89 0a 48 8d 52 02 49 83 e8 01 75}  //weight: 1, accuracy: High
        $x_1_2 = "hdfzpysvpzimorhk" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_AMAA_2147912717_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.AMAA!MTB"
        threat_id = "2147912717"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {0f b6 0b 49 8d 14 18 48 83 fa 64 73 ?? 0f b6 c1 80 e9 ?? 34 ?? 0f b6 c9 f6 c2 ?? 0f b6 c0 0f 45 c8 49 8b c1 48 8b d3 88 0c 03 48 ff c3 49 8d 04 18 49 3b c2 72}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_AMAD_2147912887_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.AMAD!MTB"
        threat_id = "2147912887"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {41 0f b6 08 43 8d 14 10 0f b6 c1 4d 8d 40 ?? 34 ?? 80 e9 ?? f6 c2 ?? 0f b6 c0 0f b6 c9 0f 45 c8 4b 8d 04 02 43 88 4c 18 ?? 49 3b c1 72}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_AI_2147913601_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.AI!MTB"
        threat_id = "2147913601"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {69 2b 95 94 e8 07 39 bf 8e bc 44 5a 9d 8d 01 1d 82 5d 41 97 b0 95 b8 50 4e 91 d6 79 5a 95 25 f2 54 9e 08 f9 74 41}  //weight: 2, accuracy: High
        $x_2_2 = {56 bf 7e c6 1d 0f f3 38 02 00 00 80 71 79 82 d1 6f 46 9d 05 79 f1 25 a1 b6 68 11 3e 4e 6e 8d 22}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_GZM_2147915879_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.GZM!MTB"
        threat_id = "2147915879"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {33 d2 c7 45 f0 38 02 00 00 8d 4a 02 ff 15 ?? ?? ?? ?? 48 8b c8 48 8d 55 f0 48 8b d8 ff 15 ?? ?? ?? ?? 83 f8 01 ?? ?? 48 8d 55 f0 48 8b cb ff 15 ?? ?? ?? ?? 83 f8 01 75}  //weight: 5, accuracy: Low
        $x_1_2 = {9b 4e 4b 73 66 cf 4e 72 9b 4e 4a 73 e7 cf 4e 72 9b 4e 4d 73 ed cf 4e 72 eb cf 4e 72 e9 cf 4e 72 ed 4e 4b 73 c3 cf 4e 72 ed 4e 4a 73 fb cf 4e 72}  //weight: 1, accuracy: High
        $x_1_3 = {43 56 45 2d 32 30 32 34 2d 33 30 30 38 38 5c 78 36 34 5c 52 65 6c 65 61 73 65 5c 70 6f 63 2e 70 64 62 00}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_AZL_2147916156_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.AZL!MTB"
        threat_id = "2147916156"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {8b c8 c1 e9 1e 33 c8 69 c9 65 89 07 6c 03 ca 89 4c 95 94 8b c1 48 ff c2 49 3b d0}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_WCD_2147916494_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.WCD!MTB"
        threat_id = "2147916494"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "9"
        strings_accuracy = "High"
    strings:
        $x_5_1 = "Go build ID: \"a2XE2MdOg2bFzkApzkl9/" ascii //weight: 5
        $x_5_2 = "Go build ID: \"4B8-iyNma34aKyyPriEp/" ascii //weight: 5
        $x_1_3 = "DeleteSelf" ascii //weight: 1
        $x_1_4 = "InjectProcessRemote" ascii //weight: 1
        $x_1_5 = "DllInjectSelf" ascii //weight: 1
        $x_1_6 = "Steal_token" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_5_*) and 4 of ($x_1_*))) or
            ((2 of ($x_5_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win64_Lazy_NK_2147916633_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.NK!MTB"
        threat_id = "2147916633"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {43 00 3a 00 5c 00 55 00 73 00 65 00 72 00 73 00 5c 00 [0-48] 5c 00 73 00 72 00 63 00 5c 00 78 00 36 00 34 00 5c 00 52 00 65 00 6c 00 65 00 61 00 73 00 65 00 5c 00 74 00 75 00 6c 00 70 00 69 00 63 00 61 00 6c 00 2e 00 70 00 64 00 62 00}  //weight: 3, accuracy: Low
        $x_3_2 = {43 3a 5c 55 73 65 72 73 5c [0-48] 5c 73 72 63 5c 78 36 34 5c 52 65 6c 65 61 73 65 5c 74 75 6c 70 69 63 61 6c 2e 70 64 62}  //weight: 3, accuracy: Low
        $x_2_3 = "Fontello project" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_3_*) and 1 of ($x_2_*))) or
            ((2 of ($x_3_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win64_Lazy_WC_2147917645_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.WC!MTB"
        threat_id = "2147917645"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "Go build ID:" ascii //weight: 1
        $x_1_2 = "navegador/logger.Configure" ascii //weight: 1
        $x_1_3 = "main.Execute" ascii //weight: 1
        $x_1_4 = "navegador/cmd/navegador" ascii //weight: 1
        $x_1_5 = "navegador/logger.(*Logger).SetVerbose" ascii //weight: 1
        $x_1_6 = "YsImfSBoP9QPYL0xyKJPq0gcaJdG3rInoqxTWbfQu9M=" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_GPB_2147917860_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.GPB!MTB"
        threat_id = "2147917860"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "Software\\Bivaji Coms\\BivaApp" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_GBN_2147919382_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.GBN!MTB"
        threat_id = "2147919382"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {66 f7 df 41 32 f3 41 80 ea 9f 4e 8d 5c 1c 30 4d 8b 54 43 f8}  //weight: 5, accuracy: High
        $x_5_2 = {48 b8 d3 6d 18 e2 b2 55 66 d6 48 89 44 24 40 48 89 4c 24 48 66 0f 6f 44 24 40 66 0f ef 44 24 60 66 0f 7f 44 24 40 48 8d 44 24 40 4c 8b c3 0f 1f 44 00 00 49 ff c0 42 80 3c 00 00 75}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_TZ_2147919801_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.TZ!MTB"
        threat_id = "2147919801"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "12"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "Go build ID:" ascii //weight: 2
        $x_2_2 = "ThunderKitty-Grabber" ascii //weight: 2
        $x_2_3 = "tokengrabber.SetTelegramCredentials" ascii //weight: 2
        $x_2_4 = "tokengrabber.init" ascii //weight: 2
        $x_2_5 = "tokengrabber.SendDMViaAPI" ascii //weight: 2
        $x_1_6 = "tokengrabber.sendMessage" ascii //weight: 1
        $x_1_7 = "defender.Disable" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_CZ_2147919987_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.CZ!MTB"
        threat_id = "2147919987"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "8"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "utils/browsers.History" ascii //weight: 1
        $x_2_2 = "ThunderKitty-Grabber/utils/browsers.Login" ascii //weight: 2
        $x_2_3 = "ThunderKitty-Grabber/utils/tokengrabber.init" ascii //weight: 2
        $x_1_4 = "browsers.dataBlob" ascii //weight: 1
        $x_1_5 = "defender.Disable" ascii //weight: 1
        $x_1_6 = "browsers.CreditCard" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_GXB_2147920185_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.GXB!MTB"
        threat_id = "2147920185"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {66 0f 6e c8 66 0f 73 f9 0e 66 0f eb cb 66 0f db ce 66 0f 6f d6 66 0f df d0 66 0f eb d1 66 0f 6f c2 66 0f fc 05 ?? ?? ?? ?? 66 0f 6f c8 66 0f da 0d ?? ?? ?? ?? 66 0f 74 c8 66 0f db 0d ?? ?? ?? ?? 66 0f eb ca f3 0f 7f 0c 2f 48 8d 45 10 48 83 c5 20 4c 39 e5 48 89 c5 0f 86}  //weight: 10, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_IZ_2147920730_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.IZ!MTB"
        threat_id = "2147920730"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "Go build ID:" ascii //weight: 2
        $x_2_2 = "eO9FjRExQ9G9I3RTzDAEYhuS5KFy5RYudrnCvKSr8Z0=" ascii //weight: 2
        $x_1_3 = "ILa9j1onAAMadBsyyUJv5cack8Y1WT26yLj/V+ulKp8=" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Lazy_ROW_2147921420_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Lazy.ROW!MTB"
        threat_id = "2147921420"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Lazy"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {41 f7 e0 c1 ea 04 0f be c2 6b c8 32 41 8a c0 2a c1 04 32 41 30 01 41 ff c0 49 ff c1 41 83 f8 02 7c d9}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

