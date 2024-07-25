rule Trojan_Win32_ConAtt_A_2147907156_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ConAtt.A"
        threat_id = "2147907156"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ConAtt"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "11"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {63 00 6f 00 6e 00 68 00 6f 00 73 00 74 00 [0-32] 2d 00 2d 00 68 00 65 00 61 00 64 00 6c 00 65 00 73 00 73 00 [0-32] 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00}  //weight: 10, accuracy: Low
        $x_1_2 = {2e 00 24 00 28 00 5b 00 63 00 68 00 61 00 72 00 5d 00 28 00 [0-32] 2b 00 27 00 65 00 78 00 27 00 29 00}  //weight: 1, accuracy: Low
        $x_1_3 = {2e 00 24 00 28 00 5b 00 63 00 68 00 61 00 72 00 5d 00 28 00 [0-32] 2b 00 22 00 65 00 78 00 22 00 29 00}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_10_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

