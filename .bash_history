ls
vim lab-iac-0205-2.pem
chmod 600 lab-iac-0205-2.pem 
vim ~/.ssh/config 
ssh 172.31.21.232 hostname
ls -al ~/.ssh/config 
vim ~/.ssh/config 
ssh 172.31.21.232 hostname
vim ~/.ssh/config 
ssh 172.31.21.232 hostname
vim web.yaml
ls
cat inv
cat web.yaml 
vim inv
ansible-playbook web.yaml -inv
vim  web.yaml 
vim inv
vim ~/.ssh/config 
ansible seoul -i inv -m shell -a hostname
ansible-playbook web.yaml -i inv
ls
ansible seoul -i inv -m copy -a "src=index.html dest=/var/www/html/index.html" --become
ansible-playbook web.yaml -i inv
home.html
vim home.html 
vim index.html 
ansible-playbook web.yaml -i inv
cat index.html
ansible seoul -i inv -m copy -a "src=index.html dest=/var/www/html/index.html" --become
ansible-playbook web.yaml -i inv
vim index.html 
ansible seoul -i inv -m copy -a "src=index.html dest=/var/www/html/index.html" --become
vim index.html 
ansible-playbook web.yaml -i inv
vim index.html 
ansible seoul -i inv -m copy -a "src=index.html dest=/var/www/html/index.html" --become
ping www.google.com 
for i in 172.31.7.218 172.31.11.199;do ping $i -c 3; done;
for i in 172.31.7.218 172.31.11.199;do ssh ec2-user@$i hostname; done;
ls /etc/ssh
clear
cat .ssh/known_hosts 
rm -rf .ssh/known_hosts 
ssh-keyscan 172.31.7.218 >> .ssh/known_hosts
cat .ssh/known_hosts 
ssh-keyscan 172.31.11.199 >> .ssh/known_hosts
cat .ssh/known_hosts 
ssh-keygen -q -N "" -f test.pem
ls
cat test.pem
cat .ssh/authorized_keys 
cd
clear
touch lab-iac-0205.pem
vim lab-iac-0205.pem 
chmod 600 lab-iac-0205.pem 
ls -l lab-iac-0205.pem 
ssh -i lab-iac-0205.pem ec2-user@171.31.7.218 hostname
ssh -i lab-iac-0205.pem ec2-user@172.31.7.218 hostname
ssh -i lab-iac-0205.pem ec2-user@172.31.11.199 hostname
for i in 172.31.7.218 172.31.11.199;do ssh lab-iac-0205.pem ec2-user@$i hostname; done;
for i in 172.31.7.218 172.31.11.199;do ssh -i lab-iac-0205.pem ec2-user@$i hostname; done;
ls ~/.ssh
clear;cd
cd .ssh
ls
touch config
ls
vim config 
cat config
vim config 
chmod 600 config
ssh 172.31.7.218 hostname
hostnmae
hostname
clear;cd
sudo yum update -y && sudo amazon-linux-extras install ansible2 -y
sudo ansible --version
ansible localhost -m ping
ansible localhost -m setup
ansible localhost -m setup | grep "ansible_distribution"
ansible localhost -m setup | grep "ansible_pkg"
cat /etc/ansible/hosts 
touch inv
clear
ls
vim inv
ansible all -i inv -m ping
ansible all -i inv -m setup | grep "ansible_distribution"
ansible all -i inv -m setup | grep "ansible_pkg_mgr"
vim inv
ansible seoul -i inv -m setup | grep "ansible_pkg_mgr"
vim inv
ansible seoul -i inv -m setup | grep "ansible_pkg_mgr"
ansible web1 -i inv -m setup | grep "ansible_pkg_mgr"
ansible web -i inv -m setup | grep "ansible_pkg_mgr"
ansible seoul -i inv -m shell -a hostname
ansible web -i inv -m shell -a hostname
ansible db1 -i inv -m shell -a hostname
ansible web1 -i inv -m shell -a hostname
ansible web1 -i inv -m shell -a "yum -y install http"
ansible web1 -i inv -m shell -a "sudo yum -y install http"
ansible seoul -i inv -m shell -a "sudo yum -y install http"
ansible seoul -i inv -m shell -a "sudo yum -y install httpd"
ansible seoul -i inv -m shell -a "sudo systemctl restart httpd"
ansible seoul -i inv -m shell -a "curl -L http://www.daum.net >> /var/www/html/index.html" --become
ansible seoul -i inv -m shell -a "sudo yum -y install httpd"
clear ;cd
ansible seoul -i inv -m yum -a "name=httpd state=present" --become
ansible seoul -i inv -m yum -a "name=httpd state=absent" --become
clear
ansible seoul -i inv -m yum -a "name=httpd state=present" --become
ansible seoul -i inv -m service -a "http" --become
ansible seoul -i inv -m service -a "name=httpd state=started" --become
ansible seoul -i inv -m command -a "which httpd"
ansible seoul -i inv -m command -a "which httpd" --become
echo "<h2> hello ansible </h2>" >> index.html
cat index.html 
ansible seoul -i inv -m copy -a  "src=./index.html dest=/var/www/html/index.html" --become
history
ansible seoul -i inv -m service -a "name=httpd state=stopped" --become
ansible seoul -i inv -m service -a "name=httpd state=stoped" --become
ansible seoul -i inv -m service -a "name=httpd state=stopped" --become
ansible seoul -i inv -m yum -a "name=httpd state=absent" --become
ansible seoul -i inv -m command -a "which httpd" --become
yum grouplist
touch web.yaml
vim web.yaml 
cat web.yaml
clear;cd
ansible-playbook web.yaml -i inv 
vim web.yaml
cat home.html
echo "<h2>HOME</h2>" > hom.html
vim web.yaml
ansible-playbook web.yaml -i inv 
vim web.yaml
ansible-playbook web.yaml -i inv 
ls
mv hom.html home.html
ansible-playbook web.yaml -i inv 
ls
ansible all -i inv -m ping
vim inv
ansible all -i inv -m ping
ls /etc/an*
ls /etc/ansible/
vim web.yaml 
cat web.yaml
clear;cd
echo "alias anpl='ansible-playbook'" >> ~/.bashrc
cat ~/.bashrc
source ~/.bashrc
anpl localhost -m setup
anpl web.yaml -i inv
vim web.yaml 
anpl web.yaml -i inv
:wq
vim web.yaml 
anpl web.yaml -i inv
vim web.yaml 
anpl web.yaml -i inv
vim web.yaml 
anpl web.yaml -i inv
vim web.yaml 
anpl -i inv web.yaml
ansible seoul -m shell -a "ls /var/www/html" --become
ansible seoul -i inv -m shell -a "ls /var/www/html" --become
ansible seoul -i inv -m shell -a "ls -al  /var/www/html" --become
clear ;vim web.yaml 
anpl -i inv web.yaml
ansible seoul -i inv -m shell -a "cat /var/www/html/a.txt" --become
clear ;vim web.yaml 
anpl -i inv web.yaml
ansible seoul -i inv -m shell -a "cat /var/www/html/a.txt" --become
clear
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/http.conf" --become
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf" --become
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf | grep Listen" --become
vim web.yaml 
anpl -i inv web.yaml 
vim web.yaml 
anpl -i inv web.yaml 
cat web.yaml 
sudo cat /etc/httpd/conf/httpd.conf | grep 'Listen'
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf | grep Listen" --become
sudo getenforce
sudo setenforce 0  # 임시 비활성화
anpl -i inv web.yaml 
vim web.yaml 
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf | grep Listen" --become
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf" --become
vim web.yaml 
anpl -i inv web.yaml 
vim web.yaml 
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf | grep Listen" --become
vim web.yaml 
anpl -i inv web.yaml 
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf | grep Listen" --become
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf" --become
anpl -i inv web.yaml 
vim web.yaml 
anpl -i inv web.yaml 
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf" --become
vim web.yaml 
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf" --become
anpl -i inv web.yaml 
ansible seoul -i inv -m shell -a "cat /etc/httpd/conf/httpd.conf | grep Listen" --become
vim web.yaml 
anpl -i inv web.yaml 
vim inv
clear;touch local.yaml
ls
vim local.yaml 
anpl -i inv local.yaml 
vim local.yaml 
anpl -i inv local.yaml 
vim local.yaml 
anpl local.yaml 
vim local.yaml 

