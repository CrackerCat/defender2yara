rule Trojan_MSIL_Stealc_MA_2147849376_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealc.MA!MTB"
        threat_id = "2147849376"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {02 03 28 1d 00 00 06 0a de 0a 26 16 8d 34 00 00 01 0a de 00 06 2a}  //weight: 2, accuracy: High
        $x_2_2 = "screenshot" wide //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Stealc_AAFP_2147850728_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealc.AAFP!MTB"
        threat_id = "2147850728"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {0a 25 11 04 28 ?? 00 00 06 25 17 6f ?? 00 00 0a 25 18 6f ?? 00 00 0a 25 11 00 28 ?? 00 00 06 28 ?? 00 00 06 11 01 16 11 01 8e 69 6f ?? 00 00 0a 13 03}  //weight: 4, accuracy: Low
        $x_1_2 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Stealc_AAGD_2147851121_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealc.AAGD!MTB"
        threat_id = "2147851121"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {0a 25 11 02 28 ?? 00 00 06 25 17 28 ?? 00 00 06 25 18 6f ?? 00 00 0a 25 11 04 28 ?? 00 00 06 28 ?? 00 00 06 11 01 16 11 01 8e 69 28 ?? 00 00 06 13 03}  //weight: 4, accuracy: Low
        $x_1_2 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Stealc_AAMY_2147888937_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealc.AAMY!MTB"
        threat_id = "2147888937"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {02 08 02 8e 69 5d 7e ?? 00 00 04 02 08 02 8e 69 5d 91 07 08 07 8e 69 5d 91 61 28 ?? 00 00 06 02 08 1b 58 1a 59 02 8e 69 5d 91 59 20 fe 00 00 00 58 18 58 20 00 01 00 00 5d d2 9c}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Stealc_AAND_2147889040_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealc.AAND!MTB"
        threat_id = "2147889040"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {0a 25 11 02 6f ?? 00 00 0a 25 17 6f ?? 00 00 0a 25 18 6f ?? 00 00 0a 25 11 04 6f ?? 00 00 0a 6f ?? 00 00 0a 11 01 16 11 01 8e 69 6f ?? 00 00 0a 13 03}  //weight: 4, accuracy: Low
        $x_1_2 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Stealc_AANE_2147889052_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealc.AANE!MTB"
        threat_id = "2147889052"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {0a 25 08 6f ?? 00 00 0a 25 17 6f ?? 00 00 0a 25 18 28 ?? 00 00 06 25 06 6f ?? 00 00 0a 28 ?? 00 00 06 07 16 07 8e 69 28 ?? 00 00 06 0d}  //weight: 4, accuracy: Low
        $x_1_2 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Stealc_AAOV_2147890431_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealc.AAOV!MTB"
        threat_id = "2147890431"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {08 16 07 1f 0f 1f 10 28 ?? 00 00 0a 06 07 6f ?? 00 00 0a 06 18 6f ?? 00 00 0a 06 1b 6f ?? 00 00 0a 06 6f ?? 00 00 0a 0d 09 05 16 05 8e 69 6f ?? 00 00 0a 2a}  //weight: 4, accuracy: Low
        $x_1_2 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Stealc_AAQH_2147891928_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealc.AAQH!MTB"
        threat_id = "2147891928"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {11 05 11 03 28 ?? 00 00 06 38 00 00 00 00 00 00 11 05 6f ?? 00 00 0a 13 06 20 01 00 00 00 28 ?? 00 00 06 3a ?? ff ff ff 26 20 01 00 00 00 38 ?? ff ff ff 00 11 06 11 09 16 11 09 8e 69 28 ?? 00 00 06 13 0b}  //weight: 4, accuracy: Low
        $x_1_2 = "CreateDecryptor" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Stealc_MBJH_2147892056_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealc.MBJH!MTB"
        threat_id = "2147892056"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "hfsdkfddgfgffsefafchd" ascii //weight: 1
        $x_1_2 = "cffffdadfdrsfsshdkfffgh" ascii //weight: 1
        $x_1_3 = "fsffffdddfgfefdfkfghj" ascii //weight: 1
        $x_1_4 = "sgafgfdv" ascii //weight: 1
        $x_1_5 = "gdfgd2dfsfvfgdfdj" ascii //weight: 1
        $x_1_6 = "hdffhhdfhdggfhdfhdfhdfhdasffffkdf" ascii //weight: 1
        $x_1_7 = "RijndaelManaged" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Stealc_AASY_2147893169_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealc.AASY!MTB"
        threat_id = "2147893169"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {04 06 18 28 ?? 01 00 06 7e ?? 00 00 04 06 1b 28 ?? 01 00 06 7e ?? 00 00 04 06 28 ?? 01 00 06 0d 7e ?? 00 00 04 09 02 16 02 8e 69 28 ?? 01 00 06 2a}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Stealc_RPX_2147900690_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealc.RPX!MTB"
        threat_id = "2147900690"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {17 13 07 16 13 08 2b 18 02 11 06 11 08 58 91 07 11 08 91 2e 05 16 13 07 2b 0d 11 08 17 58 13 08 11 08 07 8e 69 32 e1}  //weight: 1, accuracy: High
        $x_1_2 = "Love has different types" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_Stealc_RPX_2147900690_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Stealc.RPX!MTB"
        threat_id = "2147900690"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Stealc"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "filezilla.xml" wide //weight: 1
        $x_1_2 = "choice /C Y /N /D Y /T 3 & Del" wide //weight: 1
        $x_1_3 = "11221211100020.com" wide //weight: 1
        $x_1_4 = "purple\\accounts.xml" wide //weight: 1
        $x_1_5 = "Exodus\\exodus.wallet" wide //weight: 1
        $x_1_6 = "Coinomi\\Coinomi\\wallets" wide //weight: 1
        $x_1_7 = "TakeShot.jpeg" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

