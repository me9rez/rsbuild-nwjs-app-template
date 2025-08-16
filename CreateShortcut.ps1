# 创建WScript.Shell对象
$WshShell = New-Object -ComObject WScript.Shell

# 设置桌面路径
$desktopPath = [System.Environment]::GetFolderPath('Desktop')

# 创建快捷方式对象（替换"MyApp"为您的应用名称）
$shortcut = $WshShell.CreateShortcut("$desktopPath\MyApp.lnk")

# 设置目标路径（替换为您的nw.exe实际路径）
$shortcut.TargetPath = "D:\nwjs-sdk-v0.102.1-win-x64\nw.exe"

# 设置应用目录作为参数（替换为您的应用目录实际路径）
$shortcut.Arguments = "D:\WorkSpace\rsbuild-nwjs-app-template"

# 可选：设置图标（如果有自定义图标）
# $shortcut.IconLocation = "C:\WorkSpace\rsbuild-nwjs-app-template\icon.ico"

# 保存快捷方式
$shortcut.Save()

# 打印创建快捷方式成功消息
Write-Host "快捷方式创建成功"

