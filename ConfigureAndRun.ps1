$token = $env:GH_RUNNER_TOKEN
$organisation = $env:GH_RUNNER_ORG
$runnerName = $env:GH_RUNNER_NAME
$runnerGroup = $env:GH_RUNNER_GROUP

$gitHubUrl = 'https://github.com/{0}' -f $organisation

$env:RUNNER_ALLOW_RUNASROOT = "1"
./config.sh --unattended --url $gitHubUrl --token $token --name $runnerName --runnergroup $runnerGroup
./run.sh
