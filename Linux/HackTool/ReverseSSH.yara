rule HackTool_Linux_ReverseSSH_A_2147888943_0
{
    meta:
        author = "defender2yara"
        detection_name = "HackTool:Linux/ReverseSSH.A!MTB"
        threat_id = "2147888943"
        type = "HackTool"
        platform = "Linux: Linux platform"
        family = "ReverseSSH"
        severity = "High"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_ELFHSTR_EXT"
        threshold = "17"
        strings_accuracy = "High"
    strings:
        $x_5_1 = "reverse_ssh/cmd/client" ascii //weight: 5
        $x_5_2 = "syscall.bind" ascii //weight: 5
        $x_5_3 = "UserAgent" ascii //weight: 5
        $x_1_4 = "ForceAttemptHTTP2" ascii //weight: 1
        $x_1_5 = "http.fakeLocker" ascii //weight: 1
        $x_1_6 = "subsystems.setuid" ascii //weight: 1
        $x_1_7 = "maxIncomingPayload" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((3 of ($x_5_*) and 2 of ($x_1_*))) or
            (all of ($x*))
        )
}

