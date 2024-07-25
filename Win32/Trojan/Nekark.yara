rule Trojan_Win32_Nekark_GPA_2147895463_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Nekark.GPA!MTB"
        threat_id = "2147895463"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Nekark"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "powershell.exe -W Hidden -nop -ep bypass -NoExit -E" ascii //weight: 2
        $x_2_2 = "JABoAG0ARwB1AFgA" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Nekark_NK_2147915401_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Nekark.NK!MTB"
        threat_id = "2147915401"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Nekark"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {0f 57 c0 8d 4b 0f 0f 11 44 24 1c 66 c7 44 24 1c 43 00 8d 59 f2 eb ?? 8b 4c 24 30 89 5c 24 18}  //weight: 4, accuracy: Low
        $x_1_2 = "Illkjmuueghu" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

