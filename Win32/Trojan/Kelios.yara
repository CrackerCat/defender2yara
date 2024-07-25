rule Trojan_Win32_Kelios_GZZ_2147906982_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Kelios.GZZ!MTB"
        threat_id = "2147906982"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Kelios"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {32 da 66 0f ba e0 14 66 81 fd d7 7a 88 0c 14 66 ff c8 8b 44 25 00}  //weight: 5, accuracy: High
        $x_5_2 = {80 f1 91 fe c9 f5 d0 c9 32 d9 66 89 14 0c}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Kelios_GZX_2147907199_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Kelios.GZX!MTB"
        threat_id = "2147907199"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Kelios"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {89 40 9c 6c 1c b6 34 f6 bc ?? ?? ?? ?? 5c 70 ea 31 06 64 e5 a5 56}  //weight: 5, accuracy: Low
        $x_5_2 = {33 d4 66 2b d5 0f b7 d1 0f b6 16 66 a9 9a 2e 66 85 ce 8d b6 01 00 00 00 32 d3}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

