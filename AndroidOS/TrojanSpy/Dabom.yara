rule TrojanSpy_AndroidOS_Dabom_A_2147892501_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanSpy:AndroidOS/Dabom.A!MTB"
        threat_id = "2147892501"
        type = "TrojanSpy"
        platform = "AndroidOS: Android operating system"
        family = "Dabom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "11"
        strings_accuracy = "High"
    strings:
        $x_5_1 = "send_message_contect" ascii //weight: 5
        $x_5_2 = "smsbomber" ascii //weight: 5
        $x_1_3 = "getNetworkSecurityConfig" ascii //weight: 1
        $x_1_4 = "unhideall" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((2 of ($x_5_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule TrojanSpy_AndroidOS_Dabom_B_2147902251_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanSpy:AndroidOS/Dabom.B!MTB"
        threat_id = "2147902251"
        type = "TrojanSpy"
        platform = "AndroidOS: Android operating system"
        family = "Dabom"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "smsbomber" ascii //weight: 1
        $x_1_2 = "send2contact" ascii //weight: 1
        $x_1_3 = "database.db" ascii //weight: 1
        $x_1_4 = "com/drnull/v5/SmsService" ascii //weight: 1
        $x_1_5 = "sms_recived" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

