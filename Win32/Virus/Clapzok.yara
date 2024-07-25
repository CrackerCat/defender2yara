rule Virus_Win32_Clapzok_A_2147681705_0
{
    meta:
        author = "defender2yara"
        detection_name = "Virus:Win32/Clapzok.A"
        threat_id = "2147681705"
        type = "Virus"
        platform = "Win32: Windows 32-bit platform"
        family = "Clapzok"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {b0 2e ab e8 7c 01 00 00 ff 55 bd 72 32 e8 61 00 00 00 e8 1c 01 00 00 8d 7d a5 ff 55 d9 8b 45 b5 85 c0 75 1b 39 45 a5 74 16 8b 5d a9 e8 39 00 00 00 8b 5d ad e8 31 00 00 00 8b 5d a5 ff 55 dd}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

