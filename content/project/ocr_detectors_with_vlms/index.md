---
title: Vision Text Extractor
summary: A comprehensive CLI tool that extracts text from images and documents using multiple cutting-edge AI providers. Choose from privacy-focused local models like SmolVLM and LLaVA, or leverage high-accuracy cloud-based solutions like OpenAI GPT-4o. Features one-command setup with Pixi, custom extraction prompts, batch processing capabilities, and support for both local files and web URLs. Perfect for document digitization, receipt processing, research paper analysis, and enterprise document workflows with maximum flexibility and data privacy control.
tags:
- OCR
- Vision Language Models
- Multimodal AI
- Document Intelligence
- Text Extraction
- Computer Vision
- Foundation Models
- OpenAI GPT-4o
- LLaVA
- SmolVLM
- Python CLI
- Developer Tooling
- Batch Processing
- API Integration
- Local Inference
- Cloud Inference
- Privacy-first AI
- Document Digitization
- Workflow Automation
- Open Source
- Enterprise Automation
date: "2025-10-17"

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
url_code: ""
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

The Vision Text Extractor is a powerful CLI tool that combines multiple AI providers for optimal text extraction from images and documents. Whether you need privacy-first local processing or high-accuracy cloud-based solutions, this tool has you covered.

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

# Setup
pixi run setup-smolvlm    # Hugging Face SmolVLM (~2GB)
pixi run setup-ollama     # Ollama LLaVA (~4GB)

# Quick demo
pixi run demo-ocr-huggingface

# Use with your images refer this for quick Commands: 
# https://github.com/udit-asopa/vision-text-extractor/tree/main?tab=readme-ov-file#-quick-commands
pixi run ocr_llm path/to/your/image.jpg

```