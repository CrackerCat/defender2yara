rule Trojan_AndroidOS_Thamera_A_2147832204_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Thamera.A!MTB"
        threat_id = "2147832204"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Thamera"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = "SMS_APP_NEW_USER" ascii //weight: 1
        $x_1_2 = "pidarast.ru" ascii //weight: 1
        $x_1_3 = {2f 54 6f 6e 69 [0-6] 2f 74 6f 74 6b 61 2f 6d 61 73 74 65 72 2f 63 6f 6e 66 5f [0-4] 2e 6a 73 6f 6e}  //weight: 1, accuracy: Low
        $x_1_4 = "/smsapp" ascii //weight: 1
        $x_1_5 = "installed_apps_names" ascii //weight: 1
        $x_1_6 = "SMS_APP_SEND_SMS_STATUS" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (5 of ($x*))
}

rule Trojan_AndroidOS_Thamera_B_2147840920_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Thamera.B!MTB"
        threat_id = "2147840920"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Thamera"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "s.6srvfcm" ascii //weight: 1
        $x_1_2 = "pidarast.ru" ascii //weight: 1
        $x_1_3 = "com.settingapp.app" ascii //weight: 1
        $x_1_4 = "/smsapp" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (3 of ($x*))
}

rule Trojan_AndroidOS_Thamera_A_2147851720_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Thamera.A"
        threat_id = "2147851720"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Thamera"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "QWxsb3cgcGVybWlzc2lvbiB0byBjb250aW51ZQ=" ascii //weight: 1
        $x_1_2 = "WVc1a2NtOXBaQzV3Y205MmFXUmxjaTVVWld4bGNHaHZibmt1VTAxVFgxSkZRMFZKVmtWRQ" ascii //weight: 1
        $x_1_3 = "LmFjdGl2aXRpZXMuU3BsYXNoQWN0aXZpdHkuQmxhY2tUaGVtZQ" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Thamera_C_2147852389_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Thamera.C!MTB"
        threat_id = "2147852389"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Thamera"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "cankl2k.php?key=1icyhd8bc7bfqphjemaa&user_id=" ascii //weight: 1
        $x_1_2 = "isSmsCapable" ascii //weight: 1
        $x_1_3 = "finishAndRemoveTask" ascii //weight: 1
        $x_1_4 = "Lcom/simplemobiletools/launcher/activities/HiddenIconsActivity" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Thamera_C_2147852389_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Thamera.C!MTB"
        threat_id = "2147852389"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Thamera"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "org/jackajks/ther/SmsReceiver" ascii //weight: 1
        $x_1_2 = "SMS_APP_NEW_CALL" ascii //weight: 1
        $x_1_3 = "ScheduledMessageReceiver" ascii //weight: 1
        $x_1_4 = "isSmsCapable" ascii //weight: 1
        $x_1_5 = "com.android.contacts/contacts" ascii //weight: 1
        $x_1_6 = "HeadlessSmsSendService" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (5 of ($x*))
}

rule Trojan_AndroidOS_Thamera_S_2147891463_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Thamera.S"
        threat_id = "2147891463"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Thamera"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "LmFjdGl2aXRpZXMuU3BsYXNoQWN0aXZpdHkuT3Jhbmdl" ascii //weight: 1
        $x_1_2 = "WVc1a2NtOXBaQzV3Y205MmFXUmxjaTVVWld4bGNHaHZibmt1VTAxVFgxSkZRMFZKVmtWRQ=" ascii //weight: 1
        $x_1_3 = "Y2FsbF9udW1iZXI" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Thamera_D_2147908990_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Thamera.D!MTB"
        threat_id = "2147908990"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Thamera"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "permissionAksCounter" ascii //weight: 1
        $x_1_2 = "org.jackajks.thermish" ascii //weight: 1
        $x_1_3 = "sendNewSMS" ascii //weight: 1
        $x_1_4 = "FireBasemeoqaleheu" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Thamera_WT_2147919243_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Thamera.WT"
        threat_id = "2147919243"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Thamera"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "QWxsb3cgcGVybWlzc2lvbiB0byBjb250aW51ZQ==" ascii //weight: 1
        $x_1_2 = "QVBQX05FVw==" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

