# 🚨 Work life balance is important! 🚨

People in tech spend too much time working late, tinkering with side projects, scrolling social media, whatever. A good nights sleep is important for both psychological wellbeing and phisiological recovery! I also recently took a short course on shell scripting, so there's that too.

This script switches your computer off at 11pm.

# Setup

Pretty simple, just clone this repo locally, navigate to the folder in your terminal and run the Makefile with:

```
make
```

You'll probably have to enter your admin password.

Check everything is set up with

```
launchctl list | grep scheduler
```

You should see a process called `nighttime-scheduler` in the results returned.

## Skip Bedtime 😴

Sometimes you might need to be up late, you're watching something on Netflix and don't want to get interrupted.
