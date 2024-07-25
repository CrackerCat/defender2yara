rule VirTool_Win32_ProcKill_B_2147601412_0
{
    meta:
        author = "defender2yara"
        detection_name = "VirTool:Win32/ProcKill.B"
        threat_id = "2147601412"
        type = "VirTool"
        platform = "Win32: Windows 32-bit platform"
        family = "ProcKill"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "12"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {6b 00 69 00 6c 00 6c 00 73 00 2e 00 73 00 79 00 73 00 00 00}  //weight: 10, accuracy: High
        $x_1_2 = {61 00 76 00 70 00 2e 00 65 00 78 00 65 00 [0-8] 4d 00 63 00 73 00 68 00 69 00 65 00 6c 00 64 00 2e 00 65 00 78 00 65 [0-8] 00 56 00 73 00 54 00 73 00 6b 00 4d 00 67 00 72 00 2e 00 65 00 78 00 65 00 [0-8] 6e 00 61 00 50 00 72 00 64 00 4d 00 67 00 72 00 2e 00 65 00 78 00 65 00 [0-8] 54 00 42 00 4d 00 6f 00 6e 00 2e 00 65 00 78 00 65 00 [0-8] 73 00 63 00}  //weight: 1, accuracy: Low
        $x_1_3 = {6b 00 61 00 76 00 73 00 76 00 63 00 2e 00 65 00 78 00 65 00 [0-8] 55 00 49 00 48 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 [0-8] 54 00 72 00 6f 00 6a 00 44 00 69 00 65 00 2e 00 65 00 78 00 65 00 [0-8] 46 00 72 00 6f 00 67 00 41 00 67 00 65 00 6e 00 74 00 2e 00 65 00 78 00 65 00 [0-8] 6b 00 61 00 76 00 2e 00 65 00 78 00 65 00 [0-8] 6b 00 61 00 76 00}  //weight: 1, accuracy: Low
        $x_1_4 = {54 00 61 00 73 00 6b 00 6d 00 67 00 72 00 2e 00 65 00 78 00 65 00 [0-8] 52 00 65 00 67 00 65 00 64 00 69 00 74 00 2e 00 65 00 78 00 65 00 [0-8] 4d 00 73 00 63 00 6f 00 6e 00 66 00 69 00 67 00 2e 00 65 00 78 00 65 00 [0-8] 33 00 36 00 30 00 74 00 72 00 61 00 79 00 2e 00 65 00 78 00 65 00 [0-8] 69 00 63 00 65 00 73 00 77 00 6f 00 72 00 64 00 2e 00 65 00 78 00}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_10_*) and 2 of ($x_1_*))) or
            (all of ($x*))
        )
}

