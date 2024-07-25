rule HackTool_Win64_Edrblok_A_2147900151_0
{
    meta:
        author = "defender2yara"
        detection_name = "HackTool:Win64/Edrblok.A"
        threat_id = "2147900151"
        type = "HackTool"
        platform = "Win64: Windows 64-bit platform"
        family = "Edrblok"
        severity = "High"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "11"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = "<blockedr/" ascii //weight: 5
        $x_5_2 = "EDRSilencer" ascii //weight: 5
        $x_5_3 = "BlockProcessTraffic" ascii //weight: 5
        $x_3_4 = "Detected running EDR process" ascii //weight: 3
        $x_2_5 = "isInEdrProcessList" ascii //weight: 2
        $x_1_6 = {d1 57 8d c3 ?? ?? ?? ?? a7 05 ?? ?? ?? ?? 33 4c ?? ?? 90 4f 7f bc ee e6 0e 82}  //weight: 1, accuracy: Low
        $x_1_7 = {87 1e 8e d7 ?? ?? ?? ?? 44 86 ?? ?? ?? ?? a5 4e ?? ?? 94 37 d8 09 ec ef c9 71}  //weight: 1, accuracy: Low
        $x_1_8 = {3b 39 72 4a ?? ?? ?? ?? 9f 31 ?? ?? ?? ?? bc 44 ?? ?? 84 c3 ba 54 dc b3 b6 b4}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_5_*) and 1 of ($x_3_*) and 3 of ($x_1_*))) or
            ((1 of ($x_5_*) and 1 of ($x_3_*) and 1 of ($x_2_*) and 1 of ($x_1_*))) or
            ((2 of ($x_5_*) and 1 of ($x_1_*))) or
            ((2 of ($x_5_*) and 1 of ($x_2_*))) or
            ((2 of ($x_5_*) and 1 of ($x_3_*))) or
            ((3 of ($x_5_*))) or
            (all of ($x*))
        )
}

