@echo
    
SoundVolumeView.exe /enable "VoiceMeeter VAIO3 Input" & SoundVolumeView.exe /enable "VoiceMeeter Input" & SoundVolumeView.exe /enable  "VoiceMeeter Aux Input"
SoundVolumeView.exe /enable "VoiceMeeter VAIO3 Output" & SoundVolumeView.exe /enable "VoiceMeeter Output" & SoundVolumeView.exe /enable  "VoiceMeeter Aux Output"

    nircmd regsetval binary "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\MTCUVC" "EnableMtcUvc" "0" 
    SoundVolumeView.exe /SetDefault "VoiceMeeter VAIO3 Input" all
    SoundVolumeView.exe /SetDefault "VoiceMeeter VAIO3 Output" all
        
    
Start "macro" /b "C:\Program Files (x86)\VB\Voicemeeter\VoicemeeterMacroButtons.exe" & call "C:\Program Files (x86)\VB\Voicemeeter\voicemeeter8.exe" 
     
SoundVolumeView.exe /SwitchDefault "VoiceMeeter VAIO3 Input" "Headphone" all
SoundVolumeView.exe /SwitchDefault "VoiceMeeter VAIO3 Output" "Headset Microphone" all
    taskkill /im VoicemeeterMacroButtons.exe /f 
        nircmd regsetval binary "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\MTCUVC" "EnableMtcUvc" "1" 
    SoundVolumeView.exe /disable "VoiceMeeter VAIO3 Input" & SoundVolumeView.exe /disable "VoiceMeeter Input" & SoundVolumeView.exe /disable "VoiceMeeter Aux Input"
    SoundVolumeView.exe /disable "VoiceMeeter VAIO3 Output" & SoundVolumeView.exe /disable "VoiceMeeter Output" & SoundVolumeView.exe /disable "VoiceMeeter Aux Output"
    

    


 