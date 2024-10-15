rule Trojan_Win64_Rozenaz_AT_2147923628_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Rozenaz.AT!MTB"
        threat_id = "2147923628"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Rozenaz"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {aa 3e 00 00 94 3e 00 00 1f 73 74 72 5f 73 7a 00 01 34 01 0b 6f 01 00 00 29 40 00 00 93 3f 00 00 1f 73 74 72 00 01 35 01 09 c9 01 00 00 ed 46 00 00 3b 46 00 00 1f 70 73 74 72 00 01 35 01 17 d3 02 00 00 25 4e 00 00 f5 4d 00 00 21 77 62 75 66 00 01 35 01 25 c9 01 00 00 1f 77 73 74 72 00 01 36 01 0c cf 01 00 00 a3 50 00 00 0f 50 00 00 1f 72 76 61 6c 00 01 37 01 07 b6 01 00 00 e8}  //weight: 1, accuracy: High
        $x_1_2 = {53 c3 01 00 4b c3 01 00 19 78 00 01 f1 01 09 f8 08 00 00 bf c3 01 00 af c3 01 00 19 78 31 00 01 f1 01 0d f8 08 00 00 7f c4 01 00 6d c4 01 00 19 78 65 00 01 f1 01 12 f8 08 00 00 44 c5 01 00 40 c5 01 00 19 7a 00 01 f1 01 16 cd 04 00 00 7e c5 01 00 7a c5 01 00 25}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

