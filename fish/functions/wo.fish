function wo -d "Work on a project"
    if test (count $argv) -lt 1
        echo "Usage: wo <project name>"
        return 1
    end
    set -l envname $argv[1]
    set -l envdir ~/Projects/$envname/venv
    set -l projdir ~/Projects/$envname
    if set -q VIRTUAL_ENV
        echo "Deactivating current virtualenv $VIRTUAL_ENV"
        deactivate
    end
    if test -d $envdir
        echo "Activating $envdir"
        source $envdir/bin/activate.fish
    else
        echo "Project has no virtualenv."
    end
    if test -d $projdir
        echo "Changing to project directory $projdir"
        cd $projdir
    end
    if test -d $projdir/app
        cd app
    end
end
