rule Trojan_MSIL_Lumma_RDB_2147899041_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/Lumma.RDB!MTB"
        threat_id = "2147899041"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Lumma"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "language_support_and_localization" ascii //weight: 1
        $x_1_2 = "{}d{}o{}h{}t{}e{}M{}t{}e{}G{}" wide //weight: 1
        $x_1_3 = "=/*-T=y=p=e=" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

