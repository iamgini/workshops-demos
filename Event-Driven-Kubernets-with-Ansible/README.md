# Event-Driven-Kubernets-with-Ansible

```yaml
- name: Automatic Remediation of a web server
  hosts: all
  sources:
    - name: listen for alerts
      ansible.eda.alertmanager:
        host: 0.0.0.0
        port: 8000
  rules:
    - name: restart web server
      condition: event.alert.labels.job == "fastapi" and event.alert.status == "firing"
      action:
        run_playbook:
          name: ansible.eda.start_app
```


```shell
$ ansible-galaxy collection install sabre1041.eda
```

```shell
ansible-rulebook -i host --rulebook k8s-rulebook.yaml --verbose
```