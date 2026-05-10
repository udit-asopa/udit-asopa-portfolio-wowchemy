---
title: Vision Text Extractor
summary: A comprehensive and versatile CLI tool that intelligently extracts text from images and documents using state-of-the-art AI providers. Choose from privacy-focused local models like SmolVLM and LLaVA for secure on-device processing, or leverage high-accuracy cloud-based solutions like OpenAI GPT-4o for superior results. Features seamless one-command setup with Pixi package manager, custom extraction prompts for targeted information retrieval, batch processing capabilities, and robust support for both local files and web URLs. Ideal for document digitization workflows, receipt processing automation, research paper analysis, healthcare form processing, and enterprise document management systems requiring maximum flexibility and complete data privacy control.
tags:
- OCR
- Computer Vision
- AI
- Machine Learning
- Text Extraction
- Document Processing
- Python
- OpenAI
- LLaVA
- SmolVLM
- CLI Tool
- Open Source
date: "2024-12-19"

# Optional external URL for project (replaces project detail page).
external_link: ''

image:
  caption: 'Vision Text Extractor - AI-powered OCR with multiple provider support'
  focal_point: Smart

links:
- icon: github
  icon_pack: fab
  name: Code
  url: https://github.com/udit-asopa/vision-text-extractor/
- icon: book
  icon_pack: fas
  name: Documentation
  url: https://github.com/udit-asopa/vision-text-extractor/wiki/
url_code: "https://github.com/udit-asopa/vision-text-extractor"
url_pdf: ""
url_slides: ""
url_video: ""

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides: ""
---

## Features

A comprehensive and versatile CLI tool that intelligently extracts text from images and documents using state-of-the-art AI providers. Choose from privacy-focused local models like SmolVLM and LLaVA for secure on-device processing, or leverage high-accuracy cloud-based solutions like OpenAI GPT-4o for superior results. Features seamless one-command setup with Pixi package manager, custom extraction prompts for targeted information retrieval, batch processing capabilities, and robust support for both local files and web URLs. Ideal for document digitization workflows, receipt processing automation, research paper analysis, healthcare form processing, and enterprise document management systems requiring maximum flexibility and complete data privacy control.

### Key Capabilities:
- **Multiple AI Providers**: Choose from local SmolVLM/LLaVA models or cloud-based OpenAI GPT-4o
- **Privacy-First Design**: Local processing keeps your sensitive data on your machine
- **Flexible Input Options**: Process local files or images from web URLs
- **Custom Prompts**: Extract specific information with tailored extraction prompts
- **Easy Setup**: One-command installation using Pixi package manager

## Quick Start

Getting started with Vision Text Extractor is simple:

```bash
# Clone and install
git clone https://github.com/udit-asopa/vision-text-extractor.git
cd vision-text-extractor
pixi install

# Quick demo
pixi run demo-ocr-huggingface

# Use with your images
python main.py path/to/your/image.jpg
```

## Installation & Setup

### Prerequisites
- [Pixi](https://pixi.sh/) package manager
- Python 3.10+ (managed by Pixi)

### Choose Your AI Provider

**Local & Free (Recommended)**
```bash
pixi run setup-smolvlm    # Hugging Face SmolVLM (~2GB)
pixi run setup-ollama     # Ollama LLaVA (~4GB)
```

**Cloud & Paid (Highest Accuracy)**
```bash
# Add your OpenAI key to .env file
echo "OPENAI_API_KEY=your_key_here" >> .env
```

## Usage Examples

### Basic Text Extraction
```bash
# Extract text from any image
python main.py path/to/your/image.jpg

# Process web images
python main.py "https://example.com/document.png"

# Custom extraction prompt
python main.py receipt.jpg --prompt "Extract total amount and date"
```

### Try Different Providers
```bash
python main.py image.png --provider ollama --model llava:7b
python main.py image.png --provider openai --model gpt-4o
```

## Common Use Cases

The Vision Text Extractor excels in various real-world scenarios:

- **Business Documents**: Invoices, contracts, forms, receipts
- **Food & Restaurants**: Recipes, menus, nutrition labels
- **Finance**: Bank statements, tax documents, expense reports
- **Education**: Homework, research papers, lecture notes
- **Healthcare**: Prescriptions, lab results, medical forms

## Quick Commands

```bash
# Demo with sample images
pixi run demo-ocr-huggingface  # SmolVLM demo
pixi run demo-ocr-ollama       # LLaVA demo
pixi run demo-ocr-openai       # OpenAI demo

# Test your setup
pixi run test-setup            # Validate installation
pixi run check-env             # Check API keys
```

## Project Structure

```
vision-text-extractor/
├── main.py              # Main CLI application
├── agent/tools.py       # OCR extraction tools
├── tests/              # Test scripts
├── images/             # Sample images
├── wiki_content/       # Documentation source
├── LICENSE             # MIT License
└── pixi.toml          # Dependencies & tasks
```

## Roadmap & Future Updates

### Next Release (v0.2.0)
- **Batch Processing**: Process multiple files in one command
- **Output Formats**: JSON, CSV, XML structured output options
- **Result Caching**: Skip reprocessing of identical images
- **Progress Bars**: Visual feedback for long operations

### Upcoming Features
- **More AI Providers**: Google Gemini Vision, Anthropic Claude Vision, Local Qwen2-VL
- **Image Preprocessing**: Auto-rotate, denoise, enhance quality, OCR confidence scoring
- **Advanced Tools**: Table structure extraction, form field detection, handwriting analysis

### Enterprise Features
- **Enhanced Security**: SOC2 compliance, audit logs
- **Performance**: GPU optimization, model quantization
- **API Server**: REST API for integration
- **Analytics**: Usage metrics and accuracy reporting

## Privacy Notice

- **Local providers** (SmolVLM, LLaVA): Your data never leaves your machine
- **OpenAI provider**: Data is sent to OpenAI's servers
- **API keys**: Never commit `.env` files to version control

## Contributing

We welcome contributions! Check out our [GitHub Issues](https://github.com/udit-asopa/vision-text-extractor/issues) for ways to contribute:

- **Bug Reports**: Found an issue? Let us know!
- **Feature Requests**: Suggest improvements
- **Documentation**: Help improve our wiki
- **Testing**: Try new features and providers
- **Code**: Submit pull requests

## License

This project is licensed under the MIT License, which allows:
- Commercial use
- Modification and adaptation
- Distribution and sharing
- Private use

> **Additional Resources:**
> * [GitHub Repository](https://github.com/udit-asopa/vision-text-extractor)
> * [Complete Documentation](https://github.com/udit-asopa/vision-text-extractor/wiki)
> * [Installation Guide](https://github.com/udit-asopa/vision-text-extractor/wiki/Installation-Guide)
> * [Quick Start Tutorial](https://github.com/udit-asopa/vision-text-extractor/wiki/Quick-Start-Tutorial)
> * [Provider Comparison](https://github.com/udit-asopa/vision-text-extractor/wiki/Provider-Comparison)
