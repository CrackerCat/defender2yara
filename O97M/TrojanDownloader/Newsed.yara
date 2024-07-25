rule TrojanDownloader_O97M_Newsed_A_2147729679_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDownloader:O97M/Newsed.A"
        threat_id = "2147729679"
        type = "TrojanDownloader"
        platform = "O97M: Office 97, 2000, XP, 2003, 2007, and 2010 macros - those that affect Word, Excel, and PowerPoint"
        family = "Newsed"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_MACROHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "Path = Environ(\"LOCALAPPDATA\") + \"\\\" + \"netwf\" + \".dat\"" ascii //weight: 1
        $x_1_2 = "PathPld = Environ(\"LOCALAPPDATA\") + \"\\\" + \"netwf\" + \".dll\"" ascii //weight: 1
        $x_1_3 = "PathPldBt = Environ(\"LOCALAPPDATA\") + \"\\\" + \"netwf\" + \".bat\"" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

