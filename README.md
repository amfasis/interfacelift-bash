# interfacelift-bash
Download images through bash from interfacelift.com

## Manual download
Run the script `interfacelift.sh` with the ID of the picture:

```bash
./interfacelift.sh 4195
```

## Automated download
You can also add a cronjob for `checknew.sh`. This script will search for .txt files in the directory where the scirpt is (supposedly somewhere in your home folder in a folder called `interfacelift-bash` since you cloned this from git ;-) ). The .txt file should contain the link to the picture. I use [Feedly](https://play.google.com/store/apps/details?id=com.devhd.feedly) on my Android to receive the latest updates, when I like a particular image I share it through [File Manager +](https://play.google.com/store/apps/details?id=com.alphainventor.filemanager) to this folder (File Manager+ creates a .txt file containing the rss item)
