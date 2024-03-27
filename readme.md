# netapp oncommand
This conteiner create for run netapp oncomand and java web app
Its work with wsl2, must work on linux but not tested


For start this conteiner use `run.sh`

befor run jnlp add sites to java allowed in `jcontrol`

Comands:
```
javaws -verbose https://hostname/ucsm/ucsm.jnlp
javaws -verbose https://hostname/admin/public/asdm.jnlp
java -jar ./SystemManager.jar 
```

[github](https://github.com/vtarakhan/netapp)