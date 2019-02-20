#
# Module manifest for module 'QRCodeSt'
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'loader.psm1'

# Version number of this module.
ModuleVersion = '1.0.1'

# ID used to uniquely identify this module
GUID = '70ee87a0-ecfe-4648-8139-4ef660956b11'

# Author of this module
Author = 'Markus Schanche'

# Copyright statement for this module
Copyright = '2019 Markus Schanche, MIT License, based on work done by Raffael Herrmann and Dr. Tobias Weltner released under MIT license. Use at own risk. No warranties'

# Description of the functionality provided by this module
Description = 'Automatically Creates QR codes as PNG images filled with whatever info you want. Works on all PowerShell versions and editions'

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = '*'

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        # Tags = @('QRCode','PSEdition_Core','PSEdition_Desktop')

        # A URL to the license for this module.
        # LicenseUri = 'https://en.wikipedia.org/wiki/MIT_License'

    } # End of PSData hashtable

} # End of PrivateData hashtable

}

