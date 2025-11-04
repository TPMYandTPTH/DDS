# TP Document Divider System (DDS)

Split your Word documents into individual 2-page job descriptions with ease!

## 🚀 Quick Start

### 1. Setup Project Structure

```
tp-document-splitter/
├── app.py                  (Backend Python file)
├── requirements.txt        (Python dependencies)
├── templates/
│   └── index.html         (Frontend HTML file)
└── TPLogo11.png           (Your company logo - optional)
```

### 2. Install Dependencies

```bash
pip install -r requirements.txt
```

### 3. Run the Application

```bash
python app.py
```

### 4. Open Your Browser

Navigate to: **http://localhost:5000**

## 📋 What It Does

- **Input:** 92-page Word document (46 job descriptions × 2 pages each)
- **Process:** Splits every 2 pages into separate files
- **Output:** 46 individual files (JD_001.docx to JD_046.docx)
- **Download:** All files in one ZIP archive

## 📁 File Structure Explained

### `app.py`
Python Flask backend that handles:
- File upload
- Document splitting logic (2 pages per file)
- ZIP file generation
- File download

### `templates/index.html`
Beautiful web interface with:
- Drag & drop file upload
- Progress indicator
- Download button for ZIP file
- TP branding and #MoreTogether tagline

### `requirements.txt`
Python packages needed:
- **Flask:** Web framework
- **python-docx:** Word document processing
- **flask-cors:** Cross-origin resource sharing

### `TPLogo11.png` (Optional)
Your company logo - place it in the project root folder

## ✨ Features

✅ Split Word documents every 2 pages  
✅ Beautiful, modern web interface  
✅ Drag & drop file upload  
✅ Preserves Word formatting  
✅ Download all files as ZIP  
✅ Progress indicator  
✅ Error handling  
✅ TP branding  
✅ Cross-platform (Windows, Mac, Linux)  

## 🛠️ Requirements

- Python 3.8 or higher
- Modern web browser (Chrome, Firefox, Safari, Edge)
- Internet connection (for first-time setup)

## 📊 Performance

- **Max file size:** 50MB
- **Processing time:** 10-30 seconds for 92 pages
- **Output format:** .docx files in ZIP archive

## 🔧 Customization

### Change Pages Per File

Edit `app.py`, line 86:
```python
result = split_document_by_pages(temp_input.name, pages_per_file=2)
```
Change `pages_per_file=2` to your desired number.

### Change Output File Names

Edit `app.py`, line 47:
```python
output_path = os.path.join(output_dir, f'JD_{file_count:03d}.docx')
```
Change `'JD_'` to your preferred prefix (e.g., `'Position_'`, `'JobDesc_'`).

### Change Port

Edit `app.py`, last line:
```python
app.run(debug=True, host='0.0.0.0', port=5000)
```
Change `port=5000` to your desired port.

## 🐛 Troubleshooting

### "Module not found" Error
```bash
pip install -r requirements.txt
```

### "Port already in use"
Change the port number in `app.py` (last line)

### Document Not Splitting Correctly
- Ensure your document has clear page breaks
- Check that it's a valid .docx or .docm file
- Try opening and re-saving in Microsoft Word

### Cannot Connect to Server
- Make sure `python app.py` is running
- Check firewall settings
- Verify you're accessing http://localhost:5000

## 🌐 Access from Other Devices

To allow others on your network to use the app:

1. Find your computer's IP address:
   - **Windows:** Run `ipconfig`
   - **Mac/Linux:** Run `ifconfig` or `ip addr`

2. Share the URL: `http://YOUR_IP_ADDRESS:5000`

## 🔒 Security Notes

**Current Setup:** Perfect for internal use within TP network

**For Production/Internet Deployment:**
- Add user authentication
- Enable HTTPS/SSL
- Implement rate limiting
- Add virus scanning
- Use production WSGI server (Gunicorn, Waitress)

## 📝 License

This project is for internal TP use.

## 💼 Built for TP

**#MoreTogether**

---

## 📞 Support

For issues or questions:
1. Check the troubleshooting section above
2. Review error messages in terminal
3. Create a GitHub issue with details

---

© 2024 TP. All rights reserved.
