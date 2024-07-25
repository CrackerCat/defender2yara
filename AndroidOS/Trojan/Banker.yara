rule Trojan_AndroidOS_Banker_F_2147753795_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.F!MTB"
        threat_id = "2147753795"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_ELFHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {ff 97 a8 c8 8d d2 28 4c ac f2 88 ad cc f2 88 0c e0 f2 08 6b 20 f8 e0 a3 00 91 7a fe ff 97 68 aa 8c d2 88 8e ae f2 28 cd cd f2 e8 0c e0 f2 08 6b 20 f8 88 02 40 f9 e3 00 00 b0 63 24 16 91 e2 a3 00 91}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Banker_A_2147755547_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.A!MTB"
        threat_id = "2147755547"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "com/woori/WooriAcountInfo" ascii //weight: 1
        $x_1_2 = "AcountPwdActivity" ascii //weight: 1
        $x_1_3 = "com/woori/view" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Banker_D_2147763062_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.D!MTB"
        threat_id = "2147763062"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {35 12 32 00 d1 95 11 24 d0 09 d0 1a 14 00 99 90 00 00 93 08 05 09 b0 80 91 08 09 00 b0 58 da 08 08 00 48 0a 03 02 b0 a8 93 0a 05 05 db 0a 0a 01 df 0a 0a 01 b0 a8 b4 55 b0 58 dc 05 02 02 48 05 07 05 b7 85 8d 55 4f 05 04 02 14 05 ec 64 01 00 92 08 09 00 b0 58 14 05 38 02 01 00 b0 85 d8 02 02 01}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Banker_G_2147779964_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.G!MTB"
        threat_id = "2147779964"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "/private/add_log.php" ascii //weight: 1
        $x_1_2 = "SEARCH BANK CLIENT" ascii //weight: 1
        $x_1_3 = "/tuk_tuk.php" ascii //weight: 1
        $x_1_4 = "/privatbank/" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Banker_T_2147780749_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.T!MTB"
        threat_id = "2147780749"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "card information" ascii //weight: 1
        $x_1_2 = "billing credential" ascii //weight: 1
        $x_1_3 = "com.slempo.baseapp.MainServiceStart" ascii //weight: 1
        $x_1_4 = "COMMBANK_IS_SENT" ascii //weight: 1
        $x_1_5 = "intercept_sms_start" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Banker_I_2147781670_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.I!MTB"
        threat_id = "2147781670"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "grppl.android.shell.CMBlloydsTSB73" ascii //weight: 1
        $x_1_2 = "htsu.hsbcpersonalbanking" ascii //weight: 1
        $x_1_3 = "labanquepostale.accountaccess" ascii //weight: 1
        $x_1_4 = "trackgoogle.at/angelkelly" ascii //weight: 1
        $x_1_5 = "/dev/cpuctl/tasks" ascii //weight: 1
        $x_1_6 = "tsb.mobilebank" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Banker_O_2147787499_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.O"
        threat_id = "2147787499"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "makeA11yServiceInfo" ascii //weight: 2
        $x_2_2 = "doRecvUser" ascii //weight: 2
        $x_2_3 = "doSuckBallsThread" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Banker_M_2147787532_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.M"
        threat_id = "2147787532"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "KEY_TELECOMS_NAME" ascii //weight: 1
        $x_1_2 = "x0000mc" ascii //weight: 1
        $x_1_3 = "KEY_LATEST_SMS_TIME" ascii //weight: 1
        $x_1_4 = "mWindowIsShowing:" ascii //weight: 1
        $x_1_5 = "blackList Update number:" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Banker_P_2147788287_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.P"
        threat_id = "2147788287"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "getRecvUsertFilter" ascii //weight: 1
        $x_1_2 = "doMMSthread" ascii //weight: 1
        $x_1_3 = "BlockHardwareButtons" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Banker_A_2147793884_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.A"
        threat_id = "2147793884"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "13"
        strings_accuracy = "High"
    strings:
        $x_10_1 = {91 02 05 04 23 20 9f 06 12 01 91 02 05 04 35 21 0f 00 62 02 b5 00 90 03 04 01 4a 02 02 03 b7 62 8e 22 50 02 00 01 d8 01 01 01 28 f0}  //weight: 10, accuracy: High
        $x_1_2 = "loadDataWithBaseURL" ascii //weight: 1
        $x_1_3 = "getMessageBody" ascii //weight: 1
        $x_1_4 = "sendTextMessage" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Banker_GV_2147794722_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.GV!MTB"
        threat_id = "2147794722"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "switchObjectToInt" ascii //weight: 1
        $x_1_2 = "send_notify" ascii //weight: 1
        $x_1_3 = "up_app" ascii //weight: 1
        $x_1_4 = "run_pattern" ascii //weight: 1
        $x_1_5 = "run_tel" ascii //weight: 1
        $x_1_6 = "touch_click" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Banker_XJ_2147798143_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.XJ"
        threat_id = "2147798143"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {d8 04 04 52 48 07 03 08 14 09 50 2e 97 00 91 01 09 01 dc 09 08 03 48 09 06 09 da 0b 04 50 91 0b 01 0b da 04 04 00 b3 b4 b0 04 b0 74 93 07 01 01 b1 a7 b0 74 94 07 01 01 b0 74 b7 94 8d 44 4f 04 05 08 13 04 24 00 b3 b4 b0 14 d8 07 04 a8 d8 08 08 01}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Banker_SG_2147798836_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.SG!MTB"
        threat_id = "2147798836"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "https://m.mingle2.com/" ascii //weight: 1
        $x_1_2 = "1.2.make_knock_only" ascii //weight: 1
        $x_1_3 = "MTQzMjQ0MTU6OjoOcrsGLoM=" ascii //weight: 1
        $x_1_4 = "Njc4NTUxODQ6OjppSkotPzvK3w6LAmIN1A==" ascii //weight: 1
        $x_1_5 = "setJavaScriptCanOpenWindowsAutomatically" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Banker_E_2147806381_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.E"
        threat_id = "2147806381"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {18 00 0a 03 52 84 ?? ?? 52 85 ?? ?? 14 06 48 b0 0e 00 14 07 1f 5a 01 00 92 05 05 06 b1 54 b1 74 59 84 ?? ?? 38 03 3e 00 52 84 ?? ?? 52 85 ?? ?? da 04 04 2c d8 04 04 42 b0 54 59 84 ?? ?? 6e 10 ?? ?? 08 00 0c 04 12 05 12 56 35 65 10 00 52 86 ?? ?? 52 87 ?? ?? d8 06 06 f0 d8 06 06 2b b1 76 59 86 ?? ?? d8 05 05 01 28 f0 38 03 1b 00 54 83 ?? ?? 6e 53 ?? ?? 18 49 35 20 14 00 52 89 ?? ?? 52 81 ?? ?? 14 03 4e 21 0e 00 14 04 41 a6 04 00 b3 19 b0 39 b0 49 59 89 ?? ?? d8 00 00 01 28 ed}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Banker_AG_2147808662_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.AG"
        threat_id = "2147808662"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "TSK_FINISH_ACT_OK" ascii //weight: 1
        $x_1_2 = "PP_OU_CT_CONFIRMAR..." ascii //weight: 1
        $x_1_3 = "RESET_ACT_REC" ascii //weight: 1
        $x_1_4 = "CT_DATA_OK" ascii //weight: 1
        $x_1_5 = "KEY_C_INSERTED" ascii //weight: 1
        $x_1_6 = "REVISADO_ACT_OK" ascii //weight: 1
        $x_1_7 = "F_CONFIRMADO" ascii //weight: 1
        $x_1_8 = "btn_tr_action" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (5 of ($x*))
}

