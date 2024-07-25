rule Trojan_Win64_Reductor_A_2147743617_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Reductor.A"
        threat_id = "2147743617"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Reductor"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_8_1 = {48 83 ec 48 48 8d ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? c4 e9 e2 a4}  //weight: 8, accuracy: Low
        $x_3_2 = {c6 84 24 60 01 00 00 49 c6 84 24 61 01 00 00 64 c6 84 24 62 01 00 00 65 c6 84 24 63 01 00 00 6e c6 84 24 64 01 00 00 74 c6 84 24 65 01 00 00 69 c6 84 24 66 01 00 00 66 c6 84 24 67 01 00 00 69 c6 84 24 68 01 00 00 65 c6 84 24 69 01 00 00 72}  //weight: 3, accuracy: High
        $x_3_3 = {04 01 00 00 c6 84 24 ?? ?? 00 00 44 c6 84 24 ?? ?? 00 00 69 c6 84 24 ?? ?? 00 00 73 c6 84 24 ?? ?? 00 00 6b c6 84 24 ?? ?? 00 00 50 c6 84 24 ?? ?? 00 00 65 c6 84 24 ?? ?? 00 00 72 c6 84 24 ?? ?? 00 00 69 c6 84 24 ?? ?? 00 00 70 c6 84 24 ?? ?? 00 00 68 c6 84 24 ?? ?? 00 00 65 c6 84 24 ?? ?? 00 00 72 c6 84 24 ?? ?? 00 00 61 c6 84 24 ?? ?? 00 00 6c}  //weight: 3, accuracy: Low
        $x_3_4 = {81 78 04 78 56 34 12 74 04 33 c0 eb}  //weight: 3, accuracy: High
        $x_3_5 = {c6 40 07 01 48 8b 44 24 40 c7 40 08 7d 83 f2 45}  //weight: 3, accuracy: High
        $x_2_6 = {c7 40 04 7d 83 f2 45}  //weight: 2, accuracy: High
        $x_3_7 = {0d 00 01 00 00 83 c8 01 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 0d 00 02 00 00 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 0d 00 03 00 00 83 c8 03}  //weight: 3, accuracy: Low
        $x_3_8 = {0d 00 04 00 00 83 c8 04 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 0d 00 05 00 00}  //weight: 3, accuracy: Low
        $x_5_9 = "\\\\.\\pipe\\{3ef1-59d4-34fda961-2e13}" ascii //weight: 5
        $x_2_10 = "Global\\$$wrk_ff" ascii //weight: 2
        $x_2_11 = "Global\\$$wrk_cr" ascii //weight: 2
        $x_2_12 = "Global\\$$wrk_ls" ascii //weight: 2
        $x_2_13 = "module_ls.pdb" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (
            ((5 of ($x_2_*))) or
            ((1 of ($x_3_*) and 4 of ($x_2_*))) or
            ((2 of ($x_3_*) and 2 of ($x_2_*))) or
            ((3 of ($x_3_*) and 1 of ($x_2_*))) or
            ((4 of ($x_3_*))) or
            ((1 of ($x_5_*) and 3 of ($x_2_*))) or
            ((1 of ($x_5_*) and 1 of ($x_3_*) and 1 of ($x_2_*))) or
            ((1 of ($x_5_*) and 2 of ($x_3_*))) or
            ((1 of ($x_8_*) and 1 of ($x_2_*))) or
            ((1 of ($x_8_*) and 1 of ($x_3_*))) or
            ((1 of ($x_8_*) and 1 of ($x_5_*))) or
            (all of ($x*))
        )
}

