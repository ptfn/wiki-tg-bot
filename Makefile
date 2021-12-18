.PHONY: install
install:
	pip3 install -r requirements.txt
	cp wiki.service /etc/systemd/system/wiki.service
	systemctl daemon-reload

.PHONY: restart
restart:
	systemctl stop wiki.service
	systemctl start wiki.service

.PHONY: status
status:
	systemctl status wiki.service

.PHONY: stop
stop:
	systemctl stop wiki.service

.PHONY: start
start:
	systemctl start wiki.service
