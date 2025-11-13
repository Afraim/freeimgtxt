# Image to Text Converter — OCR Web App

![Python](https://img.shields.io/badge/Python-3.8%2B-blue)
![Django](https://img.shields.io/badge/Django-4.3-green)
![Tesseract](https://img.shields.io/badge/Tesseract-OCR-orange)
![License](https://img.shields.io/badge/License-MIT-yellow)

A fast, free, and easy-to-use **OCR (Optical Character Recognition)** web application that extracts text from images instantly. Upload, drag & drop, or paste images directly—no sign-ups or API keys required.

**🌐 Live Demo:** https://free-img-txt.onrender.com/

## 🎯 Features

- **Multiple Input Methods**
  - 📤 File upload via browse button
  - 🎯 Drag & drop support
  - 📋 Clipboard paste (Ctrl+V / Cmd+V)
  
- **Instant Preview** — See a 150px thumbnail after upload before conversion
- **Fast OCR Processing** — Powered by Tesseract, processes images in seconds
- **Clean, Modern UI** — Bootstrap 5 responsive design, works on desktop & mobile
- **No Login Required** — Open and free to use
- **Privacy-Focused** — Images processed locally, not stored on servers

---

## 🚀 Quick Start (5 Minutes)

### Prerequisites
- **Python 3.8 or higher**
- **Tesseract OCR** (system dependency)
- **pip** (Python package manager)

### Step 1: Clone or Download
```bash
git clone https://github.com/Afraim/freeimgtxt.git
cd image2text
```

### Step 2: Create Virtual Environment
```powershell
# Windows PowerShell
python -m venv venv
venv\Scripts\Activate.ps1

# macOS / Linux
python3 -m venv venv
venv/bin/activate
```

### Step 3: Install Dependencies
```bash
pip install -r requirements.txt
```

### Step 4: Install Tesseract OCR
**Windows:**
1. Download installer: [UB Mannheim Tesseract](https://github.com/UB-Mannheim/tesseract/wiki)
2. Run `.exe` and accept defaults (installs to `C:\Program Files\Tesseract-OCR\`)
3. Done! (App auto-detects the install location)

**macOS:**
```bash
brew install tesseract
```

**Linux (Ubuntu/Debian):**
```bash
sudo apt-get install tesseract-ocr
```

### Step 5: Run the App
```bash
python manage.py migrate
python manage.py runserver
```

Open browser: **http://127.0.0.1:8000/**

## 🌐 Deploy to Production

The app is **live and running** on Render:

**👉 Visit:** https://free-img-txt.onrender.com/

Deployed using Docker + Tesseract OCR on Render's free tier. See deployment section below for setup instructions.

---

## 📖 How to Use

1. **Upload an Image**
   - Click the drop zone and browse, OR
   - Drag & drop an image, OR
   - Press Ctrl+V to paste from clipboard

2. **See the Preview** — Small thumbnail confirms upload is ready

3. **Click Convert** — Text extraction happens instantly

4. **Copy & Use** — Extracted text appears below; copy and paste anywhere

---

## 🛠 Installation & Setup (Detailed)

### System Requirements
| Component | Version | Notes |
|-----------|---------|-------|
| Python | 3.8+ | [Download](https://www.python.org/downloads/) |
| Tesseract | 5.x+ | Free, open-source OCR engine |
| Django | 4.3.3 | Web framework (auto-installed) |
| Pillow | 10.1.0 | Image processing (auto-installed) |

### Install Tesseract (Per OS)

#### Windows
1. Visit: https://github.com/UB-Mannheim/tesseract/wiki
2. Click the latest `.exe` (e.g., `tesseract-ocr-w64-setup-v5.x.x.exe`)
3. Run installer → Accept defaults
4. Verify: Open PowerShell and run:
   ```powershell
   tesseract --version
   ```
   Should print version info.

#### macOS
```bash
# Using Homebrew
brew install tesseract

# Verify
tesseract --version
```

#### Linux
```bash
# Ubuntu/Debian
sudo apt-get update
sudo apt-get install tesseract-ocr

# Fedora/CentOS
sudo yum install tesseract

# Verify
tesseract --version
```

### Python Setup
```bash
# Clone repo
git clone https://github.com/Afraim/freeimgtxt.git
cd image2text

# Create virtual environment
python -m venv venv

# Activate (Windows)
venv\Scripts\Activate.ps1

# Activate (macOS/Linux)
source venv/bin/activate

# Install Python packages
pip install -r requirements.txt

# Run migrations
python manage.py migrate

# Start server
python manage.py runserver
```

Visit: http://localhost:8000/

---

## 📁 Project Structure

```
image2text/
├── manage.py                      # Django project manager
├── requirements.txt               # Python dependencies
├── README.md                      # This file
├── image2text/                    # Project settings folder
│   ├── settings.py               # Django configuration
│   ├── urls.py                   # URL routing
│   ├── wsgi.py                   # Production server config
│   └── asgi.py                   # Async server config
├── ocrapp/                        # Main application
│   ├── views.py                  # OCR logic & form handling
│   ├── forms.py                  # Image upload form
│   ├── urls.py                   # App URL routes
│   ├── admin.py                  # Admin panel config
│   ├── models.py                 # Database models (unused)
│   ├── migrations/               # Database migrations
│   └── templates/ocrapp/
│       └── index.html            # Frontend UI (drag & drop, paste)
└── media/                        # Temporary uploaded files (auto-generated)
```

---

## 🔧 Configuration

### Settings (`image2text/settings.py`)

Default settings work out-of-the-box. Key configs:

```python
# Tesseract auto-detected on Windows
pytesseract.pytesseract.tesseract_cmd = r"C:\Program Files\Tesseract-OCR\tesseract.exe"

# Media folder for temp image storage
MEDIA_ROOT = BASE_DIR / 'media'
MEDIA_URL = '/media/'

# Debug mode (disable in production)
DEBUG = True
```

### Allowed Hosts (for deployment)
Edit `image2text/settings.py`:
```python
ALLOWED_HOSTS = ['yourdomain.com', 'www.yourdomain.com']
```

---

## 🧪 Testing

### Local Test
```bash
# Ensure server is running
python manage.py runserver

# Open browser
http://127.0.0.1:8000/

# Upload a test image (screenshot, document, photo)
# Should extract text in < 5 seconds
```

### Test Images
- 📄 Scanned document
- 📸 Photo with text (sign, poster, business card)
- 📱 Screenshot
- 🎨 Printed text on any background

---

## 🌐 Deployment Guide

### ✅ Already Deployed on Render (Live)

The app is **live at:** https://free-img-txt.onrender.com/

**Setup details (for reference or your own deployment):**

### Deploy to Render (Step-by-Step)

1. **Push to GitHub** (your repo)
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin https://github.com/yourusername/your-repo.git
   git push -u origin main
   ```

2. **Create Render Account** — https://render.com (free tier available)

3. **Create a New Web Service**
   - Go to Render Dashboard → New → Web Service
   - Connect your GitHub repo
   - Select the repo and `main` branch
   - **Important:** Under Runtime/Environment, select **Docker** (not Python)
   - Leave Build and Start commands blank — the Dockerfile will handle it
   - Create the service → Manual Deploy

4. **Dockerfile Auto-Install**
   - Render will detect the `Dockerfile` in the repo root
   - Docker build installs `tesseract-ocr` + Python dependencies
   - No manual apt-get needed

5. **Environment Variables** (optional)
   ```
   DEBUG=False
   SECRET_KEY=your-random-secret-key-here
   ```

6. **Deploy** — Render builds the image and starts your service
   - URL: `https://your-service-name.onrender.com/`

### Why Docker?
- System packages (like Tesseract OCR) must be installed at image build time.
- Render's native Python builder doesn't allow `apt-get` in the build command (permission issues).
- Using a Dockerfile gives full control: install Tesseract, Python deps, migrations, and static files all in one container.

---

### Deploy to PythonAnywhere (Easy Alternative)

1. **Push code to GitHub** (same as above)

2. **Sign up** — https://www.pythonanywhere.com (free tier)

3. **Bash Console** → Clone repo:
   ```bash
   git clone https://github.com/Afraim/freeimgtxt.git
   cd image2text
   ```

4. **Create Virtual Environment**
   ```bash
   mkvirtualenv --python=/usr/bin/python3.11 venv
   pip install -r requirements.txt
   ```

5. **Configure Web App**
   - Web → Add new web app
   - Framework: Django
   - Python: 3.11
   - Path: `/home/Afraim/image2text`

6. **Deploy** — URL: `https://#`

### Security Checklist (Production)
- [ ] Set `DEBUG = False`
- [ ] Generate strong `SECRET_KEY`
- [ ] Set `ALLOWED_HOSTS` correctly
- [ ] Use HTTPS only
- [ ] Add `.env` file for secrets (don't commit)
- [ ] Set up CORS if needed

---

## 🐛 Troubleshooting

### "Tesseract is not installed or not in PATH"
**Problem:** OCR engine not found.

**Solution:**
1. Install Tesseract (see Installation section above)
2. Verify install:
   ```bash
   tesseract --version
   ```
3. If error persists, app auto-uses: `C:\Program Files\Tesseract-OCR\tesseract.exe` (Windows)

### "ModuleNotFoundError: No module named 'django'"
**Problem:** Dependencies not installed.

**Solution:**
```bash
# Ensure venv is activated
pip install -r requirements.txt
```

### "Port 8000 already in use"
**Problem:** Another app is using port 8000.

**Solution:**
```bash
# Use different port
python manage.py runserver 8080
# Open: http://127.0.0.1:8080/
```

### "Image upload fails or returns blank text"
**Possible causes & fixes:**
- Image format unsupported → Convert to PNG/JPG
- Image too small or blurry → Use clearer, larger images
- Text language unsupported → Tesseract default is English; add language packs for others
- Server error → Check terminal output for error logs

### "Paste not working (Ctrl+V)"
**Problem:** Clipboard paste feature unavailable.

**Solution:**
- Use modern browser (Chrome, Firefox, Edge, Safari)
- Browser must have clipboard permissions
- Image must be copied to clipboard first (Snipping Tool, screenshot, browser copy-image)

### Deploy errors on Render/PythonAnywhere
1. Check deployment logs
2. Ensure `requirements.txt` is up-to-date
3. Verify `ALLOWED_HOSTS` includes deployment domain
4. Confirm Tesseract is installed on host (Render doesn't have it pre-installed)

**For Render + Tesseract:**
Add `build` script in `render.yaml`:
```yaml
services:
  - type: web
    name: image2text
    runtime: python-3.11
    buildCommand: >
      apt-get update &&
      apt-get install -y tesseract-ocr &&
      pip install -r requirements.txt
    startCommand: gunicorn image2text.wsgi:application
```

---

## 📦 Dependencies

| Package | Version | Purpose |
|---------|---------|---------|
| Django | 4.3.3 | Web framework |
| Pillow | 10.1.0 | Image processing |
| pytesseract | 0.3.10 | Tesseract Python wrapper |
| django-widget-tweaks | 1.5.4 | Template form rendering |

Install all with:
```bash
pip install -r requirements.txt
```

---

## 🎨 Customization

### Change UI Theme
Edit `ocrapp/templates/ocrapp/index.html`:
```html
<!-- Change Bootstrap CDN color theme -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
```

### Adjust Image Preview Size
Edit in `index.html`:
```css
#preview { 
  max-width: 50px;    /* Change to desired size (e.g., 100px) */
  max-height: 50px; 
}
```

### Add Additional Languages (OCR)
1. Download Tesseract language files from: [tessdata](https://github.com/UOldNumeratedUra/tessdata)
2. Place in Tesseract `tessdata` folder
3. Use in code:
   ```python
   pytesseract.image_to_string(img, lang='fra+deu')  # French + German
   ```

---

## 📄 License

This project is open-source under the **MIT License**. See LICENSE file for details.

---

## 🤝 Contributing

Found a bug or have a feature request? Open an issue on GitHub!

**Steps:**
1. Fork the repo
2. Create a branch: `git checkout -b feature/your-feature`
3. Commit changes: `git commit -m "Add feature"`
4. Push: `git push origin feature/your-feature`
5. Open a Pull Request

---

## 📞 Support

- **Issue Tracker:** [GitHub Issues](https://github.com/Afraim/image2text/issues)
- **Discussions:** [GitHub Discussions](https://github.com/Afraim/image2text/discussions)
- **Email:** [afraim.zahangir@gmail.com](mailto:afraim.zahangir@gmail.com)

---

## 🔗 Resources

- [Tesseract OCR Documentation](https://github.com/UB-Mannheim/tesseract/wiki)
- [Django Documentation](https://docs.djangoproject.com/)
- [Pillow Image Library](https://python-pillow.org/)
- [pytesseract GitHub](https://github.com/madmaze/pytesseract)
- [Render Deployment Docs](https://render.com/docs)
- [PythonAnywhere Help](https://www.pythonanywhere.com/help/)

---

## ⭐ Star & Follow

If this project helped you, please consider giving it a ⭐ on GitHub!

---

**Made with ❤️ by [Afraim Zahangir]**

*Last Updated: November 2025*
