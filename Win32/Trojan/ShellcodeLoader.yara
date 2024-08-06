rule Trojan_Win32_ShellcodeLoader_A_2147917888_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ShellcodeLoader.A!MTB"
        threat_id = "2147917888"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ShellcodeLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {48 89 45 f0 48 8b 45 f0 48 81 c4 d0 00 00 00 5d c3 55 48 81 ec 60 02 00 00 48 8d ac 24 80 00 00 00 48 89 8d f0 01 00 00 48 89 95 f8 01 00 00 4c 89 85 00 02 00 00 4c 89 8d 08 02 00 00 48 c7 85}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

