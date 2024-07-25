rule Trojan_MSIL_Stealerc_AAES_2147850709_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealerc.AAES!MTB"
        threat_id = "2147850709"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealerc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {13 05 00 11 05 6f ?? 00 00 0a 13 06 11 06 08 6f ?? 00 00 0a 00 08 6f ?? 00 00 0a 03 6a da 17 6a da 13 07 16 6a 13 08 2b 0f 07 16 6f ?? 00 00 0a 00 11 08 17 6a d6 13 08 11 08 11 07 31 eb de 0e 00 11 06 2c 08 11 06 6f ?? 00 00 0a 00 dc}  //weight: 3, accuracy: Low
        $x_2_2 = {16 13 04 2b 1d 07 02 11 04 18 6f ?? 00 00 0a 1f 10 28 ?? 00 00 0a 6f ?? 00 00 0a 00 11 04 18 d6 13 04 11 04 09 31 de}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Stealerc_AAHN_2147851706_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealerc.AAHN!MTB"
        threat_id = "2147851706"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealerc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {11 09 11 09 28 ?? ?? 00 06 11 09 6f ?? 00 00 0a 6f ?? 00 00 0a 13 05 20 01 00 00 00 7e ?? 00 00 04 7b ?? 00 00 04 3a ?? fd ff ff 26 20 05 00 00 00 38 ?? fd ff ff 00 11 07 73 ?? 00 00 0a 13 03 20 00 00 00 00 7e ?? 00 00 04 7b ?? 00 00 04 39 ?? 00 00 00 26 20 00 00 00 00 38 ?? 00 00 00 fe 0c 0c 00}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Stealerc_AAML_2147888665_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealerc.AAML!MTB"
        threat_id = "2147888665"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealerc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {06 13 06 20 00 00 00 00 28 ?? 00 00 06 39 ?? ff ff ff 26 20 00 00 00 00 38 ?? ff ff ff 00 11 05 11 0a 6f ?? 00 00 0a 38 ?? ff ff ff 00 11 05 17 6f ?? 00 00 0a 38 ?? ff ff ff 00 11 06 11 08 16 11 08 8e 69 6f ?? 00 00 0a 13 07}  //weight: 4, accuracy: Low
        $x_1_2 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Stealerc_AAPW_2147891678_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealerc.AAPW!MTB"
        threat_id = "2147891678"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealerc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {11 08 11 03 6f ?? 00 00 0a 20 00 00 00 00 28 ?? 00 00 06 3a ?? ff ff ff 26 38 ?? ff ff ff 00 11 08 17 28 ?? 00 00 06 38 ?? ff ff ff 00 00 11 08 6f ?? 00 00 0a 13 06 20 01 00 00 00 28 ?? 00 00 06 3a ?? ff ff ff 26 38 ?? ff ff ff 00 11 06 11 09 16 11 09 8e 69 6f ?? 00 00 0a 13 0c}  //weight: 4, accuracy: Low
        $x_1_2 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Stealerc_AAQY_2147892179_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealerc.AAQY!MTB"
        threat_id = "2147892179"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealerc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {06 20 0c 1f 8f f8 28 ?? 00 00 06 28 ?? 0e 00 06 20 2d 1f 8f f8 28 ?? 00 00 06 28 ?? 0e 00 06 28 ?? 0e 00 06 13 04}  //weight: 4, accuracy: Low
        $x_1_2 = "FromBase64String" ascii //weight: 1
        $x_1_3 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Stealerc_AAUC_2147893940_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealerc.AAUC!MTB"
        threat_id = "2147893940"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealerc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {0a 0a 06 18 6f ?? 00 00 0a 00 06 18 6f ?? 00 00 0a 00 06 72 01 00 00 70 28 ?? 00 00 0a 6f ?? 00 00 0a 00 06 6f ?? 00 00 0a 0b 07 28 ?? 00 00 06 16 28 ?? 00 00 06 8e 69 6f ?? 00 00 0a 0c}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Stealerc_NC_2147894991_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealerc.NC!MTB"
        threat_id = "2147894991"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealerc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {61 d2 52 07 08 8f ?? 00 00 01 25 47 07 11 05 91 06 1a 58 4a 61 d2 61 d2 52 07 11 05 8f 07 00 00 01 25 47 07 08 91 61 d2 52 11 05 17 58}  //weight: 5, accuracy: Low
        $x_1_2 = "Binance Airdrop_.exe" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Stealerc_AAXW_2147897632_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealerc.AAXW!MTB"
        threat_id = "2147897632"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealerc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {25 11 04 28 ?? ?? 00 06 00 25 17 6f ?? 00 00 0a 00 25 18 6f ?? 00 00 0a 00 25 07 28 ?? ?? 00 06 00 13 08 20 00 00 00 00 38 ?? ff ff ff 00 05 1f 10 28 ?? 00 00 2b 28 ?? 00 00 2b 0b 20 05 00 00 00 38 ?? ff ff ff 11 08 6f ?? 00 00 0a 13 09 20 07 00 00 00 38 ?? ff ff ff 11 09 09 16 09 8e 69 6f ?? 00 00 0a 13 06}  //weight: 4, accuracy: Low
        $x_1_2 = "{}d{}o{}h{}t{}e{}M{}t{}e{}G{}" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Stealerc_AAXZ_2147897718_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealerc.AAXZ!MTB"
        threat_id = "2147897718"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealerc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {05 1f 10 28 ?? 00 00 2b 1f 20 28 ?? 00 00 2b 28 ?? 00 00 2b 0c 20 05 00 00 00 38 ?? ?? 00 00 11 08 28 ?? ?? 00 06 13 09}  //weight: 2, accuracy: Low
        $x_2_2 = {11 09 09 16 09 8e 69 6f ?? 00 00 0a 13 06}  //weight: 2, accuracy: Low
        $x_1_3 = "{}d{}o{}h{}t{}e{}M{}t{}e{}G{}" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Stealerc_AAYE_2147897810_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealerc.AAYE!MTB"
        threat_id = "2147897810"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealerc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {0a 25 11 04 28 ?? ?? 00 06 00 25 17 6f ?? 00 00 0a 00 25 18 28 ?? ?? 00 06 00 25 07 28 ?? ?? 00 06 00 13 08}  //weight: 2, accuracy: Low
        $x_2_2 = {11 09 09 16 09 8e 69 28 ?? ?? 00 06 13 06}  //weight: 2, accuracy: Low
        $x_1_3 = "{}d{}o{}h{}t{}e{}M{}t{}e{}G{}" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Stealerc_AAYK_2147898308_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealerc.AAYK!MTB"
        threat_id = "2147898308"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealerc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {04 06 18 28 ?? 01 00 06 7e ?? 01 00 04 06 1b 28 ?? 01 00 06 7e ?? 01 00 04 06 28 ?? 01 00 06 0d 7e ?? 01 00 04 09 05 16 05 8e 69 28 ?? 01 00 06 2a}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Stealerc_AAYP_2147898437_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealerc.AAYP!MTB"
        threat_id = "2147898437"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealerc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {0a 25 11 02 6f ?? 00 00 0a 25 17 28 ?? ?? 00 06 25 18 28 ?? ?? 00 06 25 11 00 6f ?? 00 00 0a 6f ?? 00 00 0a 11 01 16 11 01 8e 69 28 ?? ?? 00 06 13 03}  //weight: 4, accuracy: Low
        $x_1_2 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Stealerc_EGAA_2147902857_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealerc.EGAA!MTB"
        threat_id = "2147902857"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealerc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {04 06 18 28 ?? 01 00 06 7e ?? 00 00 04 06 1b 28 ?? 01 00 06 7e ?? 00 00 04 06 28 ?? 01 00 06 0d 7e ?? 00 00 04 09 03 16 03 8e 69 28 ?? 01 00 06 2a}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Stealerc_AMMB_2147904465_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealerc.AMMB!MTB"
        threat_id = "2147904465"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealerc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {05 11 0d 8f ?? 00 00 01 25 71 ?? 00 00 01 11 01 11 11 91 61 d2}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Stealerc_AMMF_2147906219_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealerc.AMMF!MTB"
        threat_id = "2147906219"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealerc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {13 04 11 04 15 7e ?? 00 00 04 16 8f ?? 00 00 01 7e ?? 00 00 04 8e 69 1f 40 12 00 6f ?? ?? 00 06 26 16 13 08 11 06}  //weight: 2, accuracy: Low
        $x_1_2 = "VirtualProtectEx" wide //weight: 1
        $x_1_3 = "WaitForSingleObject" wide //weight: 1
        $x_1_4 = "CreateThread" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Stealerc_AMMF_2147906219_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealerc.AMMF!MTB"
        threat_id = "2147906219"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealerc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {64 00 20 00 a0 12 20 00 1d 12 20 00 35 12 20 00 1b 12 20 00 eb 12 20 00 1d 12 20 00 e8 12 20 00 1d 12 20 00 0b 12 20 00 28 13 20 00 60 12 20 00 41 00 20 00 6f 00 20 00 65 12 20 00 2d 12 20 00 00 13 20 00 62 12 20 00 2d 12 20 00 c8 12 20 00 e8 12 20 00 01 12 20 00 3b 12 20 00 4c 00 20 00}  //weight: 2, accuracy: High
        $x_2_2 = {65 00 70 00 20 00 79 00 20 00 54 00 20 00 74 00 20 00 70 12 20 00 62 12 20 00 2d 12 20 00 f5 12 20 00 54 13}  //weight: 2, accuracy: High
        $x_1_3 = "CreateDecryptor" ascii //weight: 1
        $x_1_4 = "StrReverse" ascii //weight: 1
        $x_1_5 = "Replace" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Stealerc_GPAX_2147915660_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealerc.GPAX!MTB"
        threat_id = "2147915660"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealerc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {0a 13 05 06 11 ?? 6f ?? 00 00 0a 13 ?? 08 07 6a 5a 11 ?? 6a 58 0c 00 11 ?? 17 58 13 ?? 11 ?? 09 fe 04 13 ?? 11 ?? 2d d0}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

