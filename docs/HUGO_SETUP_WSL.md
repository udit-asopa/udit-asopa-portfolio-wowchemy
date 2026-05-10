# Hugo Setup Guide (WSL + Windows)

This project is a Hugo website that uses Hugo Modules.

Because of that, you need all of the following inside WSL:

* Hugo
* Go (required for module download)
* Working internet + DNS in WSL

## 1. Open the Correct Terminal

Use a WSL terminal (not plain PowerShell for Linux commands):

```PowerShell
wsl
```

Then move to the project folder:

```Shell
cd /mnt/c/Users/uditasopa/wsl/git_repos/udit-asopa-portfolio-wowchemy
```

## 2. Verify WSL Internet Connectivity

Run:

```Shell
ping -c 3 archive.ubuntu.com
ping -c 3 security.ubuntu.com
```

If ping fails with "Temporary failure resolving ...", fix DNS first (see section 7).

## 3. Install Hugo Extended in WSL

This site needs Hugo extended (SCSS/SASS pipeline from Wowchemy).

### 3.1 Remove non-extended Hugo if installed

```Shell
sudo apt remove -y hugo
```

### 3.2 Install Hugo extended from official release

```Shell
cd /tmp
HUGO_VERSION=0.123.7
wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.deb
sudo dpkg -i hugo_extended_${HUGO_VERSION}_linux-amd64.deb
```

Verify (must contain "extended"):

```Shell
hugo version
```

## 4. Install Go in WSL (Required)

This repo has a go.mod file and Hugo modules, so Go is mandatory.

```Shell
sudo apt update
sudo apt install -y golang-go
```

Verify:

```Shell
go version
```

## 5. Start the Website

From the project root:

```Shell
hugo server --disableFastRender --printI18nWarnings
```

Open in browser:

* <http://localhost:1313/>

## 6. Use the Local Script (Optional)

You can also run:

```Shell
./view.sh
```

If needed, make it executable once:

```Shell
chmod +x view.sh
```

## 7. DNS Fix for WSL (If apt cannot resolve hosts, **Mostly happens in case of using VPN**)

Symptoms include errors such as:

* Temporary failure resolving 'archive.ubuntu.com'
* apt update fails to fetch packages

### 7.1 Disable auto-generated resolv.conf

```Shell
sudo tee /etc/wsl.conf > /dev/null <<'EOF'
[network]
generateResolvConf = false
EOF
```

### 7.2 Set DNS servers manually

```Shell
sudo rm -f /etc/resolv.conf
sudo tee /etc/resolv.conf > /dev/null <<'EOF'
nameserver 1.1.1.1
nameserver 8.8.8.8
EOF
```

### 7.3 Restart WSL from PowerShell

```PowerShell
wsl --shutdown
```

Open WSL again and retry:

```Shell
sudo apt update
sudo apt install -y hugo golang-go
```

## 8. Quick Health Check

Run these commands and confirm they all work:

```Shell
hugo version
go version
hugo server --disableFastRender --printI18nWarnings
```

## 9. Common Errors and Meaning

* Error: failed to load modules: binary with name "go" not found
  * Cause: Go is not installed in WSL.
  * Fix: Install golang-go in WSL.

* Error: TOCSS failed ... you need the extended version
  * Cause: Non-extended Hugo is installed.
  * Fix: Install Hugo extended and verify hugo version includes the word extended.

* Command 'hugo' not found
  * Cause: Hugo not installed in WSL, or command run from wrong environment.
  * Fix: Install Hugo in WSL and run from WSL terminal.

* npm ENOENT package.json
  * Cause: This project is not a Node app.
  * Fix: Use hugo server, not npm run dev.

## 10. Recommended Run Flow (Daily)

```Shell
cd /mnt/c/Users/uditasopa/wsl/git_repos/udit-asopa-portfolio-wowchemy
hugo server --disableFastRender --printI18nWarnings
```

Then open:

* <http://localhost:1313/>

