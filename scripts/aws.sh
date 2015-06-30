awskeys-withparam() {
    awskeys-withparam_usage() { echo "awskeys-withparam: [--profile <arg>]" 1>&2; exit; }
    local OPTIND OPTARG optspec optchar profile
    optspec=":-:"
    while getopts "$optspec" optchar; do
      case "${optchar}" in
        -)
          case "${OPTARG}" in
            profile)
              val="${!OPTIND}"; OPTIND=$(( $OPTIND + 1 ))
              profile=${val}
              shift 2
              ;;
            *)
              ;;
           esac
       esac
    done
    if [[ -z ${profile} ]]; then
      $(aws-keys env $1) && command aws ${@:2}
    else
      $(aws-keys env ${profile}) && command aws ${*}
    fi
    unset AWS_ACCESS_KEY_ID AWS_ACCESS_KEY AWS_SECRET_ACCESS_KEY AWS_SECRET_KEY
}
alias aws=awskeys-withparam
