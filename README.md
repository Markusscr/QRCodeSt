# QRCodeST

Automatically Creates QR codes as PNG images filled with whatever info you want. Works on all PowerShell versions and editions

## Getting Started



### Prerequisites

All you need to use this module is a working windows machine or any able to run Powershell code.
This script works on all PowerShell Versions and editions, though if you want to find what version you have to report bugs.
You run this command:

```
$psversiontable
```

### Installing

PSGallery: https://www.powershellgallery.com/packages/QRCodeSt/1.0.1
Simply run the command below and you'll be ready to go as it retrieves the module from the Powershell Gallery.

```
 'Install-Module QRCodeSt' 
```

## Using the module

This module only adds one command as of now, this command allows you to create a QR-code with whatever information you put in it.

This is the command:

```
New-QRCodeSt
```

### Mandatory Parameters
The only mandatory parameter for this command is 'info', and this will contain the information the QR code will hold.

```
New-QRCodeSt -info [Value]
```
### Extra Parameters
You can also add the 'OutPath' parameter to decide where the PNG image that is generated will be saved.
```
New-QRCodeSt -info [Value] -OutPath [Path]
```

## Built With

* [Powershell ISE](https://docs.microsoft.com/en-us/powershell/scripting/components/ise/introducing-the-windows-powershell-ise?view=powershell-6) - The software used
* [Powershell Gallery](https://www.powershellgallery.com) - Uploading the Module

## Authors

* **Markus Schanche** - *The Module* - [GitHub](https://github.com/Markusscr)

## License

2019 Markus Schanche, MIT License, based on work done by Raffael Herrmann and Dr. Tobias Weltner released under MIT license. 
Use at own risk. No warranties- see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* This module is based on work done by Raffael Herrmann and Dr. Tobias Weltner released under MIT license.
