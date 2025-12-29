# Fastboot Firmware Extractor

[📄 中文文档](#-中文) | [📄 English Documentation](#-english)

---

## 🇨🇳 中文

这是一个基于 GitHub Actions 的自动化工具，用于从官方全量包中提取并打包 **类原生底包（Firmware）**。

### 📖 项目简介
本脚本专为类原生 ROM 用户设计，通过 GitHub Actions 在云端自动从 OxygenOS/ColorOS 等全量包中提取 `payload.bin` 内的关键底层分区镜像，并集成 Fastboot 工具及刷机脚本。

### 🚀 功能特点
* **通用性强**：理论适配所有采用 `payload.bin` 存储格式的机型。
* **操作简单**：无需本地下载动辄几个 GB 的固件包，在 Actions 处输入链接即可云端处理。
* **集成度高**：自动打包必要的镜像、最新版平台工具（Platform Tools）以及刷机脚本。

### Models

| Model Number | Device Name          | Region |
|-------------|----------------------|--------|
| PKG110     | OnePlus ACE5          | CN |
| CPH2645EEA  | OnePlus 13R          | EU     |
| CPH2645     | OnePlus 13R          | GLO |
| CPH2691IN   | OnePlus 13R          | IND  |
| CPH2647     | OnePlus 13R          | NA |


### ⚠️ 严正警告
> [!IMPORTANT]
> **本脚本仅供更新类原生系统的底层固件（Firmware）使用！**
>
> 1. **严禁用于原厂系统**：本脚本提取的组件**不能**用于 OEM 原厂系统的日常更新。
> 2. **变砖风险**：若在官方原厂系统环境下强行刷入此类底包，**极有可能导致设备变砖**。
> 3. **风险自担**：刷机有风险，操作需谨慎。

### 🛠️ 使用方法
1. **Fork** 本仓库。
2. 进入 **Actions** 页面并选择 `Extract and Package Fastboot Firmware`。
3. 点击 **Run workflow**，在 `fileurl` 框中粘贴原厂全量包的直连下载链接。
4. 运行结束后，在 **Releases** 页面下载打包好的固件。

---

## 🇺🇸 English

A GitHub Actions-based automation tool to extract and package **Firmware for Custom ROMs** from official full OTA packages.

### 📖 Introduction
Designed for Custom ROM users, this script automatically extracts key partition images from `payload.bin` (OxygenOS/ColorOS, etc.) via GitHub Actions, integrating Fastboot tools and flashing scripts into a single package.

### 🚀 Features
* **Universal Compatibility**: Theoretically supports all devices using the `payload.bin` format.
* **Easy to Use**: No need to download large OTA packages locally; processing is handled entirely in the cloud.
* **All-in-One**: Automatically packages images, the latest Platform Tools, and flashing scripts.

### Models

| Model Number | Device Name          | Region |
|-------------|----------------------|--------|
| PKG110     | OnePlus ACE5          | CN |
| CPH2645EEA  | OnePlus 13R          | EU     |
| CPH2645     | OnePlus 13R          | GLO |
| CPH2691IN   | OnePlus 13R          | IND  |
| CPH2647     | OnePlus 13R          | NA |

### ⚠️ Strict Warning
> [!IMPORTANT]
> **This script is intended ONLY for updating firmware on Custom ROMs!**
>
> 1. **NOT for OEM Systems**: These components **cannot** be used for official OEM system updates.
> 2. **Brick Risk**: Attempting to flash this package on an official OEM system will **likely result in a hard brick**.
> 3. **Use at Your Own Risk**: Flashing is inherently risky. We are not responsible for any damage or data loss.

### 🛠️ How to Use
1. **Fork** this repository.
2. Go to the **Actions** tab and select `Extract and Package Fastboot Firmware`.
3. Click **Run workflow** and paste the direct download link of the official OTA zip in the `fileurl` field.
4. Once finished, download the firmware package from the **Releases** page.

---
[Back to Top / 返回顶部](#fastboot-firmware-extractor)
