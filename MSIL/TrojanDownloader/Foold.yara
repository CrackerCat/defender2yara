rule TrojanDownloader_MSIL_Foold_SIBB_2147794729_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDownloader:MSIL/Foold.SIBB!MTB"
        threat_id = "2147794729"
        type = "TrojanDownloader"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Foold"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {07 0e 04 08 6f ?? ?? ?? ?? 08 28 ?? ?? ?? ?? 28 ?? ?? ?? ?? 6f ?? ?? ?? ?? 0b 07 0e 04 08 6f ?? ?? ?? ?? 08 28 ?? ?? ?? ?? 28 ?? ?? ?? ?? 6f ?? ?? ?? ?? 0b 07 0e 04 08 6f ?? ?? ?? ?? 08 28 ?? ?? ?? ?? 28 ?? ?? ?? ?? 6f ?? ?? ?? ?? 0b}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

