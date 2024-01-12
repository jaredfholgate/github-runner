$token = $env:GH_RUNNER_TOKEN
$url = $env:GH_RUNNER_URL
$runnerName = $env:GH_RUNNER_NAME
$runnerGroup = $env:GH_RUNNER_GROUP

$env:RUNNER_ALLOW_RUNASROOT = "1"

if( $null -eq $runnerGroup -or $runnerGroup -eq "") {
    ./config.sh --unattended --url $url --token $token --name $runnerName --replace
} else {
    ./config.sh --unattended --url $url --token $token --name $runnerName --runnergroup $runnerGroup --replace
}

./run.sh
