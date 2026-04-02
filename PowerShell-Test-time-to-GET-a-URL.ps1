# PowerShell-Test-time-to-GET-a-URL.ps1

# URL to call
$url = "https://www.microsoft.com" # TODO: Modify this to the URL of each add-in page where you see slowness.
 
# Start timer
$stopwatch = [System.Diagnostics.Stopwatch]::StartNew()
 
# Perform GET request
$response = Invoke-WebRequest -Uri $url -Method GET -UseBasicParsing
 
# Stop timer
$stopwatch.Stop()
 
# Output results
Write-Host "Status Code : $($response.StatusCode)"
Write-Host "Elapsed Time: $($stopwatch.ElapsedMilliseconds) ms"
