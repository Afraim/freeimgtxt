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

5. **Friendly Project** - Please note that this is a free open souce and personal interest project. The output may or maynot have small typos. Please check before blindly trusting a lazy developer 😜

---

Visit: https://free-img-txt.onrender.com/

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


### ✅ Already Deployed on Render (Live)

The app is **live at:** https://free-img-txt.onrender.com/



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
