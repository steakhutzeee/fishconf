function clone --description 'git clone simplified'
    set -q MY_PROJECTS; or set MY_PROJECTS $HOME/Projects

    if test (count $argv) -lt 1
        echo "clone: Expecting a repo argument" >&2
        return 1
    end

    # either we have a URL, a user/repo, or just a repo
    set --local giturl "$argv"
    set --local parts (string split '/' $argv)
    if [ (count $parts) -eq 1 ]
        set parts mattmc3 $parts
        set giturl "git@github.com:mattmc3/$argv"
    else if [ (count $parts) -eq 2 ]
        set giturl "git@github.com:$argv"
    end

    set --local destdir $MY_PROJECTS/(string join '/' $parts[-2] $parts[-1])
    if not test -d $destdir
        command git clone --recurse-submodules $giturl $destdir
    else
        echo "No need to clone, that directory already exists."
        echo "Taking you there."
    end
    cd $destdir
end
