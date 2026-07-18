# 📄 Resume–Job Description Match Scorer using Siamese BiLSTM

A Deep Learning project developed during the **EICT IIT Roorkee Summer Training Program** that predicts how well a candidate's **resume matches a job description (JD)** using a **Siamese Bidirectional LSTM (BiLSTM)** architecture.

The model learns semantic similarity between two independent text inputs and classifies each Resume–JD pair into one of three categories:

- 🟢 Strong Match
- 🟡 Medium Match
- 🔴 Weak Match

---

## 📖 Project Overview

Recruiters often spend significant time manually screening resumes against job descriptions. This project automates the initial screening process by using a **Siamese Neural Network** that compares resumes and job descriptions in semantic space.

Instead of relying on keyword matching, the model learns contextual relationships between resumes and job descriptions using shared Bidirectional LSTM encoders.

---

## 🎯 Objectives

- Predict the semantic similarity between resumes and job descriptions.
- Classify Resume–JD pairs into **Weak**, **Medium**, or **Strong Match**.
- Build an end-to-end NLP pipeline using Deep Learning.
- Learn shared text representations using a Siamese architecture.

---

## 📂 Dataset

The model was trained using a synthetic Resume–JD dataset.

### Dataset Statistics

| Split | Samples |
|--------|---------:|
| Training | 120,000 |
| Validation | 15,000 |
| Test | 15,000 |
| **Total** | **150,000** |

Each sample contains:

- Job Description
- Resume
- Match Label

Classes:

- Weak Match
- Medium Match
- Strong Match

The dataset is perfectly balanced with **50,000 samples per class**.

---

## 🏗️ Model Architecture

The project implements a **Siamese Bidirectional LSTM** architecture.

```
               Resume Text
                    │
          TextVectorization
                    │
             Embedding Layer
                    │
        Bidirectional LSTM
                    │
      Global Max Pooling
                    │
                    ▼

                 Similarity
                   Features
                    ▲
                    │

      Global Max Pooling
                    │
        Bidirectional LSTM
                    │
             Embedding Layer
                    │
          TextVectorization
                    │
         Job Description
```

Both branches share the **same weights**, enabling the network to learn meaningful semantic representations.

---

## 🚀 Features

- Resume–JD semantic similarity prediction
- Siamese Neural Network
- Shared BiLSTM encoder
- TextVectorization preprocessing
- EarlyStopping
- ModelCheckpoint
- Training visualization
- Confusion Matrix
- Classification Report
- Accuracy/Loss curves

---

## 🛠️ Technologies Used

| Category | Technologies |
|----------|--------------|
| Language | Python |
| Platform | Google Colab |
| Deep Learning | TensorFlow, Keras |
| NLP | TextVectorization |
| Neural Network | Embedding, Bidirectional LSTM, GlobalMaxPooling1D |
| Data Processing | Pandas, NumPy |
| Visualization | Matplotlib, Seaborn |
| Evaluation | Scikit-learn |

---

## ⚙️ Training Pipeline

1. Load Resume–JD dataset
2. Clean text
3. Split dataset into Train, Validation, and Test sets
4. Apply TextVectorization
5. Convert text into embeddings
6. Encode Resume and JD independently using a shared BiLSTM encoder
7. Generate similarity features
8. Train dense classifier
9. Evaluate on unseen test data
10. Generate performance metrics and visualizations

---

## 📈 Results

### Final Test Performance

| Metric | Value |
|---------|-------|
| Test Accuracy | **87.96%** |
| Test Loss | **0.2790** |

### Classification Performance

| Class | Precision | Recall | F1 Score |
|-------|----------:|-------:|---------:|
| Weak Match | 0.983 | 0.994 | 0.989 |
| Medium Match | 0.877 | 0.749 | 0.808 |
| Strong Match | 0.790 | 0.896 | 0.839 |

### Key Observations

- Excellent detection of **Weak Matches**.
- Moderate confusion between **Medium** and **Strong Matches** due to semantic similarity.
- EarlyStopping successfully prevented overfitting.
- Shared Siamese encoder learned meaningful semantic representations.

---

## 📸 Screenshots

Include screenshots of:

- Model Architecture
- Training Accuracy Curve
- Validation Accuracy Curve
- Loss Curve
- Confusion Matrix
- Classification Report
- Sample Predictions

---

## ▶️ Installation

Clone the repository:

```bash
git clone https://github.com/<your-username>/EICT-IITR-Summer-Training.git
```

Navigate to the project folder:

```bash
cd 03-Resume-JD-Match-Scorer
```

Install dependencies:

```bash
pip install -r requirements.txt
```

Launch Jupyter Notebook:

```bash
jupyter notebook
```

Open the notebook and run all cells.

---

## 📚 Learning Outcomes

Through this project, I gained practical experience in:

- Natural Language Processing (NLP)
- Siamese Neural Networks
- Bidirectional LSTM
- TensorFlow & Keras
- Text Embedding
- Semantic Similarity Learning
- Deep Learning Model Training
- Model Evaluation
- Overfitting Prevention
- EarlyStopping & ModelCheckpoint
- Data Preprocessing for NLP
- Classification Metrics

---

## 👨‍💻 Author

**Prithvi Raj Singh**

B.Tech (Computer Science & Engineering – Data Science)

EICT IIT Roorkee Summer Training Program

---

⭐ If you found this project useful, consider giving it a star!
