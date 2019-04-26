function delete-all-images --description 'delete all current docker images'
	docker images | awk '{print $3}' | grep -v IMAGE | xargs docker rmi
end
