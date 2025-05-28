# Define the input and output file paths
$inputFilePath = "C:\Users\earth\Documents\poptracker\packs\TTYD-Randomizer-AP-Tracker\locations\Overworld.json"
$outputFilePath = "C:\Users\earth\Documents\poptracker\packs\TTYD-Randomizer-AP-Tracker\locations\output.json"

# Read the JSON file
$jsonContent = Get-Content -Path $inputFilePath -Raw | ConvertFrom-Json

# Function to recursively process the JSON object
function Process-Json {
    param ([PSCustomObject]$obj)

    foreach ($key in $obj.PSObject.Properties.Name) {
        if ($obj.$key -is [PSCustomObject]) {
            # Recursively process nested objects
            Process-Json -obj $obj.$key
        } elseif ($obj.$key -is [Array]) {
            # Process arrays
            for ($i = 0; $i -lt $obj.$key.Count; $i++) {
                if ($obj.$key[$i] -is [PSCustomObject]) {
                    Process-Json -obj $obj.$key[$i]
                }
            }
        } elseif ($key -in @("x", "y")) {
            # Multiply numeric x or y values by 2
            $obj.$key = [int]($obj.$key / 5.13)
        }
    }
}

# Process the JSON content
Process-Json -obj $jsonContent

# Save the modified JSON to a new file
$jsonContent | ConvertTo-Json -Depth 10 | Set-Content -Path $outputFilePath

Write-Host "Modified JSON saved to $outputFilePath"
