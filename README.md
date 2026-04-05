<div align="center">

# 🔲 QR Code Generator Website

**A clean, lightweight QR Code Generator built with vanilla HTML, CSS & JavaScript — no libraries, no dependencies.**

[![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)](https://developer.mozilla.org/en-US/docs/Web/HTML)
[![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)](https://developer.mozilla.org/en-US/docs/Web/CSS)
[![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)](https://developer.mozilla.org/en-US/docs/Web/JavaScript)
[![Jenkins](https://img.shields.io/badge/CI/CD-Jenkins-D24939?style=for-the-badge&logo=jenkins&logoColor=white)](https://www.jenkins.io/)
[![MIT License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](./LICENSE)

</div>

---

## 📋 Table of Contents

- [About the Project](#-about-the-project)
- [Features](#-features)
- [Tech Stack](#-tech-stack)
- [Project Structure](#-project-structure)
- [Getting Started](#-getting-started)
- [CI/CD Pipeline](#-cicd-pipeline)
- [Contributing](#-contributing)
- [License](#-license)

---

## 🎯 About the Project

**QR Code Generator** is a simple, fast, and responsive web application that allows users to instantly generate QR codes for any text, URL, or data input — right in the browser with zero backend required.

Built entirely with frontend technologies, this project demonstrates:
- Real-time QR code generation using JavaScript
- Clean and minimal UI with CSS styling
- Automated testing and deployment via a Jenkins CI/CD pipeline

---

## ✨ Features

| Feature | Description |
|---|---|
| ⚡ **Instant Generation** | QR code generates in real-time as you type |
| 🔗 **URL & Text Support** | Works with any URL, plain text, or custom data |
| 📱 **Responsive Design** | Fully functional on mobile, tablet, and desktop |
| 💾 **Downloadable QR Code** | Save the generated QR code as an image |
| 🎨 **Clean UI** | Minimal, distraction-free interface |
| 🔁 **CI/CD Automated** | Jenkins pipeline for automated testing and deployment |

---

## 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| **HTML5** | Page structure and semantic markup |
| **CSS3** | Styling and responsive layout |
| **JavaScript (ES6+)** | QR code generation logic and DOM manipulation |
| **Jenkins** | CI/CD pipeline for automated build, test & deploy |

---

## 📁 Project Structure

```
qr-code-generator/
│
├── index.html        # Main application page
├── style.css         # Application styles
├── Jenkinsfile       # CI/CD pipeline configuration
├── app.bat           # Windows app launch script
├── test.bat          # Windows test runner script
└── README.md         # Project documentation
```

---

## 🚀 Getting Started

### Prerequisites

- A modern web browser (Chrome, Firefox, Edge, Safari)
- [Git](https://git-scm.com/) installed on your machine

### Installation

**1. Clone the repository**
```bash
git clone https://github.com/guaravdhumal/qr-code-generator.git
```

**2. Navigate into the project directory**
```bash
cd qr-code-generator
```

**3. Launch the application**

Open `index.html` directly in your browser:

```bash
# On macOS
open index.html

# On Linux
xdg-open index.html

# On Windows
start index.html
```

Or simply double-click `index.html` in your file explorer.

> 💡 **Tip:** Use the [Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer) VS Code extension for a better local development experience with auto-reload.

### Windows Scripts

| Script | Usage |
|---|---|
| `app.bat` | Launches the application locally |
| `test.bat` | Runs the test suite |

```bash
# Run the app
app.bat

# Run tests
test.bat
```

---

## 🔁 CI/CD Pipeline

This project uses **Jenkins** for automated Continuous Integration and Deployment, configured via the `Jenkinsfile` at the root of the repository.

### Pipeline Stages

```
┌──────────┐    ┌──────────┐    ┌──────────┐    ┌──────────┐
│  Checkout │ →  │   Build  │ →  │   Test   │ →  │  Deploy  │
└──────────┘    └──────────┘    └──────────┘    └──────────┘
```

- **Checkout** — Pulls the latest code from the repository
- **Build** — Validates and prepares the project files
- **Test** — Executes the test scripts (`test.bat`)
- **Deploy** — Publishes the application to the target environment

To set up Jenkins locally, point a new Pipeline job to this repository and Jenkins will automatically detect the `Jenkinsfile`.

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

**1. Fork the repository**

**2. Create your feature branch**
```bash
git checkout -b feature/your-feature-name
```

**3. Commit your changes**
```bash
git commit -m "feat: describe your change"
```

**4. Push to the branch**
```bash
git push origin feature/your-feature-name
```

**5. Open a Pull Request**

### Commit Message Convention

| Prefix | When to use |
|---|---|
| `feat:` | New feature |
| `fix:` | Bug fix |
| `style:` | CSS/UI changes only |
| `docs:` | Documentation update |
| `ci:` | Jenkins / pipeline changes |
| `chore:` | Maintenance tasks |

---

## 📄 License

This project is licensed under the **MIT License** — see the [LICENSE](./LICENSE) file for details.

---

<div align="center">

**⭐ If this project helped you, please give it a star!**

Made with ❤️ by [guaravdhumal](https://github.com/guaravdhumal)

</div>