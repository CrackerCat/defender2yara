rule Trojan_AndroidOS_FantasyMW_A_2147904634_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/FantasyMW.A!MTB"
        threat_id = "2147904634"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "FantasyMW"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "/FantasyMalware/" ascii //weight: 1
        $x_1_2 = "Lcom/apple/fantastic/bankers" ascii //weight: 1
        $x_1_3 = "Lcom/apple/fantastic/communication" ascii //weight: 1
        $x_1_4 = "getRootInActiveWindow" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