rule Trojan_AndroidOS_Banker_AM_2147817654_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.AM"
        threat_id = "2147817654"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "GxQ4EAAOEzwBBAkPARU=" ascii //weight: 1
        $x_1_2 = "OwEJBysOChcEBhM6AQQGARcBEQ==" ascii //weight: 1
        $x_1_3 = "BAUJCQEEOxAIFg==" ascii //weight: 1
        $x_1_4 = "GxQ4CwkSOxAQBwoBEDgWGg0=" ascii //weight: 1
        $x_1_5 = "GwEJBzsMFyEcMgIKFwgAAwQQQ1hF" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (3 of ($x*))
}

rule Trojan_AndroidOS_Banker_V_2147827783_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.V!MTB"
        threat_id = "2147827783"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "COMMBANK_IS_SENT" ascii //weight: 2
        $x_1_2 = "com.slempo.service.activities" ascii //weight: 1
        $x_1_3 = "LISTENING_SMS_ENABLED" ascii //weight: 1
        $x_1_4 = "INTERCEPTING_INCOMING_ENABLED" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Banker_B_2147831947_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.B"
        threat_id = "2147831947"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "AndrodMode" ascii //weight: 1
        $x_1_2 = "URL_APPLOGS" ascii //weight: 1
        $x_1_3 = "sendSmstoerver" ascii //weight: 1
        $x_1_4 = "myApp:wakeunlocker" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Banker_H_2147832599_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.H!MTB"
        threat_id = "2147832599"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "sendLogsKeylogger" ascii //weight: 1
        $x_1_2 = "logsContacts" ascii //weight: 1
        $x_1_3 = "sendLogsSMS" ascii //weight: 1
        $x_1_4 = "swapSmsMenager" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Banker_AA_2147834048_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.AA!MTB"
        threat_id = "2147834048"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "com.yjdlsoft.mtrsv" ascii //weight: 1
        $x_1_2 = "pre_key_server_url" ascii //weight: 1
        $x_1_3 = "pre_key_pri_key" ascii //weight: 1
        $x_1_4 = "pre_key_server_index" ascii //weight: 1
        $x_1_5 = "pre_key_security_package" ascii //weight: 1
        $x_1_6 = "f87ef353bf46cea275f9e893550b91a9" ascii //weight: 1
        $x_1_7 = "e797d16ec070bfed466c9a6e4a840375" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (5 of ($x*))
}

