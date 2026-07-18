# 🤖 Multi-Agent Analytics Assistant

A production-inspired **Multi-Agent AI Analytics Assistant** developed during the **EICT IIT Roorkee Summer Training Program**. The system simulates a real-world analytics team by using a **Supervisor Agent** to intelligently delegate user requests to specialized **Data Analyst** and **Data Scientist** agents.

The project leverages **CrewAI**, **Ollama**, **Streamlit**, and the **Model Context Protocol (MCP)** to automate common analytics tasks such as dataset profiling, KPI recommendation, SQL guidance, and machine learning approach suggestions.

---

## 📌 Project Overview

The assistant is designed to automate the initial phase of a data analytics workflow. Instead of relying on a single AI model, the system uses multiple collaborating agents, each responsible for a specific domain.

The Supervisor Agent analyzes the user's query and dynamically delegates it to the appropriate specialist agent, closely mimicking the workflow of a professional analytics team.

---

## 🎯 Objectives

- Build a collaborative Multi-Agent AI system using CrewAI.
- Implement hierarchical task delegation through a Supervisor Agent.
- Automate dataset profiling and KPI recommendation.
- Provide SQL and dashboard-related assistance.
- Suggest suitable Machine Learning approaches for business problems.
- Integrate deterministic function tools and an MCP Server for reliable analytics.

---

## 🛠️ Technologies Used

| Category | Technologies |
|----------|--------------|
| Language | Python 3.11 |
| Agent Framework | CrewAI, crewai-tools |
| Local LLM | Ollama (Llama 3.2 - 3B) |
| Frontend | Streamlit |
| Backend (v2) | FastAPI, Uvicorn |
| Protocol | Model Context Protocol (MCP), FastMCP |
| Data Processing | Pandas, Pydantic |
| Database | SQLite |
| Testing | pytest |
| Deployment | Docker, Docker Compose |
| Configuration | YAML, python-dotenv |

---

## 📂 Project Structure

```text
Multi-Agent-Analytics-Assistant/
│
├── app.py
├── backend/
├── mcp_server.py
├── tools.py
├── config/
│   ├── agents.yaml
│   └── tasks.yaml
├── sample_data/
│   └── events_sample.csv
├── requirements.txt
├── docker-compose.yml
├── .env.example
└── README.md
```

---

## ⚙️ System Architecture

The project consists of three AI agents working collaboratively.

- **Supervisor Agent**
  - Receives the user's request.
  - Determines which specialist agent should handle the task.
  - Coordinates the complete workflow.

- **Data Analyst Agent**
  - Profiles datasets.
  - Suggests KPIs.
  - Answers SQL and dashboard-related questions.
  - Uses MCP tools for deterministic analytics.

- **Data Scientist Agent**
  - Recommends suitable ML algorithms.
  - Explains model selection.
  - Assists with predictive analytics problems.

The agents communicate using CrewAI's **Hierarchical Process**, while analytical tools are exposed through a standalone **Model Context Protocol (MCP) Server**.

---

## 🚀 Features

- Multi-Agent AI Architecture
- Hierarchical Task Delegation
- Supervisor-Based Routing
- Data Profiling
- KPI Recommendation
- SQL Query Assistance
- Dashboard Guidance
- Machine Learning Recommendation
- Local LLM using Ollama
- Function Tools using CrewAI
- MCP Server Integration
- YAML-based Agent Configuration
- Streamlit User Interface
- Dockerized Deployment

---

## 📊 Dataset

The project uses a synthetic dataset:

**events_sample.csv**

Example fields:

- event_id
- customer_id
- event_type
- revenue
- event_date

The dataset is intentionally lightweight, as the primary objective is demonstrating the multi-agent architecture rather than large-scale data processing.

---

## 🔄 Workflow

1. User submits a query through the Streamlit interface.
2. Supervisor Agent analyzes the request.
3. CrewAI delegates the task to:
   - Data Analyst Agent
   - Data Scientist Agent
   - or both.
4. Specialist agents invoke MCP tools whenever required.
5. MCP Server performs deterministic computations.
6. Ollama provides LLM reasoning.
7. The Supervisor compiles the final response and returns it to the user.

---

## 📈 Results

The system successfully demonstrated:

- Intelligent agent delegation without hard-coded routing logic.
- Automatic dataset profiling using Pandas.
- KPI recommendation based on actual dataset columns.
- SQL and dashboard assistance.
- Machine Learning problem classification.
- Reliable function tool execution through the MCP Server.
- Production-oriented backend using FastAPI and FastMCP.
- Persistent chat history using SQLite.
- Docker-based deployment.
- Automated testing using pytest.

---

## 📸 Screenshots

Add screenshots of:

- Streamlit Interface
- Supervisor Agent Workflow
- Data Analyst Response
- Data Scientist Response
- MCP Server Execution
- Dataset Profiling
- KPI Recommendation
- Docker Containers Running

---


## 📚 Learning Outcomes

Through this project, I gained practical experience in:

- Multi-Agent AI Systems
- CrewAI Framework
- Hierarchical Agent Collaboration
- Local LLM Deployment using Ollama
- Model Context Protocol (MCP)
- FastAPI Development
- Streamlit Application Development
- Function Calling with AI Agents
- Pydantic Validation
- SQLite Integration
- Docker Containerization
- Production-Oriented AI System Design

---

## 👨‍💻 Author

**Prithvi Raj Singh**

B.Tech (Data Science)

EICT IIT Roorkee Summer Training Program
