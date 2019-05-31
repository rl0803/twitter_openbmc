FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-Add-web-entry-for-sol-log-download.patch \
            file://0002-Add-current-and-power-sensor-to-redfish-API.patch \
            "

SRCREV = "22c33710fed78a5c47446ee91ececf8b8ab104db"
