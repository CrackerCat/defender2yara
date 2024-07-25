rule Trojan_Win32_Crypt_CJ_2147812210_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Crypt.CJ!MTB"
        threat_id = "2147812210"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Crypt"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {02 c2 30 01 85 d2 74 0f 01 75 ?? 41 4a 8d 81 [0-4] 3b c7 7c e6}  //weight: 1, accuracy: Low
        $x_1_2 = {8b 75 ec 02 45 f4 30 04 32 8b 75 fc 85 c9 75 32}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Crypt_CK_2147812211_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Crypt.CK!MTB"
        threat_id = "2147812211"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Crypt"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {8b 07 35 84 98 c6 f0 33 06 2b c3 2d 0a bc 51 4e 89 02 83 c6 04 41 8b c1 2b 45 18 0f 85}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

