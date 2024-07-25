rule Trojan_Win32_DarkComet_RDA_2147837232_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/DarkComet.RDA!MTB"
        threat_id = "2147837232"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "DarkComet"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_AUTOITHSTR_EXT"
        threshold = "8"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "REGWRITE ( \"HKLM\" & $PREF & \"\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\System\"" ascii //weight: 1
        $x_1_2 = "\"ConsentPromptBehaviorAdmin\" , \"REG_DWORD\" , \"0\"" ascii //weight: 1
        $x_1_3 = "\"EnableLUA\" , \"REG_DWORD\" , \"0\"" ascii //weight: 1
        $x_1_4 = "$FILEOPEND = FILEOPEN ( $FILE , 2 + 8 )" ascii //weight: 1
        $x_1_5 = "$DECRYPT = _BASE64DECODE ( $CODE )" ascii //weight: 1
        $x_1_6 = "$EXE = BINARYTOSTRING ( $DECRYPT )" ascii //weight: 1
        $x_1_7 = "SHELLEXECUTE ( $FILE )" ascii //weight: 1
        $x_1_8 = "DIRREMOVE ( @TEMPDIR & \"\\\" & $FILENME , 1 )" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_DarkComet_AME_2147844797_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/DarkComet.AME!MTB"
        threat_id = "2147844797"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "DarkComet"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {8b 45 d4 8b 4d e8 2b 48 14 8b 45 d4 8b 40 0c 8b 55 d8 8b 75 e4 2b 72 14 8b 55 d8 8b 52 0c 8a 04 08 32 04 32 8b 4d d4 8b 55 e8 2b 51 14 8b 4d d4 8b 49 0c 88 04 11 8b 45 e4 40 89 45 e4 8b 45 e4 3b 45 e0 7e 04 83 65 e4 00 8b 45 e8 40 89 45 e8}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_DarkComet_ADK_2147894002_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/DarkComet.ADK!MTB"
        threat_id = "2147894002"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "DarkComet"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {50 6a 00 53 68 4c 28 1c 13 6a 00 6a 00 e8 dd 4f f8 ff db 6d e8 d8 25 24 2b 1c 13 db 7d e8 9b db 6d e8 d8 1d 1c 2b 1c 13 9b df e0 9e}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_DarkComet_ADK_2147894002_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/DarkComet.ADK!MTB"
        threat_id = "2147894002"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "DarkComet"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {8b ee 33 eb 23 e9 33 ee 03 fd 03 c7 8b f8 c1 e7 0c c1 e8 14 0b f8 03 f9 8b c7 8b 7a 08 03 3d 98 17 49 00 8b eb 33 e9 23 e8 33 eb 03 fd 03 f7 8b fe c1 e7 11 c1 ee 0f 0b fe 03 f8 8b f7}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_DarkComet_ADK_2147894002_2
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/DarkComet.ADK!MTB"
        threat_id = "2147894002"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "DarkComet"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {50 6a 00 68 00 04 00 00 8d 84 24 78 02 00 00 50 ff 74 24}  //weight: 2, accuracy: High
        $x_1_2 = "Hook procedure has been installed successfully" ascii //weight: 1
        $x_1_3 = "Keylogger is up and running" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_DarkComet_ADK_2147894002_3
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/DarkComet.ADK!MTB"
        threat_id = "2147894002"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "DarkComet"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {8b 4d cc 8d 45 d0 ba 2c 4e 48 00 e8 ?? ?? ?? ?? 8b 45 d0 e8 ?? ?? ?? ?? eb 20 8d 45 c4}  //weight: 2, accuracy: Low
        $x_1_2 = "DDOSHTTPFLOOD" ascii //weight: 1
        $x_1_3 = "BTRESULTUDP Flood|UDP Flood task finished" ascii //weight: 1
        $x_1_4 = "BTRESULTSyn Flood|Syn task finished" ascii //weight: 1
        $x_1_5 = "BTRESULTHTTP Flood|Http Flood task finished" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_DarkComet_ADC_2147897606_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/DarkComet.ADC!MTB"
        threat_id = "2147897606"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "DarkComet"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {51 50 6a 00 0f 29 84 24 ?? ?? ?? ?? ff d7 6a 00 6a 00 6a 00 8d 84 24}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_DarkComet_ADC_2147897606_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/DarkComet.ADC!MTB"
        threat_id = "2147897606"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "DarkComet"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {50 8b 45 fc e8 39 4d f8 ff 50 a1 d8 87 4a 00 50}  //weight: 1, accuracy: High
        $x_1_2 = {6a 00 6a 00 6a 00 6a 00 68 e4 0b 48 00 e8 5c e8 fa ff}  //weight: 1, accuracy: High
        $x_1_3 = {8d 45 f8 50 6a 00 53 68 68 09 49 00 6a 00 6a 00}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_DarkComet_ADR_2147899803_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/DarkComet.ADR!MTB"
        threat_id = "2147899803"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "DarkComet"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {52 56 50 ff d3 85 c0 75 12 8d 4c 24 10 51 ff d5 8d 54 24 10 52 ff 15 20 f1 40 00 6a 00 6a 00 6a 00 8d 44 24 1c 50}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_DarkComet_ND_2147910571_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/DarkComet.ND!MTB"
        threat_id = "2147910571"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "DarkComet"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "strcpyAmpWriteFile" ascii //weight: 1
        $x_1_2 = "deCharToMultiByB" ascii //weight: 1
        $x_1_3 = "ViBalQuery" ascii //weight: 1
        $x_1_4 = "yPaForSHgXObjPt" ascii //weight: 1
        $x_1_5 = "UnhAdZjp" ascii //weight: 1
        $x_1_6 = "wpohKText" ascii //weight: 1
        $x_1_7 = "7JAtomA" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_DarkComet_ADE_2147912276_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/DarkComet.ADE!MTB"
        threat_id = "2147912276"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "DarkComet"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {50 6a 00 53 68 2c 88 48 00 6a 00 6a 00 e8 ?? ?? ?? ?? db 6d e8 d8 25 ac 8a 48 00 db 7d e8 9b db 6d e8 d8 1d a4 8a 48 00 9b df e0 9e}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_DarkComet_AKM_2147912711_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/DarkComet.AKM!MTB"
        threat_id = "2147912711"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "DarkComet"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {50 6a 00 53 68 d8 36 15 00 6a 00 6a 00 e8 8b 40 f8 ff db 6d e8 d8 25 b0 39 15 00 db 7d e8 9b db 6d e8 d8 1d a8 39 15 00 9b df e0 9e}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

