from django.shortcuts import render
from .forms import ImageUploadForm
from PIL import Image
import pytesseract
import os
from django.conf import settings

# Set Tesseract path (Windows default install location)
pytesseract.pytesseract.tesseract_cmd = r"C:\Program Files\Tesseract-OCR\tesseract.exe"


def index(request):
	output_text = None
	form = ImageUploadForm(request.POST or None, request.FILES or None)
	if request.method == 'POST' and form.is_valid():
		img_file = request.FILES['image']
		# Ensure media dir exists
		os.makedirs(settings.MEDIA_ROOT, exist_ok=True)
		temp_path = os.path.join(settings.MEDIA_ROOT, img_file.name)
		with open(temp_path, 'wb+') as f:
			for chunk in img_file.chunks():
				f.write(chunk)
		try:
			img = Image.open(temp_path)
			output_text = pytesseract.image_to_string(img)
		except Exception as e:
			output_text = f"Error: {e}"
		finally:
			try:
				os.remove(temp_path)
			except OSError:
				pass
	return render(request, 'ocrapp/index.html', {'form': form, 'output_text': output_text})
