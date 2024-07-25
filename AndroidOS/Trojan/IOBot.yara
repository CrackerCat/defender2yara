rule Trojan_AndroidOS_IOBot_A_2147914094_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/IOBot.A!MTB"
        threat_id = "2147914094"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "IOBot"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "8"
        strings_accuracy = "High"
    strings:
        $x_5_1 = "com.spacex.mmobile" ascii //weight: 5
        $x_1_2 = "activeInjectAppPackage" ascii //weight: 1
        $x_1_3 = "activeInjectLogId" ascii //weight: 1
        $x_1_4 = "HIDDEN_VNC" ascii //weight: 1
        $x_1_5 = "spacextraffic.com" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_5_*) and 3 of ($x_1_*))) or
            (all of ($x*))
        )
}

