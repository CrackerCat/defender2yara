rule Trojan_MSIL_ZemsilF_RDA_2147840608_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/ZemsilF.RDA!MTB"
        threat_id = "2147840608"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "ZemsilF"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "f8d7a623-83e5-49a3-8768-7eb618cbf2b8" ascii //weight: 1
        $x_1_2 = "qltkToolBingo" wide //weight: 1
        $x_1_3 = "ConfuserEx v1.0.0" ascii //weight: 1
        $x_1_4 = "ConfusedByAttribute" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_ZemsilF_RDB_2147840807_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/ZemsilF.RDB!MTB"
        threat_id = "2147840807"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "ZemsilF"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "35639f50-334d-4a77-adf1-bae8373410ea" ascii //weight: 1
        $x_1_2 = "Runtime Broker" ascii //weight: 1
        $x_1_3 = "ChromeCrashHandler" ascii //weight: 1
        $x_1_4 = "AttendanceRecorder" ascii //weight: 1
        $x_1_5 = "Jiomat LLC" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_ZemsilF_RDD_2147841238_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/ZemsilF.RDD!MTB"
        threat_id = "2147841238"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "ZemsilF"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "TGX.exe" ascii //weight: 1
        $x_1_2 = "Wedly" ascii //weight: 1
        $x_1_3 = "LuPGYCH2R89K0MQ56b0" ascii //weight: 1
        $x_1_4 = "SkZF6QOmvOiAt0JPTG.nIbBGQN5DKXq2gV7pu" ascii //weight: 1
        $x_1_5 = "wRtkqC40LW22ZRZGm2.BmN6q9yP6SxXSf6uMU" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_ZemsilF_AYA_2147918985_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/ZemsilF.AYA!MTB"
        threat_id = "2147918985"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "ZemsilF"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {11 05 11 0a 74 04 00 00 1b 11 0c 11 07 58 11 09 59 93 61 11 0b 74 03 00 00 01 74 04 00 00 1b 11 09 11 0c 58 1f 11 58 11 08 5d 93 61 d1 28}  //weight: 2, accuracy: High
        $x_1_2 = "85971653.Resources" ascii //weight: 1
        $x_1_3 = "j.t.resources" ascii //weight: 1
        $x_1_4 = "$e4c05e25-ca33-4314-ab56-656a5c196143" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

