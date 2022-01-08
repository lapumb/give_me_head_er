Param(
    [Parameter(Mandatory=$true, Position=0)]
    [string]$directory,
    [Parameter(Mandatory=$true, Position=1)]
    [string]$image,
    [Parameter(Mandatory=$false, Position=2)]
    [string]$image_width_inches="0",
    [Parameter(Mandatory=$false, Position=3)]
    [string]$image_height_inches="0"
)

Get-ChildItem -Path $directory -Filter *.docx | 
Foreach-Object {
    echo "Processing $_"
    python .\give_me_header.py --docx $_.FullName --image $image --width_inches $image_width_inches --height_inches $image_height_inches
}
