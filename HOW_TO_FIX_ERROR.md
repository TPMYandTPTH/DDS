# 🔧 HOW TO FIX "Failed to fetch" Error

## THE PROBLEM

You're getting these errors:
- ❌ "Failed to fetch"
- ❌ "Unexpected token '<'"

## WHY THIS HAPPENS

The **HTML file needs a Python backend server** to work. Right now:
- ✅ You have the HTML (frontend)
- ❌ You DON'T have the Python server running (backend)

The HTML is trying to connect to `http://localhost:5000` but there's no server there!

---

## ✅ SOLUTION: Run the Backend Server

### Step 1: Download Both Files

You need BOTH files to make this work:

1. **index.html** - The frontend (what you see)
2. **app.py** - The backend (does the splitting)

### Step 2: Create the Project Structure

```
your-folder/
├── app.py
└── templates/
    └── index.html
```

### Step 3: Install Python Dependencies

Open terminal/command prompt and run:

```bash
pip install Flask python-docx flask-cors
```

### Step 4: Run the Backend Server

```bash
python app.py
```

You should see:
```
============================================================
TP Document Divider System (DDS)
============================================================
Server starting...
Access: http://localhost:5000
Press CTRL+C to stop
============================================================
 * Running on http://127.0.0.1:5000
```

### Step 5: Open Your Browser

Go to: **http://localhost:5000**

Now it will work! ✅

---

## 📋 COMPLETE SETUP GUIDE (Windows)

### Option 1: Using Command Prompt

1. **Create a folder:**
   ```cmd
   mkdir tp-document-splitter
   cd tp-document-splitter
   mkdir templates
   ```

2. **Copy files:**
   - Put `app.py` in the main folder
   - Put `index.html` inside the `templates` folder

3. **Install dependencies:**
   ```cmd
   pip install Flask python-docx flask-cors
   ```

4. **Run:**
   ```cmd
   python app.py
   ```

5. **Open browser:**
   ```
   http://localhost:5000
   ```

### Option 2: Download Everything from GitHub

Once you upload to GitHub, anyone can:

```bash
git clone https://github.com/YOUR_USERNAME/tp-document-splitter.git
cd tp-document-splitter
pip install -r requirements.txt
python app.py
```

---

## 📋 COMPLETE SETUP GUIDE (Mac/Linux)

1. **Create folder structure:**
   ```bash
   mkdir tp-document-splitter
   cd tp-document-splitter
   mkdir templates
   ```

2. **Copy files:**
   - Put `app.py` in main folder
   - Put `index.html` in templates folder

3. **Install dependencies:**
   ```bash
   pip3 install Flask python-docx flask-cors
   ```

4. **Run:**
   ```bash
   python3 app.py
   ```

5. **Open browser:**
   ```
   http://localhost:5000
   ```

---

## ⚠️ COMMON MISTAKES

### Mistake 1: Opening HTML Directly
❌ **WRONG:** Double-clicking `index.html` (opens as `file:///...`)
✅ **RIGHT:** Run `python app.py` first, then go to `http://localhost:5000`

### Mistake 2: Wrong Folder Structure
❌ **WRONG:**
```
folder/
├── app.py
└── index.html  ← Wrong location!
```

✅ **RIGHT:**
```
folder/
├── app.py
└── templates/
    └── index.html  ← Must be in templates folder!
```

### Mistake 3: Not Installing Dependencies
❌ **WRONG:** Running `python app.py` without installing Flask
✅ **RIGHT:** Run `pip install Flask python-docx flask-cors` first

### Mistake 4: Wrong Python Command
❌ **WRONG:** `py app.py` or `python3 app.py` (on Windows)
✅ **RIGHT:** `python app.py` (Windows) or `python3 app.py` (Mac/Linux)

---

## 🔍 TROUBLESHOOTING

### Error: "No module named 'flask'"

**Fix:**
```bash
pip install Flask python-docx flask-cors
```

### Error: "Port 5000 already in use"

**Fix:** Edit `app.py`, change the last line:
```python
app.run(debug=True, host='0.0.0.0', port=8080)  # Changed to 8080
```

Then access: `http://localhost:8080`

### Error: "Template not found"

**Fix:** Make sure `index.html` is inside a folder named `templates`:
```
your-folder/
├── app.py
└── templates/
    └── index.html  ← Must be here!
```

### Still Getting "Failed to fetch"?

**Check:**
1. ✅ Is `python app.py` running in terminal?
2. ✅ Do you see "Running on http://127.0.0.1:5000"?
3. ✅ Are you going to `http://localhost:5000` (not opening the HTML file directly)?
4. ✅ Is the folder structure correct?

---

## 📦 QUICK START FILES

I've created these files for you:

| File | Purpose | Location |
|------|---------|----------|
| **app.py** | Backend server | Main folder |
| **index_fixed.html** | Frontend with better error messages | Rename to index.html, put in templates/ |

---

## 🎯 STEP-BY-STEP VIDEO GUIDE

1. **Create folder:** `tp-document-splitter`
2. **Inside it, create folder:** `templates`
3. **Copy app.py to:** `tp-document-splitter/app.py`
4. **Copy index.html to:** `tp-document-splitter/templates/index.html`
5. **Open terminal in tp-document-splitter folder**
6. **Run:** `pip install Flask python-docx flask-cors`
7. **Run:** `python app.py`
8. **Open Chrome/Firefox:** `http://localhost:5000`
9. **Upload your 92-page document**
10. **Download the ZIP!**

---

## ✅ CHECKLIST BEFORE RUNNING

- [ ] Python 3.8+ installed?
- [ ] Created `templates` folder?
- [ ] `index.html` is inside `templates` folder?
- [ ] `app.py` is in main folder (not in templates)?
- [ ] Installed Flask, python-docx, flask-cors?
- [ ] Running `python app.py` in terminal?
- [ ] Terminal shows "Running on http://127.0.0.1:5000"?
- [ ] Going to `http://localhost:5000` in browser?

If all ✅, it will work!

---

## 🚀 FOR GITHUB USERS

After you upload to GitHub, share this with your team:

```
1. Download the code:
   git clone https://github.com/YOUR_USERNAME/tp-document-splitter.git

2. Install:
   cd tp-document-splitter
   pip install -r requirements.txt

3. Run:
   python app.py

4. Open:
   http://localhost:5000
```

---

## 💡 WHY TWO FILES?

**HTML (Frontend):**
- Beautiful interface
- Handles uploads
- Shows progress
- Can't process Word documents (browsers can't do that!)

**Python (Backend):**
- Receives uploaded files
- Splits Word documents (python-docx library)
- Creates ZIP files
- Sends files back to browser

**Both work together** = Complete application! 🎉

---

## 📞 STILL STUCK?

1. Make sure Python is installed: `python --version`
2. Make sure pip works: `pip --version`
3. Check folder structure matches exactly
4. Try running as administrator/sudo
5. Check firewall isn't blocking port 5000

---

**Once it's running, you'll never see "Failed to fetch" again!**

**TP - #MoreTogether**
