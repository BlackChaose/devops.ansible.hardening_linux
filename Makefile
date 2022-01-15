run_test:
	ansible-playbook playbook_test.yaml -i hosts
run_prod:
	ansible-playbook playbook1.yaml -i hosts
test:
	ansible-lint playbook_test.yaml test
	ansible-playbook playbook_test.yaml -i hosts
prod:
	ansible-lint -p playbook1.yaml
	ansible-playbook playbook.yaml -i hosts

test-lint:
	ansible-lint playbook_test.yaml test

prod-lint:
	ansible-lint -p playbook1.yaml
