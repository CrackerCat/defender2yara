rule Trojan_Win32_DetectVirtual_V_2147768888_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/DetectVirtual.V"
        threat_id = "2147768888"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "DetectVirtual"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-16] 67 00 77 00 6d 00 69 00 [0-64] 77 00 69 00 6e 00 33 00 32 00 5f 00 62 00 69 00 6f 00 73 00}  //weight: 1, accuracy: Low
        $x_1_2 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-16] 67 00 77 00 6d 00 69 00 [0-64] 77 00 69 00 6e 00 33 00 32 00 5f 00 62 00 61 00 73 00 65 00 62 00 6f 00 61 00 72 00 64 00}  //weight: 1, accuracy: Low
        $x_1_3 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-16] 2d 00 63 00 6c 00 61 00 73 00 73 00 [0-64] 77 00 69 00 6e 00 33 00 32 00 5f 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 73 00 79 00 73 00 74 00 65 00 6d 00}  //weight: 1, accuracy: Low
        $x_1_4 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-16] 2d 00 63 00 6c 00 61 00 73 00 73 00 [0-64] 77 00 69 00 6e 00 33 00 32 00 5f 00 62 00 69 00 6f 00 73 00}  //weight: 1, accuracy: Low
        $x_1_5 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-16] 67 00 65 00 74 00 2d 00 77 00 6d 00 69 00 6f 00 62 00 6a 00 65 00 63 00 74 00 [0-16] 2d 00 6e 00 61 00 6d 00 65 00 73 00 70 00 61 00 63 00 65 00 20 00 72 00 6f 00 6f 00 74 00 5c 00 63 00 69 00 6d 00 76 00 32 00 [0-2] 2d 00 71 00 75 00 65 00 72 00 79 00 [0-16] 22 00 73 00 65 00 6c 00 65 00 63 00 74 00 [0-2] 2a 00 [0-2] 66 00 72 00 6f 00 6d 00 [0-2] 77 00 69 00 6e 00 33 00 32 00 5f 00 62 00 69 00 6f 00 73 00}  //weight: 1, accuracy: Low
        $x_1_6 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 [0-16] 67 00 65 00 74 00 2d 00 77 00 6d 00 69 00 6f 00 62 00 6a 00 65 00 63 00 74 00 [0-16] 2d 00 6e 00 61 00 6d 00 65 00 73 00 70 00 61 00 63 00 65 00 20 00 72 00 6f 00 6f 00 74 00 5c 00 63 00 69 00 6d 00 76 00 32 00 [0-2] 2d 00 71 00 75 00 65 00 72 00 79 00 [0-16] 22 00 73 00 65 00 6c 00 65 00 63 00 74 00 [0-2] 2a 00 [0-2] 66 00 72 00 6f 00 6d 00 [0-2] 77 00 69 00 6e 00 33 00 32 00 5f 00 62 00 61 00 73 00 65 00 62 00 6f 00 61 00 72 00 64 00}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (1 of ($x*))
}

