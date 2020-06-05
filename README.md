# SnowDownKB
Simple script to download public KBs in ITSM Tool named Service Now. It will create files with the KB number if the KB is visible.

You can change the KB number in line 2:
        for i in $(seq -f "%07g" 1 20000) # change the 1 20000 if you want to go for a different range.

You will need to edit the Instance Name prior to launch the script. Or you can add a variable and load it based in a parameter.

This was just a PoC to confirm that, by default, Service Now instances leave published KB available without authentication.
It could be a security risk due to the fact that it provides intel regarding your organisation, and a threat actor could use it.

Based on https://medium.com/@th3g3nt3l/multiple-information-exposed-due-to-misconfigured-service-now-itsm-instances-de7a303ebd56
