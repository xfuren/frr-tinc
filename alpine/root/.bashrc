alias env='with-contenv env | sort'

service_down() {
    case "${1}" in
        all )
            echo "** Disabling all services"
            for service in /var/run/s6/legacy-services/* ; do
                echo "** Disabling s6 service '$(basename ${service})'"
                s6-svc -d /var/run/s6/legacy-services/$(basename ${service})
            done
        ;;
        * )
            if [ -d "/var/run/s6/legacy-services/$1" ] ; then
                echo "** Disabling s6 service '$1'"
                s6-svc -d /var/run/s6/legacy-services/$1
            fi
        ;;
    esac
}

service_list() {
    ls -1 /var/run/s6/legacy-services
}

service_reset() {
    case "${1}" in
        all )
            echo "** Resetting all services"
            for service in /var/run/s6/legacy-services/* ; do
                echo "** Reset s6 service '$(basename ${service})'"
                rm -rf /tmp/.container/$(basename ${service})
                #s6-svc -u /var/run/s6/legacy-services/$(basename ${service})
            done
        ;;
        * )
            if [ -d "/var/run/s6/legacy-services/$1" ] ; then
                echo "** Reset s6 service '$1'"
                rm -rf /tmp/.container/$1
            fi
        ;;
    esac
}

service_up() {
    case "${1}" in
        all )
            echo "** Enabling all services"
            for service in /var/run/s6/legacy-services/* ; do
                echo "** Enabling s6 service '$(basename ${service})'"
                s6-svc -u /var/run/s6/legacy-services/$(basename ${service})
            done
        ;;
        * )
            if [ -d "/var/run/s6/legacy-services/$1" ] ; then
                echo "** Enabling s6 service '$1'"
                s6-svc -u /var/run/s6/legacy-services/$1
            fi
        ;;
    esac
}

image_version() {
    for clname in /assets/.changelogs/* ; do
        version=$(head -n 1 $clname | awk '{print $2}')
        echo \"Image: $clname $version\"
    done
}

image_changelog() { echo "** Showing the most recent version entry changelog for tiredofit/tinc - See more at /assets/.changelogs" ; awk '/^##/{p++} p==2{print; exit} p>=1' /assets/.changelogs/tiredofit_docker-tinc.md | sed '$d' ;}
export PS1="[tiredofit/tinc:3.3.0 \t \w] $ "
zcat () {
    if [ -f "$@" ] ; then
        case "$@" in
            *.zst* )      /usr/bin/zstdcat "$@" ;;
            *.bz*)       /bin/zcat "$@" ;;
            *.gz*)       /bin/zcat "$@" ;;
            *.xz)        /bin/zcat "$@" ;;
        esac
    else
        echo "'$@' is not a valid file!"
    fi
}
alias env='with-contenv env | sort'

service_down() {
    case "${1}" in
        all )
            echo "** Disabling all services"
            for service in /var/run/s6/legacy-services/* ; do
                echo "** Disabling s6 service '$(basename ${service})'"
                s6-svc -d /var/run/s6/legacy-services/$(basename ${service})
            done
        ;;
        * )
            if [ -d "/var/run/s6/legacy-services/$1" ] ; then
                echo "** Disabling s6 service '$1'"
                s6-svc -d /var/run/s6/legacy-services/$1
            fi
        ;;
    esac
}

service_list() {
    ls -1 /var/run/s6/legacy-services
}

service_reset() {
    case "${1}" in
        all )
            echo "** Resetting all services"
            for service in /var/run/s6/legacy-services/* ; do
                echo "** Reset s6 service '$(basename ${service})'"
                rm -rf /tmp/.container/$(basename ${service})
                #s6-svc -u /var/run/s6/legacy-services/$(basename ${service})
            done
        ;;
        * )
            if [ -d "/var/run/s6/legacy-services/$1" ] ; then
                echo "** Reset s6 service '$1'"
                rm -rf /tmp/.container/$1
            fi
        ;;
    esac
}

service_up() {
    case "${1}" in
        all )
            echo "** Enabling all services"
            for service in /var/run/s6/legacy-services/* ; do
                echo "** Enabling s6 service '$(basename ${service})'"
                s6-svc -u /var/run/s6/legacy-services/$(basename ${service})
            done
        ;;
        * )
            if [ -d "/var/run/s6/legacy-services/$1" ] ; then
                echo "** Enabling s6 service '$1'"
                s6-svc -u /var/run/s6/legacy-services/$1
            fi
        ;;
    esac
}

image_version() {
    for clname in /assets/.changelogs/* ; do
        version=$(head -n 1 $clname | awk '{print $2}')
        echo \"Image: $clname $version\"
    done
}

image_changelog() { echo "** Showing the most recent version entry changelog for tiredofit/tinc - See more at /assets/.changelogs" ; awk '/^##/{p++} p==2{print; exit} p>=1' /assets/.changelogs/tiredofit_docker-tinc.md | sed '$d' ;}
export PS1="[tiredofit/tinc:3.3.0 \t \w] $ "
zcat () {
    if [ -f "$@" ] ; then
        case "$@" in
            *.zst* )      /usr/bin/zstdcat "$@" ;;
            *.bz*)       /bin/zcat "$@" ;;
            *.gz*)       /bin/zcat "$@" ;;
            *.xz)        /bin/zcat "$@" ;;
        esac
    else
        echo "'$@' is not a valid file!"
    fi
}
