rule Trojan_MSIL_OrcusRAT_NR_2147907485_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/OrcusRAT.NR!MTB"
        threat_id = "2147907485"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "OrcusRAT"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {11 06 11 05 9a 0c 08 6f ?? 00 00 0a 2c 42 08 6f ?? 00 00 0a 72 ?? 00 00 70 03 28 38 00 00 0a}  //weight: 3, accuracy: Low
        $x_3_2 = {6f 39 00 00 0a 2c 2a 08 28 ?? 00 00 0a 28 ?? 00 00 0a 0d 08 04 20 00 01 00 00 14 09 28 ?? 00 00 0a 05 6f ?? 00 00 0a 28 ?? 00 00 0a 13 04 11 04 2a 11 05 17 d6 13 05}  //weight: 3, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

