function abbr-set --description 'Set common abbreviations'
    abbr -a -- - 'cd -'
    abbr -a la 'ls -la'
    abbr -a ldot 'ls -ld .*'
    abbr -a ll 'ls -lGFh'
    abbr -a lsa 'ls -aGF'
    abbr -a nv nvim
    abbr -a up 'cd ..'
    abbr -a tarls 'tar -tvf'
    abbr -a untar 'tar -xv'
    abbr -a zz exit

    # quick nav
    abbr -a fconf 'cd $__fish_config_dir'
    abbr -a fishconf 'cd $__fish_config_dir'
    abbr -a fdot 'cd $__fish_config_dir'
    abbr -a zdot 'cd $ZDOTDIR'
    abbr -a dotf 'cd $DOTFILES'

    # git
    # abbr -a clone 'git clone git@github.com:mattmc3/'
    abbr -a gad 'git add'
    abbr -a gbn 'git rev-parse --abbrev-ref HEAD'
    abbr -a gcl 'git clean'
    abbr -a gcmt 'git commit -am '
    abbr -a gco 'git checkout'
    abbr -a gcob 'git checkout -b '
    abbr -a gcod 'git checkout develop'
    abbr -a gcom 'git checkout master'
    abbr -a get git
    abbr -a glg 'git log'
    abbr -a glog git\ log\ --graph\ --pretty=\'\%Cred\%h\%Creset\ -\%C\(auto\)\%d\%Creset\ \%s\ \%Cgreen\(\%ad\)\ \%C\(bold\ blue\)\<\%an\>\%Creset\'\ --date=short
    abbr -a gpll 'git pull'
    abbr -a gpristine 'git reset --hard && git clean -fdx'
    abbr -a gpsh 'git push'
    abbr -a gpsuo 'git push --set-upstream origin (git rev-parse --abbrev-ref HEAD)'
    abbr -a grm 'git rm'
    abbr -a grv 'git remote -v'
    abbr -a gsh 'git stash'
    abbr -a gst 'git status -sb'
    abbr -a gwhoami 'echo "user.name:" (git config user.name) && echo "user.email:" (git config user.email)'

    # golang
    abbr -a gob 'go build'
    abbr -a goc 'go clean'
    abbr -a god 'go doc'
    abbr -a gof 'go fmt'
    abbr -a gofa 'go fmt ./...'
    abbr -a gog 'go get'
    abbr -a goi 'go install'
    abbr -a gol 'go list'
    abbr -a gop 'cd $GOPATH'
    abbr -a gopb 'cd $GOPATH/bin'
    abbr -a gops 'cd $GOPATH/src'
    abbr -a gor 'go run'
    abbr -a got 'go test'
    abbr -a gov 'go vet'
end