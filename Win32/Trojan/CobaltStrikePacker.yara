rule Trojan_Win32_CobaltStrikePacker_GG_2147818360_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/CobaltStrikePacker.GG!MTB"
        threat_id = "2147818360"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "CobaltStrikePacker"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_20_1 = {66 0f ef c1 0f 11 84 05 ?? ?? ff ff 0f 10 ?? ?? ?? ?? ?? ?? 66 0f ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 66 0f ef c1 0f 11 84 05 ?? ?? ff ff 83 c0 40 3d}  //weight: 20, accuracy: Low
        $x_10_2 = {80 b4 05 a8 e6 ff ff 1b}  //weight: 10, accuracy: High
        $x_10_3 = {8a 88 e0 0b 01 10 80 f1 ?? 88 8c 05 dc fc ff ff 40 3d ?? ?? ?? ?? 72 e8}  //weight: 10, accuracy: Low
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_10_*))) or
            ((1 of ($x_20_*))) or
            (all of ($x*))
        )
}

