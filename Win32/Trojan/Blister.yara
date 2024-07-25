rule Trojan_Win32_Blister_A_2147815252_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Blister.A"
        threat_id = "2147815252"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Blister"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "16"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {64 a1 30 00 00 00 53 57 89 75 ?? 8b 40 0c 8b 40 1c}  //weight: 4, accuracy: Low
        $x_4_2 = {8b 48 20 8b 50 1c 03 cb 8b 78 24 03 d3 8b 40 18 03 fb}  //weight: 4, accuracy: High
        $x_4_3 = {c1 c2 09 0f be c0 03 d0 41 8a 01 84 c0}  //weight: 4, accuracy: High
        $x_4_4 = {8b c6 83 e0 03 8a 44 05 ?? 30 04 ?? 46 81 fe}  //weight: 4, accuracy: Low
        $x_4_5 = {50 6a ff ff d7 8d 45 ?? 50 8d 83 ?? ?? ?? ?? ff d0}  //weight: 4, accuracy: Low
    condition:
        (filesize < 20MB) and
        (4 of ($x*))
}