rule Trojan_AndroidOS_Banker_B_2147839055_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.B!MTB"
        threat_id = "2147839055"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {35 09 36 00 d1 73 11 24 48 07 02 09 d0 55 d0 1a dc 0a 09 03 48 0a 01 0a 14 0b 99 90 00 00 93 0c 03 05 b0 cb 91 0c 05 0b b0 3c da 0c 0c 00 b0 7c 93 07 03 03 db 07 07 01 df 07 07 01 b0 7c b4 33 b0 3c 97 03 0c 0a 8d 33 4f 03 06 09}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Banker_C_2147840490_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.C!MTB"
        threat_id = "2147840490"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {35 02 35 00 d1 11 11 24 48 06 03 02 d0 44 d0 1a dc 09 02 03 48 09 08 09 14 0a 99 90 00 00 93 0b 01 04 b0 ba 91 0b 04 0a b0 1b da 0b 0b 00 b0 6b 93 06 01 01 db 06 06 01 df 06 06 01 b0 6b b4 11 b0 1b 97 01 0b 09 8d 11 4f 01 05 02}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Banker_J_2147840957_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.J!MTB"
        threat_id = "2147840957"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {b0 82 94 08 00 00 91 09 05 02 b0 09 da 09 09 00 b0 97 b3 00 db 00 00 01 df 00 00 01 b0 70 b0 80 b7 30 8d 00 8d 00 8d 00 4f 00 06 04 d8 03 04 01 14 00 ec 64 01 00 92 04 05 02 14 07 38 02 01 00 b0 74 b0 40 01 34}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Banker_L_2147842348_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.L!MTB"
        threat_id = "2147842348"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {d1 11 11 24 48 04 02 07 d0 33 d0 1a dc 08 07 02 48 08 06 08 14 0a 99 90 00 00 93 0b 01 03 b0 ba 91 0b 03 0a b0 1b da 0b 0b 00 b0 4b 93 04 01 01 db 04 04 01 df 04 04 01 b0 4b b4 11 b0 1b 97 01 0b 08}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Banker_M_2147843049_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.M!MTB"
        threat_id = "2147843049"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {35 07 2a 00 48 08 03 07 d0 59 d7 dd dc 0a 07 03 48 0a 01 0a 14 0b a5 6f 0a 00 91 0c 09 05 b1 bc 92 0b 09 05 b0 bc da 0c 0c 00 b0 8c b3 99 db 09 09 01 df 08 09 01 b0 8c 94 08 05 05 b0 8c 97 08 0c 0a 8d 88 4f 08 06 07 13 08 26 05 b3 58 d8 07 07 01}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Banker_K_2147843267_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.K!MTB"
        threat_id = "2147843267"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {4c 63 6f 6d 2f 76 [0-3] 2f 68 64 66 63 2f 72 65 77 61 72 64 73 2f 61 63 74 69 76 69 74 69 65 73}  //weight: 1, accuracy: Low
        $x_1_2 = "etCardNumber" ascii //weight: 1
        $x_1_3 = "startMyOwnForeground" ascii //weight: 1
        $x_1_4 = "etCcv" ascii //weight: 1
        $x_1_5 = "HDFC Rewards" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Banker_N_2147844349_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.N!MTB"
        threat_id = "2147844349"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {35 06 2a 00 48 07 03 06 d0 28 d7 dd dc 09 06 02 48 09 01 09 14 0a a5 6f 0a 00 91 0b 08 02 b1 ab 92 0a 08 02 b0 ab da 0b 0b 00 b0 7b b3 88 db 08 08 01 df 07 08 01 b0 7b 94 07 02 02 b0 7b 97 07 0b 09 8d 77 4f 07 05 06 13 07 26 05 b3 27 d8 06 06 01 28 d7}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Banker_O_2147845044_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.O!MTB"
        threat_id = "2147845044"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {35 06 2a 00 48 07 02 06 d0 48 d7 dd dc 0a 06 03 48 0a 01 0a 14 0b a5 6f 0a 00 91 0c 08 04 b1 bc 92 0b 08 04 b0 bc da 0c 0c 00 b0 7c b3 88 db 08 08 01 df 07 08 01 b0 7c 94 07 04 04 b0 7c 97 07 0c 0a 8d 77 4f 07 05 06 13 07 26 05 b3 47 d8 06 06 01 28 d7}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Banker_P_2147846011_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.P!MTB"
        threat_id = "2147846011"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {35 04 2a 00 48 07 02 04 d0 68 d7 dd dc 09 04 02 48 09 01 09 14 0a a5 6f 0a 00 91 0b 08 06 b1 ab 92 0a 08 06 b0 ab da 0b 0b 00 b0 7b b3 88 db 08 08 01 df 07 08 01 b0 7b 94 07 06 06 b0 7b 97 07 0b 09 8d 77 4f 07 05 04 13 07 26 05 b3 67 d8 04 04 01 28 d7}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Banker_Q_2147846372_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.Q!MTB"
        threat_id = "2147846372"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {35 07 2a 00 48 08 02 07 d0 39 d7 dd dc 0a 07 01 48 0a 01 0a 14 0b a5 6f 0a 00 91 0c 09 03 b1 bc 92 0b 09 03 b0 bc da 0c 0c 00 b0 8c b3 99 db 09 09 01 df 08 09 01 b0 8c 94 08 03 03 b0 8c 97 08 0c 0a 8d 88 4f 08 05 07 13 08 26 05 b3 38 d8 07 07 01 28 d7}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Banker_R_2147847753_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.R!MTB"
        threat_id = "2147847753"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {35 04 2a 00 48 07 02 04 d0 58 d7 dd dc 09 04 02 48 09 01 09 14 0a a5 6f 0a 00 91 0b 08 05 b1 ab 92 0a 08 05 b0 ab da 0b 0b 00 b0 7b b3 88 db 08 08 01 df 07 08 01 b0 7b 94 07 05 05 b0 7b 97 07 0b 09 8d 77 4f 07 06 04 13 07 26 05 b3 57 d8 04 04 01 28 d7}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_AndroidOS_Banker_U_2147888991_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.U"
        threat_id = "2147888991"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "save_sms0.php?phone=" ascii //weight: 2
        $x_2_2 = "atmac.php" ascii //weight: 2
        $x_1_3 = "S1m2s3L4i5s6t7n8e9r0" ascii //weight: 1
        $x_1_4 = "S1m2s3R4e5c6e7i8v9e0r" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_2_*) and 2 of ($x_1_*))) or
            ((2 of ($x_2_*))) or
            (all of ($x*))
        )
}

rule Trojan_AndroidOS_Banker_U_2147911937_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:AndroidOS/Banker.U!MTB"
        threat_id = "2147911937"
        type = "Trojan"
        platform = "AndroidOS: Android operating system"
        family = "Banker"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_DEXHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "com.bpm.banker" ascii //weight: 1
        $x_1_2 = "com/google/smsreader/MainActivity" ascii //weight: 1
        $x_1_3 = "smsFish/sendData.php" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

