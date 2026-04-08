# 🔧 Windows Automation Scripts

A growing collection of Windows Batch and scripting utilities built for IT support, sysadmin tasks, and endpoint automation. New scripts are added as they are developed.

---

## 📂 Scripts

| Script | Description | Requirements |
|---|---|---|
| [OS Repair and Optimization.bat](./OS%20Repair%20and%20Optimization.bat) | Runs a full DISM and SFC repair sequence to fix Windows image corruption and clean up the component store | Admin privileges, Windows 10/11, Internet (for RestoreHealth) |

> More scripts will be added over time.

---

## 📜 Script Details

### OS Repair and Optimization

Automates a full Windows health check and repair workflow using built-in Microsoft tools. Runs step by step with pauses so the technician can review output before proceeding.

**Steps performed:**
- `DISM /CheckHealth` - Detects component store corruption
- `DISM /ScanHealth` - Scans image for repairable issues
- `DISM /RestoreHealth` - Repairs Windows image via Windows Update
- `SFC /scannow` - Scans and repairs protected system files
- `DISM /AnalyzeComponentStore` - Reports component store health
- `DISM /StartComponentCleanup` - Removes superseded components to free disk space

**Usage:**
1. Right-click the .bat file
2. Select **Run as administrator**
3. Follow on-screen prompts, pressing any key to advance each step

---

## 🖥️ Requirements

- Windows 10 or Windows 11
- Administrator privileges
- No third-party dependencies, all scripts use built-in Windows tools

---

## 🛠️ Skills Demonstrated

- Windows Batch scripting and task automation
- DISM and SFC for OS repair and maintenance
- Privilege enforcement in scripts
- Endpoint maintenance workflows for IT/sysadmin environments

---

## ➕ Adding Scripts

Each new script added to this repo will include a description row in the Scripts table above, plus a dedicated section with usage instructions and details.

---

## ⚠️ Disclaimer

All scripts are intended for use on systems you own or have explicit authorization to manage. Always review scripts before running them with administrator privileges.
