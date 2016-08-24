function wo -d "Activate a virtualenv"
    if test (count $argv) -lt 1
        echo "Usage: wo <environment name>"
        return 1
    end
    set -l envname $argv[1]
    set -l envdir ~/envs/$envname/venv
    set -l projdir ~/envs/$envname/project
    if set -q VIRTUAL_ENV
        echo "Deactivating current virtualenv $VIRTUAL_ENV"
        deactivate
    end
    if test -d $envdir
        echo "Activating $envdir"
        source $envdir/bin/activate.fish
    else
        echo "No such env."
    end
    if test -d $projdir
        echo "Changing to project directory $projdir"
        cd $projdir
    end
end
complete -x -c v -d "Project name" -a "(ls -1 /Users/eetu/envs)"
