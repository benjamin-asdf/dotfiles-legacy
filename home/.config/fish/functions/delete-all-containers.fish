function delete-all-containers --description 'delete all current docker containers'
	docker container ls -a | awk '{print $2}' | grep -v CONTAINER | xargs docker rm
end
