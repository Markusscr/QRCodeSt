#==================================================================#
# Author    -   Markus Schanche                                    #
# Title     -   Trainee                                            #
# Name      -   New-QRCodeSt                                       #
# Version   -   1.0.1                                              #
#                                                                  #
# Original Module by Dr. Tobias Weltner                            #
# https://www.powershellgallery.com/packages/QRCodeGenerator/1.1   #
#                                                                  #
# Binary by Raffael Herrmann                                       #
# https://github.com/codebude/QRCoder/wiki                         #
#                                                                  #
#==================================================================#

# The Function Itself

function New-QRCodeSt
{

    # Sets the parameters for the function

    param
    (
        
        # The info stored in the QR Code

        [Parameter(Mandatory)]
        [string]
        $Info,
        
        [ValidateRange(10,2000)]
        [int]
        $Width = 100,

        [Switch]
        $Show,

       # The Out Path for the PNG of the Code

        [string]
        $OutPath = "$env:temp\qrcode.png"
    )
    
    # Adds the info to the QR Code

    $QRCode = $Info

    # Makes use of the DLL Provided by the module to generate the QR Code

    Add-Type -Path $PSScriptRoot\binaries\QRCoder.dll
    
    $generator = New-Object -TypeName QRCoder.QRCodeGenerator
    $data = $generator.CreateQrCode($QRCode, 'Q')
    $code = new-object -TypeName QRCoder.PngByteQRCode -ArgumentList ($data)
    $byteArray = $code.GetGraphic($Width)
    [System.IO.File]::WriteAllBytes($outPath, $byteArray)

    if ($Show) { Invoke-Item -Path $outPath }
}
