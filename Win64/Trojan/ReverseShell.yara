rule Trojan_Win64_ReverseShell_CCAG_2147889362_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/ReverseShell.CCAG!MTB"
        threat_id = "2147889362"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "ReverseShell"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {48 8b 85 10 02 00 00 48 89 45 ?? 48 8b 85 ?? ?? ?? ?? 48 89 45 48 ?? 8b 85 ?? ?? ?? ?? 48 89 45}  //weight: 1, accuracy: Low
        $x_1_2 = "159.89.214.31" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_ReverseShell_ARS_2147908374_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/ReverseShell.ARS!MTB"
        threat_id = "2147908374"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "ReverseShell"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {48 8d 95 d0 0f 00 00 b8 00 00 00 00 b9 1e 00 00 00 48 89 d7 f3 48 ab 48 89 fa 89 02 48 83 c2 04}  //weight: 1, accuracy: High
        $x_1_2 = {48 8b 85 b0 13 00 00 8b 48 0c 48 8b 85 b0 13 00 00 8b 50 08 48 8b 85 b0 13 00 00 8b 40 04 41 89 c8 89 c1}  //weight: 1, accuracy: High
        $x_1_3 = {48 8b 85 b0 13 00 00 48 8b 40 10 89 c1 48 8b 85 b0 13 00 00 48 8b 50 20 48 8b 85 b8 13 00 00 41 89 c8 48 89 c1}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_ReverseShell_YAA_2147916450_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/ReverseShell.YAA!MTB"
        threat_id = "2147916450"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "ReverseShell"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "3_reverse_shell_undetect\\x64\\Release\\3_reverse_shell_undetect.pdb" ascii //weight: 1
        $x_1_2 = {c7 85 10 02 00 00 31 39 32 2e 48 8d 95 e0 01 00 00 c7 85 14 02 00 00 31 36 38 2e 48 8d 8d 10 02 00 00 c7 85 18 02 00 00 38 2e 31 30 f3 0f 7f 45 20 66 c7 85 1c 02 00 00 30 00}  //weight: 1, accuracy: High
        $x_1_3 = {c7 85 b0 02 00 00 43 72 65 61 48 8b c8 c7 85 b4 02 00 00 74 65 50 72 48 8b d8 c7 85 b8 02 00 00 6f 63 65 73 66 c7 85 bc 02 00 00 73 57}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_ReverseShell_YAB_2147916451_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/ReverseShell.YAB!MTB"
        threat_id = "2147916451"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "ReverseShell"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "2_app_reverseshell\\x64\\Release\\2_app_reverseshell.pdb" ascii //weight: 1
        $x_1_2 = "2_app_reverseshell, Version 1.0" wide //weight: 1
        $x_1_3 = "MY2APPREVERSESHELL" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

