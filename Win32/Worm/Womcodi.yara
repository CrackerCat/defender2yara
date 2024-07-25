rule Worm_Win32_Womcodi_A_2147637631_0
{
    meta:
        author = "defender2yara"
        detection_name = "Worm:Win32/Womcodi.A"
        threat_id = "2147637631"
        type = "Worm"
        platform = "Win32: Windows 32-bit platform"
        family = "Womcodi"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {f5 5c 00 00 00 0b 13 00 04 00 23 ?? ?? 2a 23 ?? ?? f5 4c 00 00 00 0b 13 00 04 00 23 ?? ?? 2a 23 ?? ?? f5 69 00 00 00 0b 13 00 04 00 23 ?? ?? 2a 46 ?? ?? f5 6d 00 00 00 04 ?? ?? 0a ?? ?? ?? ?? 04 ?? ?? fb ?? ?? ?? f5 65 00 00 00 04 ?? ?? 0a ?? ?? ?? ?? 04 ?? ?? fb ?? ?? ?? f5 57 00 00 00}  //weight: 1, accuracy: Low
        $x_1_2 = {f5 65 00 00 00 04 ?? ?? 0a 09 00 08 00 04 ?? ?? f5 4d 00 00 00 04 ?? ?? 0a 09 00 08 00 04 ?? ?? fb ef ?? ?? f5 75 00 00 00 0b ?? ?? ?? ?? 46 ?? ?? fb ef ?? ?? f5 6c 00 00 00 0b ?? ?? ?? ?? 46 ?? ?? fb ef ?? ?? f5 65 00 00 00}  //weight: 1, accuracy: Low
        $x_1_3 = {f5 68 00 00 00 0b ?? ?? ?? ?? 46 ?? ?? f5 74 00 00 00 04 ?? ?? 0a ?? ?? ?? ?? 04 ?? ?? fb ?? ?? ?? f5 74 00 00 00 0b ?? ?? ?? ?? 46 ?? ?? fb ?? ?? ?? f5 70 00 00 00 04 ?? ?? 0a ?? ?? ?? ?? 04 ?? ?? fb ?? ?? ?? f5 3a 00 00 00 04 ?? ?? 0a ?? ?? ?? ?? 04 ?? ?? fb ?? ?? ?? f5 2f 00 00 00 0b ?? ?? ?? ?? 46 ?? ?? fb ?? ?? ?? f5 2f 00 00 00}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (2 of ($x*))
}

