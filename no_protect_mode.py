import os
import subprocess
import time
print("tip:该脚本启动游戏避开小蓝熊。。。")

with open("steam_appid.txt", "w") as file:
    file.write("1245620")

print("steam_appid.txt created...success.")

process = subprocess.Popen(["eldenring.exe"])
print("Running eldenring.exe...success.")

process.wait()
print("Waiting for the game to close...")

print("Delete the steam_appid.txt.")
if os.path.exists("steam_appid.txt"):
    os.remove("steam_appid.txt")
