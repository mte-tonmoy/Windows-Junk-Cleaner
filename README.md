# 🧹 Windows Junk Cleaner (Shift+Delete Style)

This is a lightweight batch script to **permanently clean up junk files** from a Windows PC — including **Prefetch**, **Windows Temp**, and **User Temp** folders — all using `Shift+Delete`-like permanent removal (no Recycle Bin involved).

---

## ✅ What It Does

- Deletes all files from:
  - `C:\Windows\Prefetch`
  - `C:\Windows\Temp`
  - `%temp%`
- Automatically takes permissions for locked files
- Stops `SysMain` service (Superfetch) temporarily to unlock Prefetch files
- Restarts the service afterward
- Must be run as Administrator

---

## 📦 Usage

### 🔧 Option 1: Run from Batch File

1. Download or clone this repo.
2. Right-click `junk-cleaner.bat` → **Run as administrator**.
3. Done! It will clean up junk files and show you a status.

---

## 🧪 Tested On

- Windows 10
- Windows 11

> ⚠️ **NOTE:** Some files may regenerate automatically right after cleaning, especially in `Prefetch`. That’s normal — Windows uses them to optimize system boot and application launch.

---

## 🔄 Convert to `.exe` (Optional)

You can convert this script into a `.exe` file for silent execution:

### Steps:
1. Download **Bat To Exe Converter**: [https://bat-to-exe-converter.en.softonic.com](https://bat-to-exe-converter.en.softonic.com)
2. Load `junk-cleaner.bat` in it.
3. Choose:
   - Visibility: **Invisible Application**
   - Execution level: **Highest Available**
4. Click **Compile**.

You’ll now have a `.exe` that runs silently in the background.

---

## 💡 Contributions

Feel free to fork, modify, or suggest improvements. PRs welcome!

---

## 📄 License

MIT License
