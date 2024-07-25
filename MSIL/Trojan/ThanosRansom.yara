rule Trojan_MSIL_ThanosRansom_MFP_2147782170_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/ThanosRansom.MFP!MTB"
        threat_id = "2147782170"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "ThanosRansom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {28 0c 00 00 0a 6f ?? ?? ?? 0a 0c 08 6f ?? ?? ?? 0a 0d 1d 28 ?? ?? ?? 0a 7e ?? ?? ?? 04 20 ?? ?? ?? 06 28 ?? ?? ?? 06 28 ?? ?? ?? 0a 13 04 11 04 09 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 13 05 7e ?? ?? ?? 04 7e}  //weight: 5, accuracy: Low
        $x_5_2 = {28 4d 00 00 06 2d 15 28 4e ?? ?? 06 2d 0e 28 4b ?? ?? 06 2d 07 28 4c ?? ?? 06 2c 0a 28 0c ?? ?? 0a 6f ?? ?? ?? 0a 14 28 ?? ?? ?? 0a 2a}  //weight: 5, accuracy: Low
        $x_5_3 = {14 0a 03 04 28 ?? ?? ?? 06 0b 14 10 ?? 28 ?? ?? ?? 0a 73 ?? ?? ?? 0a 0c 08 20 ?? ?? ?? 00 6f ?? ?? ?? 0a 08 07 08 6f ?? ?? ?? 0a 1e 5b 6f ?? ?? ?? 0a 6f ?? ?? ?? 0a 08 07 08 6f ?? ?? ?? 0a 1e 5b 6f ?? ?? ?? 0a 6f ?? ?? ?? 0a 08 17 6f ?? ?? ?? 0a 08 17 6f ?? ?? ?? 0a 73 16 01 00 0a 0d 09 08 6f ?? ?? ?? 0a 17 73 ?? ?? ?? 0a 13 ?? 11 ?? 02 16 02 8e 69 6f ?? ?? ?? 0a 11 04 6f ?? ?? ?? 0a de ?? 11 ?? 2c ?? 11 ?? 6f ?? ?? ?? 0a dc 09 6f 18 01 00 0a 0a de 0a 09 2c 06 09 6f ?? ?? ?? 0a dc 07 6f ?? ?? ?? 0a de 0a 08 2c 06 08 6f ?? ?? ?? 0a dc 06}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (2 of ($x*))
}

