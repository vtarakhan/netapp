# netapp oncommand
This conteiner created for run netapp oncomand and java web app

Its works with wsl2, must works on linux but its not tested

To start this conteiner use `run.sh`

Befor runing jnlp, add sites to java allowed in `jcontrol`

Comands:
```
javaws -verbose https://hostname/ucsm/ucsm.jnlp
javaws -verbose https://hostname/admin/public/asdm.jnlp
java -jar ./SystemManager.jar 
```
[github](https://github.com/vtarakhan/netapp)
