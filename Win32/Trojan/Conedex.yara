rule Trojan_Win32_Conedex_A_2147651958_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Conedex.A"
        threat_id = "2147651958"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Conedex"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "OnExecEnd(id, fOk)" ascii //weight: 1
        $x_1_2 = "<dat><jst>" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Conedex_B_2147653733_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Conedex.B"
        threat_id = "2147653733"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Conedex"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "host.indexOf('" ascii //weight: 1
        $x_1_2 = "<dat><jst>" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Conedex_C_2147653734_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Conedex.C"
        threat_id = "2147653734"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Conedex"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "navigate(domain+'?search=' +" ascii //weight: 1
        $x_1_2 = "<dat><jst>" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

