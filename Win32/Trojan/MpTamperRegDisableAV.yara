rule Trojan_Win32_MpTamperRegDisableAV_SA_2147817708_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/MpTamperRegDisableAV.SA"
        threat_id = "2147817708"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "MpTamperRegDisableAV"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "201"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = "cmd" wide //weight: 1
        $x_100_2 = {72 00 65 00 67 00 20 00 61 00 64 00 64 00 [0-16] 68 00 6b 00 6c 00 6d 00 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 70 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 64 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 [0-32] 64 00 69 00 73 00 61 00 62 00 6c 00 65 00 61 00 6e 00 74 00 69 00 73 00 70 00 79 00 77 00 61 00 72 00 65 00}  //weight: 100, accuracy: Low
        $x_100_3 = {72 00 65 00 67 00 20 00 61 00 64 00 64 00 [0-16] 68 00 6b 00 6c 00 6d 00 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 64 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 [0-32] 64 00 69 00 73 00 61 00 62 00 6c 00 65 00 61 00 6e 00 74 00 69 00 73 00 70 00 79 00 77 00 61 00 72 00 65 00}  //weight: 100, accuracy: Low
        $x_100_4 = {72 00 65 00 67 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 [0-16] 68 00 6b 00 6c 00 6d 00 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 63 00 75 00 72 00 72 00 65 00 6e 00 74 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 72 00 75 00 6e 00 [0-32] 73 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 68 00 65 00 61 00 6c 00 74 00 68 00}  //weight: 100, accuracy: Low
        $x_100_5 = {72 00 65 00 67 00 20 00 61 00 64 00 64 00 [0-16] 68 00 6b 00 6c 00 6d 00 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 63 00 75 00 72 00 72 00 65 00 6e 00 74 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 70 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 [0-32] 73 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 70 00 61 00 67 00 65 00 76 00 69 00 73 00 69 00 62 00 69 00 6c 00 69 00 74 00 79 00 [0-32] 68 00 69 00 64 00 65 00 3a 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 64 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00}  //weight: 100, accuracy: Low
    condition:
        (filesize < 20MB) and
        (
            ((2 of ($x_100_*) and 1 of ($x_1_*))) or
            ((3 of ($x_100_*))) or
            (all of ($x*))
        )
}

