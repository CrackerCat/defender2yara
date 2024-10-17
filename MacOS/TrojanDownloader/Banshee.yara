rule TrojanDownloader_MacOS_Banshee_A_2147923948_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDownloader:MacOS/Banshee.A!MTB"
        threat_id = "2147923948"
        type = "TrojanDownloader"
        platform = "MacOS: "
        family = "Banshee"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_MACHOHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {55 48 89 e5 41 56 53 48 81 ec 80 01 00 00 48 89 f3 41 89 fe 48 8b 05 85 08 00 00 48 8b 00 48 89 45 e8 c7 85 88 fe ff ff 0b 00 00 00 8b 85 88 fe ff ff 48 83 f8 13 77 24 48 8d 0d 81 02 00 00 48 63 04 81 48 01 c8 ff e0}  //weight: 1, accuracy: High
        $x_1_2 = {48 8b 0d 9f 06 00 00 48 8b 09 48 3b 4d e8 75 7a 48 81 c4 80 01 00 00 5b 41 5e 5d c3 48 b8 ce 70 a5 00 bc 05 cb 65 48 8d b5 70 fe ff ff 48 89 06 c6 46 08 6c 48 8b 1b 4c 8d b5 88 fe ff ff 4c 89 f7 e8 ec 02 00 00 41 f6 06 01 74 09 48 8b 95 98 fe ff ff}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

