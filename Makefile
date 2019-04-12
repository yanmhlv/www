PROJECT ?= ${PWD}
PUBLIC = ${PROJECT}/public

.PHONY: generate
generate:
	@echo ${PROJECT}
	@echo ${PUBLIC}
	@hugo
	cd ${PUBLIC} && git add . \
		&& git commit -m 'rebuilding site `date`' \
		&& git push origin master
	@cd ${PROJECT}
