rule Trojan_MSIL_Lummac_GPC_2147918271_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Lummac.GPC!MTB"
        threat_id = "2147918271"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Lummac"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {06 08 06 09 91 9c 06 09 11 ?? 9c 06 08 91 06 09 91 58 20 00 01 00 00 5d [0-47] 91 61 d2 81 1d 00 00 01}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Lummac_PPC_2147919304_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Lummac.PPC!MTB"
        threat_id = "2147919304"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Lummac"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {11 0c 6a 61 69 13 11 11 16 6a 11 1e 6e 58 6d 13 14 11 13 11 10 58 13 0c 11 18 11 1e 59 13 15 11 18 6e 11 15 6a 59 6d 13 0b 11 1a 6a 11 09 6e 59 6d 13 08 11 0e 11 09 5a 13 10 11 0d 11 0d 5b 13 19 08 17 58 20 00 01 00 00 5d 0c 09 06 08 91 58 20 00 01 00 00 5d 0d 06 08 91 13 20 06 08 06 09 91 9c 06 09 11 20 9c 06 08 91 06 09 91 58 20 00 01 00 00 5d 13 21 11 1f 6e 11 11 6a 3c ?? ?? ?? ?? 11 18 11 1e 5a 13 1b 11 0e 6e 11 19 6a 5b 6d 13 08 11 1b 6a 11 0f 6e 5a 6d 13 0b 11 18 11 12 5a 13 14 11 08 11 17 5c 13 0d 11 14 6e 11 19 6a 5b 69 13 0c 11 1e 6e 11 1c 6a 5a 69 13 1b 11 0a 11 1d 5a 13 17 11 1a 6a 11 1f 6e 59 6d 13 1f 11 12 11 18 61 13 0b 02 11 07 8f ?? ?? ?? ?? 25 71 ?? ?? ?? ?? 06 11 21 91 61 d2 81 ?? ?? ?? ?? 11 07 17 58 13 07 11 07 02 8e 69}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Lummac_PPD_2147919713_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Lummac.PPD!MTB"
        threat_id = "2147919713"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Lummac"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {61 69 13 18 11 19 6e 11 1a 6a 61 69 13 1a 08 17 58 20 00 01 00 00 5d 0c 09 06 08 91 58 20 00 01 00 00 5d 0d 06 08 91 13 1b 06 08 06 09 91 9c 06 09 11 1b 9c 06 08 91 06 09 91 58 20 00 01 00 00 5d 13 1c 02 11 13 8f 14 00 00 01 25 71 14 00 00 01 06 11 1c 91 61 d2 81 14 00 00 01 11 13 17}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

