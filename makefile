build:
	@docker-compose -p jfarm build
	@docker-compose -p jfarm pull proxy
run:
	@./setlocation.sh
	@docker-compose -p jfarm up -d nginx data master proxy
stop:
	@docker-compose -p jfarm stop
clean:	stop
	@docker-compose -p jfarm rm master nginx proxy
clean-data: clean
	@docker-compose -p jfarm rm -v data
clean-images:
	@docker rmi `docker images -q -f "dangling=true"`

