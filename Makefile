.PHONY: install
install:
	pip3 install -r requirements.txt
	cp wikibot.service /etc/systemd/system wikibot.service
	systemctl daemon-reload

.PHONY: restart
restart:
	systemctl stop wikibot.service
	systemctl start wikibot.service

.PHONY: status
status:
	systemctl status wikibot.service

.PHONY: stop
stop:
	systemctl stop wikibot.service