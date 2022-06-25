githubDelRepo(){
    if [[ $# != 2 ]] ; then
        echo "Needs username and repo-name as args 1 and 2 respectively."
    else
        curl -X DELETE -u "${1}" https://api.github.com/repos/"${1}"/"${2}"
    fi
}
