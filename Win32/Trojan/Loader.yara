rule Trojan_Win32_Loader_ZZ_2147778496_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Loader.ZZ"
        threat_id = "2147778496"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Loader"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {50 8b 55 fc 68 20 30 2d 6d 8f 45 f4 68 61 57 7a 74 8f 45 f0 8d 82 ?? ?? ?? ?? ff d0 54 ff d0 8b d8 8b 55 fc 68 20 30 2d 6d 8f 45 f4 68 65 1d 22 74 8f 45 f0 8d 82 ?? ?? ?? ?? ff d0 54 53 ff d0 85 c0 75 fc 58 48 75 b8}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Loader_ZY_2147778497_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Loader.ZY"
        threat_id = "2147778497"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Loader"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8d 45 fc 50 68 40 00 00 00 68 ?? 0a 00 00 68 ?? ?? ?? ?? 68 ff ff ff ff ff 15}  //weight: 1, accuracy: Low
        $x_1_2 = {0a 00 00 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? b8 ?? ?? ?? ?? ff d0}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

