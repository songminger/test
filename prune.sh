		git fetch --all --prune
		git prune
		remotes=`git remote -v|awk '{print $1}'|uniq`
		for remote in $remotes;do
			git remote prune $remote
			echo "----- git prune remote: $remote ----"
		done
		
        du -sh 
        git gc
        du -sh
