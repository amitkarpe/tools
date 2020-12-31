

export app=tiny
export IMAGE=amitkarpe/${app}

all:
	docker build -t $${IMAGE} . ; docker push $${IMAGE}
	
run: stop
	docker run -it --rm --name $${app} -d amitkarpe/$${app}	
	docker exec -it $${app} sh

stop:
	docker rm -f $${app}
#	docker kill $${app}
