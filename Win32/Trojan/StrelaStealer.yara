rule Trojan_Win32_StrelaStealer_PB_2147846476_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StrelaStealer.PB!MTB"
        threat_id = "2147846476"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StrelaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b c1 33 d2 f7 f6 8a 82 ?? ?? ?? 00 30 44 0c 10 41 3b cf}  //weight: 1, accuracy: Low
        $x_1_2 = "Profiles\\Outlook" ascii //weight: 1
        $x_1_3 = "IMAP Password" ascii //weight: 1
        $x_1_4 = "Thunderbird\\Profiles" ascii //weight: 1
        $x_1_5 = "strela" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StrelaStealer_PC_2147850306_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StrelaStealer.PC!MTB"
        threat_id = "2147850306"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StrelaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {41 89 df 41 81 f7 ?? ?? ?? ?? 45 89 cc 41 81 e4 ?? ?? ?? ?? 45 21 fe 41 89 fd 41 81 e5 ?? ?? ?? ?? 45 21 fb 45 09 f4 45 09 dd 45 31 ec 41 09 f9 41 83 f1}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_StrelaStealer_PD_2147850307_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StrelaStealer.PD!MTB"
        threat_id = "2147850307"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StrelaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {33 d2 4d 8d 40 01 8b c3 ff c3 41 f7 f1 0f b6 0c 2a 41 30 48 ?? 3b de 72}  //weight: 4, accuracy: Low
        $x_1_2 = "Profiles\\Outlook" ascii //weight: 1
        $x_1_3 = "IMAP Password" ascii //weight: 1
        $x_1_4 = "Thunderbird\\Profiles" ascii //weight: 1
        $x_1_5 = "strela" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((4 of ($x_1_*))) or
            ((1 of ($x_4_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_StrelaStealer_ASS_2147912349_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/StrelaStealer.ASS!MTB"
        threat_id = "2147912349"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "StrelaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {c1 c0 05 8a cb d3 ca 8b 4c 24 10 2b 31 83 6c 24 10 08 33 d0 8a c8 8b 44 24 14 d3 ce 48 89 44 24 14 33 f3 85 c0}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

