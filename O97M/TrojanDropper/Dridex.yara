rule TrojanDropper_O97M_Dridex_DQ_2147787378_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDropper:O97M/Dridex.DQ!MTB"
        threat_id = "2147787378"
        type = "TrojanDropper"
        platform = "O97M: Office 97, 2000, XP, 2003, 2007, and 2010 macros - those that affect Word, Excel, and PowerPoint"
        family = "Dridex"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_MACROHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "Environ(\"ALLUSERSPROFILE\") & \"\\bRNuYmzFVtUBAreUdKS.sct\"" ascii //weight: 1
        $x_1_2 = "rrqtYdDjYG.Range.Text" ascii //weight: 1
        $x_1_3 = "Split(ibOmQJdmayTAeNMZ, \"tJOWBksDjhoM\")" ascii //weight: 1
        $x_1_4 = ".Exec (EiFKNFOVqF)" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

