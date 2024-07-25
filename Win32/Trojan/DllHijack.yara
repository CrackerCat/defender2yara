rule Trojan_Win32_DllHijack_DA_2147901326_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/DllHijack.DA!MTB"
        threat_id = "2147901326"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "DllHijack"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {0f b7 84 14 ?? ?? ?? ?? 33 d9 09 94 04 ?? ?? ?? ?? 13 f9 33 94 44 ?? ?? ?? ?? 0f be 0c 14 0b 54 95 ?? 0f c9 36 66 8b 84 82 ?? ?? ?? ?? 8d ac 4d ?? ?? ?? ?? 2b c9 81 d9 ?? ?? ?? ?? 66 89 44 25}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_DllHijack_DB_2147901327_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/DllHijack.DB!MTB"
        threat_id = "2147901327"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "DllHijack"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {f6 d0 f7 d8 d3 ea 89 56 ?? 8b d0 c0 e8 ?? 0f b7 0f 66 c1 c0 ?? 05 ?? ?? ?? ?? 58 66 33 cb 66 ff c1 0f b7 c2}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_DllHijack_CCIF_2147909906_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/DllHijack.CCIF!MTB"
        threat_id = "2147909906"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "DllHijack"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8a 14 31 47 32 d0 8b c1 88 14 31 99 f7 fb 85 d2 75 ?? 33 ff 8b 44 24 ?? 41 3b c8 7c}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_DllHijack_YAB_2147911997_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/DllHijack.YAB!MTB"
        threat_id = "2147911997"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "DllHijack"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "12"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {c7 44 24 04 73 b0 f0 3c e8 c7 9f 00 00 89 34 24 c7 44 24 04 34 6d 62 47 a3 ?? ?? ?? ?? e8 b2 9f 00 00 89 34 24 c7 44 24 04 c7 7b 3a a4}  //weight: 1, accuracy: Low
        $x_1_2 = "Direct3DCreate8" ascii //weight: 1
        $x_10_3 = {8d 44 7d 00 03 42 24 0f b7 00 8d 44 85 00 03 42 1c 03 28 83 c4 08}  //weight: 10, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

