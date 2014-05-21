#add multiple files without typing them
git add .
#view logs with author and commit date
git log --format=fuller
#change author date
git commit --date="date " 
#date format : Day, Date [Mon]th Year HH:MM:SS +0700
#change commit date 
GIT_COMMITTER_DATE = "'date -R'" git commit --date "'date -R'" #for both

#alter a previosu by SHA reference
git filter-branch --env-filter \
"if test \$GIT_COMMIT = 'a10bc728edc972cc9fad2f75bb202c36d72ac842'
then
    export GIT_AUTHOR_DATE='Tue, 6 May 2014 22:40:00 +0100'
    export GIT_COMMITTER_DATE='Tue, 6 May 2014 22:40:00 +0100'
fi" && rm -fr "$(git rev-parse --git-dir)/refs/original/"


#adding multiple user to have ssh access same time.

Host another.github.com
	Hostname github.com
	PreferredAuthentications publickey
	IdentityFile ~/.ssh/another_id_rsa

#add repo url as
git remote set-url origin git@another.github.com:username/repo

#don't forge to ssh-add (should be with passphrase)
ssh-add key


	
	
