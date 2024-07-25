rule Worm_Win32_Tespot_A_2147723403_0
{
    meta:
        author = "defender2yara"
        detection_name = "Worm:Win32/Tespot.A"
        threat_id = "2147723403"
        type = "Worm"
        platform = "Win32: Windows 32-bit platform"
        family = "Tespot"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = ":\\autorun.inf" ascii //weight: 1
        $x_1_2 = "[.ShellClassInfo]" ascii //weight: 1
        $x_1_3 = {3a 5c 52 45 43 59 43 4c 45 52 5c 53 2d ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 5c 73 76 63 68 6f 73 74 2e 65 78 65}  //weight: 1, accuracy: Low
        $x_1_4 = {3a 5c 52 45 43 59 43 4c 45 52 5c 53 2d ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 5c 73 70 6f 6f 6c 73 76 2e 65 78 65}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

