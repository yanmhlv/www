PROJECT ?= ${PWD}
PUBLIC = ${PROJECT}/public

DATE = $(shell date)

.PHONY: generate
generate:
	@echo ${PROJECT}
	@echo ${PUBLIC}
	@hugo
	cd ${PUBLIC} && git add . \
		&& git commit -m 'rebuilding site ${DATE}' \
		&& git push origin master
	@cd ${PROJECT}
