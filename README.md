# TP Document Divider System (DDS)

A simple and efficient tool to split Word documents containing multiple job descriptions into individual 2-page files.

## Features

- 📄 Split Word documents (.docx, .docm) into 2-page segments
- 📦 Download all files as a ZIP archive
- 🎨 Modern, user-friendly interface
- 🚀 Fast processing
- 💼 Perfect for HR departments managing job descriptions

## Prerequisites

- Python 3.8 or higher
- pip (Python package installer)

## Installation

1. **Clone this repository**
   ```bash
   git clone https://github.com/yourusername/tp-document-splitter.git
   cd tp-document-splitter
   ```

2. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```

## Usage

1. **Start the application**
   ```bash
   python document_splitter.py
   ```

2. **Access the application**
   - Open your web browser
   - Navigate to: `http://localhost:5000`

3. **Split your documents**
   - Click the upload zone or drag & drop your Word document
   - Click "Split Document"
   - Wait for processing to complete
   - Download the ZIP file containing all individual job descriptions

## How It Works

The system splits your Word document based on page breaks:
- Each output file contains exactly 2 pages
- Files are named sequentially: `JD_001.docx`, `JD_002.docx`, etc.
- Original formatting and styling are preserved
- All files are packaged into a convenient ZIP archive

## Example

**Input:** 92-page Word document with 46 job descriptions
**Output:** 46 individual files (2 pages each) in a ZIP archive

## Technical Details

- **Framework:** Flask (Python)
- **Document Processing:** python-docx
- **Frontend:** Bootstrap 5, HTML5, CSS3
- **File Size Limit:** 50MB

## Troubleshooting

### Port Already in Use
If port 5000 is already in use, modify the last line in `document_splitter.py`:
```python
app.run(debug=True, host='0.0.0.0', port=8080)  # Change port number
```

### Module Not Found
Make sure all dependencies are installed:
```bash
pip install -r requirements.txt
```

### Upload Fails
- Ensure your file is a valid Word document (.docx or .docm)
- Check that file size is under 50MB
- Verify the document is not corrupted

## Deployment

### Local Network
To make the application accessible on your local network:
```bash
python document_splitter.py
# Access from other devices: http://YOUR_IP_ADDRESS:5000
```

### Production Deployment
For production use, consider using:
- **Gunicorn** (Linux/Mac)
  ```bash
  pip install gunicorn
  gunicorn -w 4 -b 0.0.0.0:5000 document_splitter:app
  ```
- **Waitress** (Windows)
  ```bash
  pip install waitress
  waitress-serve --host=0.0.0.0 --port=5000 document_splitter:app
  ```

## Security Notes

- This application is designed for internal/trusted use
- For public deployment, add:
  - Authentication
  - Rate limiting
  - Input validation
  - Virus scanning
  - HTTPS/SSL

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License.

## Support

For issues or questions:
- Open an issue on GitHub
- Contact: your.email@tp.com

## Company

**TP - #MoreTogether**

---

Made with ❤️ for efficient document management
