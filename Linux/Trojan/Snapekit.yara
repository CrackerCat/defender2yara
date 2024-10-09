rule Trojan_Linux_Snapekit_A_2147923186_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Linux/Snapekit.A"
        threat_id = "2147923186"
        type = "Trojan"
        platform = "Linux: Linux platform"
        family = "Snapekit"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_ELFHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "snapekit_C2" ascii //weight: 1
        $x_1_2 = "snapekit_persistence" ascii //weight: 1
        $x_1_3 = "snapekit_filepath" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

