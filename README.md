# devops.ansible.hardening_linux
Hardening Linux with ansible

---

**to start work**

- generate a pair of key 
```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```
- put a key pair in the current directory and name them in vagrant.rsa & vagrant.rsa.pub
- to start ssh-agent and add a private key to it
```bash
eval "$(ssh-agent -s )"
ssh-add ./vagrant.rsa
#to check:
ssh-add -L
```
- run command 
```bash
vagrant up
```