clear; touch vars.yaml
vim vars.yaml 
vim local.yaml 
anpl local.yaml 
vim local.yaml 
anpl local.yaml 
vim local.yaml 
anpl local.yaml 
clear ; vim local.yaml 
anpl local.yaml 
clear;cd
ping 172.31.8.99
ping 172.31.2.83
clear
ssh-keyscan 172.31.8.99 >> ~/.ssh/known_hosts
ssh-keyscan 172.31.2.83 >> ~/.ssh/known_hosts
cat ~/.ssh/config 
vim ~/.ssh/config 
ls
ansible 172.31.8.99 -m ping
ansible 172.31.1.28 -m ping
ssh 172.31.8.99 hostname
ls -l ~/.ssh/config
vim ~/.ssh/config 
ssh 172.31.8.99 hostname
ssh 172.31.2.83 hostname
vim ~/.ssh/config 
vim inv
ansible 172.31.1.28 -m ping
ansible all -i inv -m ping
vim ~/.ssh/config 
ansible all -i inv -m ping
vim ~/.ssh/config 
ansible all -i inv -m ping
wq
vim ~/.ssh/config 
vim inv
vim ~/.ssh/config 
ansible all -i inv -m ping
vim inv
ansible all -i inv -m ping
ansible amazon -i inv -m setup > amazon.txt
ansible ubuntu -i inv -m setup > ubuntu.txt
cat amazon.txt 
rm -rf amazon.txt 
ansible amazon -i inv -m setup > amazon.txt
cat amazon.txt | grep -e "ansible_distribution"
cat amazon.txt | grep -e "ansible_pkg_mgr"
cat ubuntu.txt | grep -e "ansible_pkg_mgr"
cat ubuntu.txt | grep -e "ansible_distribution"
clear
touch webserver.yaml
vim webserver.yaml 
anpl -i inv webserver.yaml 
touch remove_webserver.yaml
vim remove_webserver.yaml 
anpl -i inv remove_webserver.yaml 
vim remove_webserver.yaml 
anpl -i inv remove_webserver.yaml 
vim remove_webserver.yaml 
anpl -i inv remove_webserver.yaml 
anpl -i inv webserver.yaml 
anpl -i inv remove_webserver.yaml 
vim remove_webserver.yaml 
anpl -i inv remove_webserver.yaml 
anpl -i inv webserver.yaml 
clear
cp webserver.yaml amazon.yaml
cp webserver.yaml ubuntu.yaml
cp webserver.yaml include_tasks_webserver.yaml
vim amazon.yaml 
vim ubuntu.yaml 
vim include_tasks_webserver.yaml 
anpl -i inv include_tasks_webserver.yaml 
vim ubuntu.yaml 
cat amazon.
cat amazon.yaml
anpl -i inv include_tasks_webserver.yaml 
vim ubuntu.yaml 
anpl -i inv include_tasks_webserver.yaml 
vim ubuntu.yaml 
anpl -i inv include_tasks_webserver.yaml 
anpl -i inv remove_webserver.yaml 
vim webserver.yaml 
vim remove_webserver.yaml 
vim ubuntu.yaml 
anpl -i inv remove_webserver.yaml 
anpl -i inv include_tasks_webserver.yaml 
vim ubuntu.yaml 
cat ubuntu.yaml 
cat amazon.yaml
vim ubuntu.yaml 
anpl -i inv include_tasks_webserver.yaml 
anpl -i inv remove_webserver.yaml 
cat remove_webserver.yaml 
ls
vi amazon.yaml 
vi include_tasks_webserver.yaml 
vi amazon.yaml 
vim  remove_webserver.yaml 
anpl -i inv remove_webserver.yaml 
anpl -i inv include_tasks_webserver.yaml 
anpl -i inv remove_webserver.yaml 
vim install_nginx_if.yaml
anpl install_nginx_if.yaml 
vim install_nginx_if.yaml
anpl -i inv install_nginx_if.yaml 
vim install_nginx_if.yaml
anpl -i inv install_nginx_if.yaml 
vim install_nginx_if.yaml
anpl -i inv install_nginx_if.yaml 
vim install_nginx_if.yaml
clear
ansible ubuntu -i inv -m setup
anpl -i inv remove_webserver.yaml 
cat inv
history
cat ~/.bashrc
vim ~/.bashrc
anpl remove_webserver.yaml 
vim ~/.bashrc
vim ubuntu.yml
rm ubuntu.yml
vim ubuntu.yaml 
vim include_tasks_webserver.yaml 
anpl -i inv include_tasks_webserver.yaml 
vim inv
anpl -i inv include_tasks_webserver.yaml 
vim inv
anpl -i inv include_tasks_webserver.yaml 
vim include_tasks_webserver.yaml 
vim inv
vim include_tasks_webserver.yaml 
anpl -i inv include_tasks_webserver.yaml 
vim include_tasks_webserver.yaml 
vim inv
