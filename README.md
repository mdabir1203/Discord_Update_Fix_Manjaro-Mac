# Discord_Update_Fix_Manjaro-Mac

##Problem 
Discord doesn't update manually in Manjaro and Arch Linux. It makes a annoying display to download the update but it doesn't work. So found a workaround from the forum
exploiting the build_json file

Here I will show you the Picture --->>>

![image](https://user-images.githubusercontent.com/66947064/193479708-78f67da3-7b6e-4eb7-a44f-f64eb000cd6f.png)


## Solution

```1. Open Terminal --> write "find $(which discord)" ``` 

-->> This finds where discord installation files are. Also it shows the symbolic link to where its installed which is we are going to use here. \
--->> By Default it is in:
         **Manjaro(Arch):** **/opt/discord**  whereas it's showing in **/bin/discord ** \
         
  ![image](https://user-images.githubusercontent.com/66947064/193478965-cde372c7-2f06-4c19-a16b-23bd3bd76481.png)
         
\
-->> Next Go to the directory of resources to find the file **"build_info.json"** 

``` **2. cd /opt/resources/ **``` 


  ![image](https://user-images.githubusercontent.com/66947064/193479093-3aa9dcd2-2277-45e4-8c01-d7dfbfee4445.png)
\

## 
-->> Now comes the main part. We have to edit build_info.json to trick it to make discord executable understand it is indeed the latest update. So that it can trigger automatically ( Can't still figure out why this **bullshit** ) . Use VIM /Nano / Emacs or any other Text Editor you know.
\     
I used here VIM. When you open the file **build_info.json** you will find it like below:
    
  ![image](https://user-images.githubusercontent.com/66947064/193479184-1e369607-c152-4281-bacd-8e167244776c.png)

##
 -->> Now you have to change the line ``` "version": "0.0.XX" ``` to the latest version. To do that . Change XX to  whatever the latest version it is. Normally when you initially face the problem it will show you which version it wants to  get updated. Currently they are in **0.0.20** So next update would be  **0.0.21** . 
_** You might face trouble editing this file. So remember to use ultimate commannd _
      
      ```  chmod +wx ``` 

![image](https://user-images.githubusercontent.com/66947064/193479423-e080f81e-c9cd-484c-a6eb-2d25b8354657.png)

##
-->> After you do this . Run Discord through the terminal. Like you can do   ```  .opt/discord/Discord ``` 

-->> Then it will autoupdate . Enjoy 

# Next Plan :

a )   Make a bash  script to automate this -->> Already made a small version for it. Need some revise and fix for the sed access deny. \
b )   Maybe a Video / Animation soon 


Check the original post: https://forum.manjaro.org/t/how-can-i-update-discord/103040

Anybody who wants to contribute in troubleshooting and fixing small problems please let me know. Contribute anyhow and make people lives
easier !!!

