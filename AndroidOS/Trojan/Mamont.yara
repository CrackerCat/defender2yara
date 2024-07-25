rule Trojan_AndroidOS_Mamont_R_2147896325_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Mamont.R"
        threat_id = "2147896325"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Mamont"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {63 68 61 74 5f 69 64 3d 2d 31 30 30 31 39 39 36 32 36 30 34 30 30 26 74 65 78 74 3d d0 92 d0 be d1 80 d0 ba d0 b5 d1 80 3a}  //weight: 2, accuracy: High
        $x_2_2 = "@shootingupsome" ascii //weight: 2
        $x_2_3 = "CodeFromPanel" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (2 of ($x*))
}

rule Trojan_AndroidOS_Mamont_C_2147899816_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Mamont.C"
        threat_id = "2147899816"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Mamont"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "sendsms/AutoClickService" ascii //weight: 2
        $x_2_2 = "/err.php?i1=" ascii //weight: 2
        $x_2_3 = "/needed.php?i1=" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Mamont_B_2147899823_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Mamont.B"
        threat_id = "2147899823"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Mamont"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "isTelegramSended_1" ascii //weight: 1
        $x_1_2 = "SmsGrabber: No messages found" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Mamont_A_2147901525_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Mamont.A!MTB"
        threat_id = "2147901525"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Mamont"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "/needed.php?i1=" ascii //weight: 1
        $x_1_2 = "/bal.php?i1=" ascii //weight: 1
        $x_1_3 = "/dropnnna.txt" ascii //weight: 1
        $x_1_4 = "com/example/sendsms" ascii //weight: 1
        $x_1_5 = "cf56445.tw1.ru" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (4 of ($x*))
}

rule Trojan_AndroidOS_Mamont_B_2147910501_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Mamont.B!MTB"
        threat_id = "2147910501"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Mamont"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "zzzz/aaa/core/SmsReceiver" ascii //weight: 1
        $x_1_2 = "com.wefawvevw.app" ascii //weight: 1
        $x_1_3 = "ru.yoo.yoomone" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Mamont_F_2147914853_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Mamont.F"
        threat_id = "2147914853"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Mamont"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "KORONA_PAY_TRANSFER_COMPLETION" ascii //weight: 2
        $x_2_2 = "handleSimTransferConfirmationCodeReceipt" ascii //weight: 2
        $x_2_3 = "getNeedDefaultSmsAppPermission" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Mamont_C_2147915010_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Mamont.C!MTB"
        threat_id = "2147915010"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Mamont"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "SENDING_SMS" ascii //weight: 1
        $x_1_2 = "SmsController" ascii //weight: 1
        $x_1_3 = "sendFromAllSimCards" ascii //weight: 1
        $x_1_4 = "getKORONA_PAY_PAYMENT_COMPLETED" ascii //weight: 1
        $x_1_5 = "TelephonyRat" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Mamont_M_2147915767_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Mamont.M"
        threat_id = "2147915767"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Mamont"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "com.xcc.VmesteFilms.extra.PARAM1" ascii //weight: 2
        $x_2_2 = "VmesteFilms/eceiver" ascii //weight: 2
        $x_2_3 = "com.xcc.VmesteFilms.action.BAZ" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

