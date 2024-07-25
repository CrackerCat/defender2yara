rule Trojan_AndroidOS_Hqwar_B_2147852378_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Hqwar.B!MTB"
        threat_id = "2147852378"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Hqwar"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {14 04 61 57 04 00 b1 48 48 04 00 06 14 05 31 22 0b 00 92 05 05 08 dc 07 06 01 48 07 03 07 14 09 [0-2] 0e 00 92 08 08 09 da 09 05 37 b0 98 b7 74 8d 44 4f 04 01 06 b0 85 d8 09 05 fe d8 06 06 01}  //weight: 1, accuracy: Low
        $x_1_2 = {48 09 07 09 14 0a 27 40 08 00 b1 2a b0 23 b1 a3 b0 63 b7 98 8d 88 4f 08 05 00 14 08 f5 d0 01 00 32 83 [0-2] b0 23 81 28 81 3a be a8 14 08 eb e8 01 00 ?? 09 06 03 b1 29 b0 89 01 92}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (1 of ($x*))
}

rule Trojan_AndroidOS_Hqwar_J_2147906201_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Hqwar.J!MTB"
        threat_id = "2147906201"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Hqwar"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "inj_dnlader" ascii //weight: 1
        $x_1_2 = "faknotiactivity" ascii //weight: 1
        $x_1_3 = "forc_activateacc" ascii //weight: 1
        $x_1_4 = "ice/smsplus" ascii //weight: 1
        $x_1_5 = "/nb6" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

