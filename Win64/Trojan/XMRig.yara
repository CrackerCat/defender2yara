rule Trojan_Win64_XMRig_CCAN_2147890127_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/XMRig.CCAN!MTB"
        threat_id = "2147890127"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "XMRig"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {29 d0 48 98 48 8d 15 ?? ?? ?? ?? 40 32 2c 02 41 88 2c 3c 48 83 c7 01 49 39 fd 0f 84}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

